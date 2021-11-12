"""
import.py
target: python3

Table 3. – Number of Records in Principal and Support Files
File name                             Table name      Number of records
=======================================================================
Principal files
  Food Description (p. 29)            FOOD_DES        8,618
  Nutrient Data (p. 32)               NUT_DATA        654,572
  Weight (p. 36)                      WEIGHT          15,228
  Footnote (p. 36)                    FOOTNOTE        531
Support files
  Food Group Description (p. 31)      FD_GROUP        25
  LanguaL Factor (p. 31)              LANGUAL         38,725
  LanguaL Factors Description (p. 31) LANGDESC        774
  Nutrient Definition (p. 34)         NUTR_DEF        150
  Source Code (p. 34)                 SRC_CD          10
  Data Derivation Code Description (p. 35) DERIV_CD   55
  Sources of Data (p. 37)             DATA_SRC        655
  Sources of Data Link (p. 37)        DATSRCLN        230,663
"""

import os, csv, sqlite3, json, codecs

scriptPath = os.path.abspath(__file__)
scriptDirectory = os.path.dirname(scriptPath)
print("script directory: " + scriptDirectory)
running = True


def listDirectory(localDirectory):
    return os.listdir(scriptDirectory + "/" + localDirectory)


def connectToDb():
    localDb = scriptDirectory + "/sr27.db"
    conn = sqlite3.connect(localDb)
    return conn


#for dName in ['sr27asc','sr27_upd052915']:
for dName in ['sr27asc']:
    print("Hello. This is the USDA SR27 Database viewer written in Python3.")
    print("In the directory {}, there are the following files:".format(dName))
    for fileName in listDirectory(dName):
        print("    + {}".format(scriptDirectory + "/" + dName + "/" + fileName))


TableFormatting = {}

TableFormatting["FoodDescriptionFileFormat"] = {}
TableFormatting["FoodDescriptionFileFormat"]["Has_Problematic_Content"] = False
TableFormatting["FoodDescriptionFileFormat"]["File_Name"] = "/sr27asc/FOOD_DES.txt"
TableFormatting["FoodDescriptionFileFormat"]["Field_Name"] = ["NDB_No","FdGrp_Cd","Long_Desc","Shrt_Desc","ComName","ManufacName","Survey","Ref_desc","Refuse","SciName","N_Factor","Pro_Factor","Fat_Factor","CHO_Factor"]

TableFormatting["FoodGroupDescriptionFileFormat"] = {}
TableFormatting["FoodGroupDescriptionFileFormat"]["Has_Problematic_Content"] = False
TableFormatting["FoodGroupDescriptionFileFormat"]["File_Name"] = "/sr27asc/FD_GROUP.txt"
TableFormatting["FoodGroupDescriptionFileFormat"]["Field_Name"] = ['FdGrp_Cd','FdGrp_Desc']

TableFormatting["LangualFactorFileFormat"] = {}
TableFormatting["LangualFactorFileFormat"]["Has_Problematic_Content"] = False
TableFormatting["LangualFactorFileFormat"]["File_Name"] = "/sr27asc/LANGUAL.txt"
TableFormatting["LangualFactorFileFormat"]["Field_Name"] = ['NDB_No','Factor_Code']

TableFormatting["LangualFactorsDescriptionFileFormat"] = {}
TableFormatting["LangualFactorsDescriptionFileFormat"]["Has_Problematic_Content"] = False
TableFormatting["LangualFactorsDescriptionFileFormat"]["File_Name"] = "/sr27asc/LANGDESC.txt"
TableFormatting["LangualFactorsDescriptionFileFormat"]["Field_Name"] = ['Factor_Code','Description']

TableFormatting["NutrientDataFileFormat"] = {}
TableFormatting["NutrientDataFileFormat"]["Has_Problematic_Content"] = False
TableFormatting["NutrientDataFileFormat"]["File_Name"] = "/sr27asc/NUT_DATA.txt"
TableFormatting["NutrientDataFileFormat"]["Field_Name"] = ['NDB_No','Nutr_No','Nutr_Val','Num_Data_Pts','Std_Error','Src_Cd','Deriv_Cd','Ref_NDB_No','Add_Nutr_Mark','Num_Studies','Min','Max','DF','Low_EB','Up_EB','Stat_cmt','AddMod_Date','CC']

# the following file table has problematic characters
TableFormatting["NutrientDefinitionFileFormat"] = {}
TableFormatting["NutrientDefinitionFileFormat"]["Has_Problematic_Content"] = True
TableFormatting["NutrientDefinitionFileFormat"]["File_Name"] = "/sr27asc/NUTR_DEF.txt"
TableFormatting["NutrientDefinitionFileFormat"]["Field_Name"] = ['Nutr_No','Units','Tagname','NutrDesc','Num_Desc','SR_Order']

TableFormatting["SourceCodeFileFormat"] = {}
TableFormatting["SourceCodeFileFormat"]["Has_Problematic_Content"] = False
TableFormatting["SourceCodeFileFormat"]["File_Name"] = "/sr27asc/SRC_CD.txt"
TableFormatting["SourceCodeFileFormat"]["Field_Name"] = ['Src_Cd','SrcCd_Desc']

TableFormatting["DataDerivationCodeFileFormat"] = {}
TableFormatting["DataDerivationCodeFileFormat"]["Has_Problematic_Content"] = False
TableFormatting["DataDerivationCodeFileFormat"]["File_Name"] = "/sr27asc/DERIV_CD.txt"
TableFormatting["DataDerivationCodeFileFormat"]["Field_Name"] = ['Deriv_Cd','Deriv_Desc']

# the following file table has problematic characters
TableFormatting["WeightFileFormat"] = {}
TableFormatting["WeightFileFormat"]["Has_Problematic_Content"] = True
TableFormatting["WeightFileFormat"]["File_Name"] = "/sr27asc/WEIGHT.txt"
TableFormatting["WeightFileFormat"]["Field_Name"] = ['NDB_No','Seq','Amount','Msre_Desc','Gm_Wgt','Num_Data_Pts','Std_Dev']

TableFormatting["FootnoteFileFormat"] = {}
TableFormatting["FootnoteFileFormat"]["Has_Problematic_Content"] = False
TableFormatting["FootnoteFileFormat"]["File_Name"] = "/sr27asc/FOOTNOTE.txt"
TableFormatting["FootnoteFileFormat"]["Field_Name"] = ['NDB_No','Footnt_No','Footnt_Typ','Nutr_No','Footnt_Txt']

TableFormatting["SourcesOfDataLinkFileFormat"] = {}
TableFormatting["SourcesOfDataLinkFileFormat"]["Has_Problematic_Content"] = False
TableFormatting["SourcesOfDataLinkFileFormat"]["File_Name"] = "/sr27asc/DATSRCLN.txt"
TableFormatting["SourcesOfDataLinkFileFormat"]["Field_Name"] = ['NDB_No','Nutr_No','DataSrc_ID']

TableFormatting["SourcesOfDataFileFormat"] = {}
TableFormatting["SourcesOfDataFileFormat"]["Has_Problematic_Content"] = False
TableFormatting["SourcesOfDataFileFormat"]["File_Name"] = "/sr27asc/DATA_SRC.txt"
TableFormatting["SourcesOfDataFileFormat"]["Field_Name"] = ['DataSrc_ID','Authors','Title','Year','Journal','Vol_City','Issue_State','Start_Page','End_Page']

#TableFormatting["AbbreviatedFileFormat"] = {}
#TableFormatting["AbbreviatedFileFormat"]["Field_Name"] = ['NDB_No','Shrt_Desc','Water','Energ_Kcal','Protein','Lipid_Tot','Ash','Carbohdrt','Fiber_TD','Sugar_Tot','Calcium','Iron','Magnesium','Phosphorus','Potassium','Sodium','Zinc','Copper','Manganese','Selenium','Vit_C','Thiamin','Riboflavin','Niacin','Panto_acid','Vit_B6','Folate_Tot','Folic_acid','Food_Folate','Folate_DFE','Choline_Tot','Vit_B12','Vit_A_IU','Vit_A_RAE','Retinol','Alpha_Carot','Beta_Carot','Beta_Crypt','Lycopene','Lut_Plus_Zea','Vit_E','Vit_D_mcg','Vit_D_IU','Vit_K','FA_Sat','FA_Mono','FA_Poly','Cholestrl','GmWt_1','GmWt_Desc1','GmWt_2','GmWt_Desc','Refuse_Pct']

# Updated Files are as follows

#TableFormatting["FoodsDeletedFormat"] = {}
#TableFormatting["FoodsDeletedFormat"]["File_Name"] = "/sr27_upd052915/.txt"
#TableFormatting["FoodsDeletedFormat"]["Field_Name"] = ['NDB_No','Shrt_Desc']

#TableFormatting["NutrientsDeletedFormat"] = {}
#TableFormatting["NutrientsDeletedFormat"]["File_Name"] = "/sr27_upd052915/DEL_NUTR.txt"
#TableFormatting["NutrientsDeletedFormat"]["Field_Name"] = ['NDB_No','Nutr_No']

#TableFormatting["FootnotesDeletedFormat"] = {}
#TableFormatting["FootnotesDeletedFormat"]["File_Name"] = "/sr27_upd052915/.txt"
#TableFormatting["FootnotesDeletedFormat"]["Field_Name"] = ['NDB_No','Footnt_No','Footnt_Typ']

def createSqlTable(tableName, columnsFormatted):
    conn = connectToDb()
    c = conn.cursor()
    sqlQuery = "CREATE TABLE IF NOT EXISTS {} ({})".format(tableName, columnsFormatted)
    c.execute(sqlQuery)
    conn.commit()
    conn.close()

def insertMany(tableName, sqlInsertStatement, data):
    conn = connectToDb()
    c = conn.cursor()
    c.executemany(sqlInsertStatement, data)
    conn.commit()
    conn.close()

while running:
    todo = str(input("What would you like to do? Your choices are: create database (c), print files (p), quit (q)"))

    if todo.lower() == 'c':
        print("You want to create the database. Okay, doing that now...")
        for tf in TableFormatting.keys():
            print("Table: {}".format(tf))
            tableColumns = []
            tableColumnsFormatted = []
            tableData = ""
            tableDataSrcPath = scriptDirectory + TableFormatting[tf]['File_Name']
            numberOfColumns = 0
            for fn in TableFormatting[tf]['Field_Name']:
                print("    column: {}".format(fn))
                tableColumns.append(fn)
                tableColumnsFormatted.append("{} TEXT".format(fn))
                numberOfColumns = numberOfColumns + 1
            # csvReader = csv.reader(open(tableDataSrcPath, newline='\n', encoding='utf-8'), delimiter='^', quotechar='~')
            csvReader = csv.reader(open(tableDataSrcPath, newline='\n', encoding='utf-8', errors='ignore'), delimiter='^', quotechar='~')
            valuesToInsertIntoTable = []
            for row in csvReader:
                # print(row)
                valuesToInsertIntoTable.append(row)
            #with codecs.open(tableDataSrcPath, 'r', encoding='utf-8', errors='ignore') as mycsvf:
                #tableData = mycsvf.read()
                #csvReader = csv.reader(tableData, delimiter='^', quotechar='~')

                #rowLength = []
                #for row in csvReader:
                    #rowLength.append(row)
                    #print(', '.join(row))
                #print(len(rowLength))

            print("{}\n".format('='*35))
            print("Attempting to create table now.")
            createSqlTable(tf, str.join(", ", tableColumnsFormatted))
            # create insert queries
            questionMarks = "("
            c = 0
            while c < numberOfColumns:
                questionMarks = questionMarks + "?, "
                c = c + 1
            questionMarks = questionMarks[:-2] + ")" # get rid of last two characters
            # sqlInsert = "INSERT INTO " + tableName + " VALUES " + str.join(", ", tableColumns) +
            sqlInsert = "INSERT INTO " + tf + " VALUES " + questionMarks
            print(sqlInsert)
            insertMany(tf, sqlInsert, valuesToInsertIntoTable)

    elif todo.lower() == 'p':
        print("You want to print files. Okay, one moment please...")

    elif todo.lower() == 'q':
        print("You want to quit. Okay, thank you for using this program. Have a nice day.")
        running = False
