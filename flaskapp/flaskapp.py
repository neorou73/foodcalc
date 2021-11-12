from flask import Flask, session, redirect, url_for, escape, request, render_template
app = Flask(__name__)

# create the data for searching
from fdbapp import fdbapp
fdbapp = fdbapp()

import json

#sqlQuery = "select NDB_No, Long_Desc from FoodDescriptionFileFormat;"
#foodsLongDescription = fdbapp.runQuery(sqlQuery, rowFactory=True)

@app.route('/')
def index():
    # return render_template('index.html', categories=categories, articles=articles, session=session)
    sqlQuery = "select NDB_No, Long_Desc from FoodDescriptionFileFormat;"
    foodsLongDescription = fdbapp.runQuery(sqlQuery, rowFactory=True)
    return render_template('index.html', itemsList=foodsLongDescription)


@app.route('/list/<firstLetter>')
def listByFirstLetter(firstLetter):
    # return render_template('index.html', categories=categories, articles=articles, session=session)
    sqlQuery = "select NDB_No, Long_Desc from FoodDescriptionFileFormat where Long_Desc like '{}%';".format(firstLetter)
    foodsLongDescription = fdbapp.runQuery(sqlQuery, rowFactory=True)
    return render_template('index.html', itemsList=foodsLongDescription)


@app.route('/search', methods=['POST'])
# @app.route('/search/<searchString>')
def searchByString():
# def searchByString(searchString):
    searchString = request.form['searchString']
    # return render_template('index.html', categories=categories, articles=articles, session=session)
    sqlQuery = "select NDB_No, Long_Desc from FoodDescriptionFileFormat where Long_Desc like '{}%' or Long_Desc like '%{}' or Long_Desc like '%{}%';".format(searchString, searchString, searchString)
    foodsLongDescription = fdbapp.runQuery(sqlQuery, rowFactory=True)
    return render_template('index.html', itemsList=foodsLongDescription)


@app.route('/details/<ndbNo>')
def details(ndbNo):

    # CREATE TABLE NutrientDataFileFormat (NDB_No TEXT, Nutr_No TEXT, Nutr_Val TEXT, Num_Data_Pts TEXT, Std_Error TEXT,
        # Src_Cd TEXT, Deriv_Cd TEXT, Ref_NDB_No TEXT,
        # Add_Nutr_Mark TEXT, Num_Studies TEXT, Min TEXT, Max TEXT, DF TEXT, Low_EB TEXT, Up_EB TEXT,
        # Stat_cmt TEXT, AddMod_Date TEXT, CC TEXT);
    # CREATE TABLE NutrientDefinitionFileFormat (Nutr_No TEXT, Units TEXT, Tagname TEXT, NutrDesc TEXT, Num_Desc TEXT, SR_Order TEXT);
    # CREATE TABLE WeightFileFormat (NDB_No TEXT, Seq TEXT, Amount TEXT, Msre_Desc TEXT, Gm_Wgt TEXT, Num_Data_Pts TEXT, Std_Dev TEXT);
    queryString2 = """select
  (select Tagname from NutrientDefinitionFileFormat where NutrientDefinitionFileFormat.Nutr_No = NutrientDataFileFormat.Nutr_No) as Tagname,
  (select NutrDesc from NutrientDefinitionFileFormat where NutrientDefinitionFileFormat.Nutr_No = NutrientDataFileFormat.Nutr_No) as Description,
  (select Units from NutrientDefinitionFileFormat where NutrientDefinitionFileFormat.Nutr_No = NutrientDataFileFormat.Nutr_No) as Nutr_Units,
  Nutr_No, Nutr_Val, Std_Error
  from NutrientDataFileFormat where NDB_No = '{}';"""

    queryString1 = """select NDB_No, FdGrp_Cd, Long_Desc, Shrt_Desc, ComName, ManufacName, Survey, Ref_desc, Refuse, SciName, N_Factor, Pro_Factor, Fat_Factor, CHO_Factor,
  (select FdGrp_Desc from FoodGroupDescriptionFileFormat where FoodGroupDescriptionFileFormat.FdGrp_Cd = FoodDescriptionFileFormat.FdGrp_Cd) as FdGrp_Desc,
  (select Description from LangualFactorsDescriptionFileFormat where LangualFactorsDescriptionFileFormat.Factor_Code =
    (select Factor_Code from LangualFactorFileFormat where LangualFactorFileFormat.NDB_No = FoodDescriptionFileFormat.NDB_No)) as Langual_Factors_Description,
  (select Seq from WeightFileFormat where WeightFileFormat.NDB_No = FoodDescriptionFileFormat.NDB_No) as Weight_Seq,
  (select Amount from WeightFileFormat where WeightFileFormat.NDB_No = FoodDescriptionFileFormat.NDB_No) as Weight_Amt,
  (select Msre_Desc from WeightFileFormat where WeightFileFormat.NDB_No = FoodDescriptionFileFormat.NDB_No) as Weight_Msre_Desc,
  (select Gm_Wgt from WeightFileFormat where WeightFileFormat.NDB_No = FoodDescriptionFileFormat.NDB_No) as Weight_Gm_Wgt,
  (select Num_Data_Pts from WeightFileFormat where WeightFileFormat.NDB_No = FoodDescriptionFileFormat.NDB_No) as Weight_Num_Data_Pts,
  (select Std_Dev from WeightFileFormat where WeightFileFormat.NDB_No = FoodDescriptionFileFormat.NDB_No) as Weight_Std_Dev
  from FoodDescriptionFileFormat where NDB_No = '{}';"""

    sqlQuery = queryString1.format(str(ndbNo))
    results = fdbapp.runQuery(sqlQuery, rowFactory=True)
    # print(results[0]['Long_Desc'])
    processedResult = []
    # Shrt_Desc TEXT, ComName TEXT, ManufacName TEXT, SciName TEXT,
    processedResult.append({ "title": "Short Description", "value": results[0]['Shrt_Desc'] })
    processedResult.append({ "title": "Common Name", "value": results[0]['ComName'] })
    processedResult.append({ "title": "Manufacturer", "value": results[0]['ManufacName'] })
    processedResult.append({ "title": "Scientific Name", "value": results[0]['SciName'] })

    # NDB_No TEXT, FdGrp_Cd TEXT, Long_Desc TEXT,
    processedResult.append({ "title": "Long Description", "value": results[0]['Long_Desc'] })
    processedResult.append({ "title": "Nutrition Database #", "value": results[0]['Ndb_No'] })
    processedResult.append({ "title": "Food Group Code", "value": results[0]['FdGrp_Cd'] })

    # Food Group and Langual Factor
    processedResult.append({ "title": "Food Group Description", "value": results[0]['FdGrp_Desc'] })
    processedResult.append({ "title": "Langual Factors Description", "value": results[0]['Langual_Factors_Description'] })

    # weight data
    processedResult.append({ "title": "Weight Sequence", "value": results[0]['Weight_Seq'] })
    processedResult.append({ "title": "Weight Amount", "value": results[0]['Weight_Amt'] })
    processedResult.append({ "title": "Weight Measure Description", "value": results[0]['Weight_Msre_Desc'] })
    processedResult.append({ "title": "Gm Weight", "value": results[0]['Weight_Gm_Wgt'] })
    processedResult.append({ "title": "Weight Numeric Data Points ", "value": results[0]['Weight_Num_Data_Pts'] })
    processedResult.append({ "title": "Weight Standard Deviation", "value": results[0]['Weight_Std_Dev'] })

    # Survey TEXT, Ref_desc TEXT, Refuse TEXT, N_Factor TEXT, Pro_Factor TEXT,
    processedResult.append({ "title": "Survey", "value": results[0]['Survey'] })
    processedResult.append({ "title": "Reference Description", "value": results[0]['Ref_desc'] })
    processedResult.append({ "title": "Refuse Data", "value": results[0]['Refuse'] })
    processedResult.append({ "title": "Nitrogen Factor", "value": results[0]['N_Factor'] })
    processedResult.append({ "title": "Protein Factor", "value": results[0]['Pro_Factor'] })

    # Fat_Factor TEXT, CHO_Factor TEXT
    processedResult.append({ "title": "Fat Factor", "value": results[0]['Fat_Factor'] })
    processedResult.append({ "title": "CHO Factor", "value": results[0]['CHO_Factor'] })

    sqlQuery2 = queryString2.format(str(ndbNo))
    results2 = fdbapp.runQuery(sqlQuery2, rowFactory=True)
    # print(results[0]['Long_Desc'])
    nutritionData = []
    for r in results2:
        nutritionData.append(r)

    # print(processedResult)
    return render_template('index.html', details=processedResult, nutrdata=nutritionData)

app.secret_key = '\xee\x94\x19\x8e\x03J7e~\xb3ai\x95\xf4Y\xa2\x01\xd6\xf1-\x9dP\xe2'
