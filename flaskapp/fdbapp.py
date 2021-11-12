#sqlite3 .schema:
#CREATE TABLE FoodDescriptionFileFormat (NDB_No TEXT, FdGrp_Cd TEXT, Long_Desc TEXT, Shrt_Desc TEXT, ComName TEXT, ManufacName TEXT, Survey TEXT, Ref_desc TEXT, Refuse TEXT, SciName TEXT, N_Factor TEXT, Pro_Factor TEXT, Fat_Factor TEXT, CHO_Factor TEXT);
#CREATE TABLE FoodGroupDescriptionFileFormat (FdGrp_Cd TEXT, FdGrp_Desc TEXT);
#CREATE TABLE LangualFactorFileFormat (NDB_No TEXT, Factor_Code TEXT);
#CREATE TABLE LangualFactorsDescriptionFileFormat (Factor_Code TEXT, Description TEXT);
#CREATE TABLE NutrientDataFileFormat (NDB_No TEXT, Nutr_No TEXT, Nutr_Val TEXT, Num_Data_Pts TEXT, Std_Error TEXT, Src_Cd TEXT, Deriv_Cd TEXT, Ref_NDB_No TEXT, Add_Nutr_Mark TEXT, Num_Studies TEXT, Min TEXT, Max TEXT, DF TEXT, Low_EB TEXT, Up_EB TEXT, Stat_cmt TEXT, AddMod_Date TEXT, CC TEXT);
#CREATE TABLE SourceCodeFileFormat (Src_Cd TEXT, SrcCd_Desc TEXT);
#CREATE TABLE DataDerivationCodeFileFormat (Deriv_Cd TEXT, Deriv_Desc TEXT);
#CREATE TABLE FootnoteFileFormat (NDB_No TEXT, Footnt_No TEXT, Footnt_Typ TEXT, Nutr_No TEXT, Footnt_Txt TEXT);
#CREATE TABLE SourcesOfDataLinkFileFormat (NDB_No TEXT, Nutr_No TEXT, DataSrc_ID TEXT);
#CREATE TABLE SourcesOfDataFileFormat (DataSrc_ID TEXT, Authors TEXT, Title TEXT, Year TEXT, Journal TEXT, Vol_City TEXT, Issue_State TEXT, Start_Page TEXT, End_Page TEXT);
#CREATE TABLE NutrientDefinitionFileFormat (Nutr_No TEXT, Units TEXT, Tagname TEXT, NutrDesc TEXT, Num_Desc TEXT, SR_Order TEXT);
#CREATE TABLE WeightFileFormat (NDB_No TEXT, Seq TEXT, Amount TEXT, Msre_Desc TEXT, Gm_Wgt TEXT, Num_Data_Pts TEXT, Std_Dev TEXT);


class fdbapp:
    def __init__(self):
        self.dataSource = {}

        self.dataSource["FoodDescriptionFileFormat"] = {}
        self.dataSource["FoodDescriptionFileFormat"]["Has_Problematic_Content"] = False
        self.dataSource["FoodDescriptionFileFormat"]["File_Name"] = "/sr27asc/FOOD_DES.txt"
        self.dataSource["FoodDescriptionFileFormat"]["Field_Name"] = ["NDB_No","FdGrp_Cd","Long_Desc","Shrt_Desc","ComName","ManufacName","Survey","Ref_desc","Refuse","SciName","N_Factor","Pro_Factor","Fat_Factor","CHO_Factor"]

        self.dataSource["FoodGroupDescriptionFileFormat"] = {}
        self.dataSource["FoodGroupDescriptionFileFormat"]["Has_Problematic_Content"] = False
        self.dataSource["FoodGroupDescriptionFileFormat"]["File_Name"] = "/sr27asc/FD_GROUP.txt"
        self.dataSource["FoodGroupDescriptionFileFormat"]["Field_Name"] = ['FdGrp_Cd','FdGrp_Desc']

        self.dataSource["LangualFactorFileFormat"] = {}
        self.dataSource["LangualFactorFileFormat"]["Has_Problematic_Content"] = False
        self.dataSource["LangualFactorFileFormat"]["File_Name"] = "/sr27asc/LANGUAL.txt"
        self.dataSource["LangualFactorFileFormat"]["Field_Name"] = ['NDB_No','Factor_Code']

        self.dataSource["LangualFactorsDescriptionFileFormat"] = {}
        self.dataSource["LangualFactorsDescriptionFileFormat"]["Has_Problematic_Content"] = False
        self.dataSource["LangualFactorsDescriptionFileFormat"]["File_Name"] = "/sr27asc/LANGDESC.txt"
        self.dataSource["LangualFactorsDescriptionFileFormat"]["Field_Name"] = ['Factor_Code','Description']

        self.dataSource["NutrientDataFileFormat"] = {}
        self.dataSource["NutrientDataFileFormat"]["Has_Problematic_Content"] = False
        self.dataSource["NutrientDataFileFormat"]["File_Name"] = "/sr27asc/NUT_DATA.txt"
        self.dataSource["NutrientDataFileFormat"]["Field_Name"] = ['NDB_No','Nutr_No','Nutr_Val','Num_Data_Pts','Std_Error','Src_Cd','Deriv_Cd','Ref_NDB_No','Add_Nutr_Mark','Num_Studies','Min','Max','DF','Low_EB','Up_EB','Stat_cmt','AddMod_Date','CC']

        # the following file table has problematic characters
        self.dataSource["NutrientDefinitionFileFormat"] = {}
        self.dataSource["NutrientDefinitionFileFormat"]["Has_Problematic_Content"] = True
        self.dataSource["NutrientDefinitionFileFormat"]["File_Name"] = "/sr27asc/NUTR_DEF.txt"
        self.dataSource["NutrientDefinitionFileFormat"]["Field_Name"] = ['Nutr_No','Units','Tagname','NutrDesc','Num_Desc','SR_Order']

        self.dataSource["SourceCodeFileFormat"] = {}
        self.dataSource["SourceCodeFileFormat"]["Has_Problematic_Content"] = False
        self.dataSource["SourceCodeFileFormat"]["File_Name"] = "/sr27asc/SRC_CD.txt"
        self.dataSource["SourceCodeFileFormat"]["Field_Name"] = ['Src_Cd','SrcCd_Desc']

        self.dataSource["DataDerivationCodeFileFormat"] = {}
        self.dataSource["DataDerivationCodeFileFormat"]["Has_Problematic_Content"] = False
        self.dataSource["DataDerivationCodeFileFormat"]["File_Name"] = "/sr27asc/DERIV_CD.txt"
        self.dataSource["DataDerivationCodeFileFormat"]["Field_Name"] = ['Deriv_Cd','Deriv_Desc']

        # the following file table has problematic characters
        self.dataSource["WeightFileFormat"] = {}
        self.dataSource["WeightFileFormat"]["Has_Problematic_Content"] = True
        self.dataSource["WeightFileFormat"]["File_Name"] = "/sr27asc/WEIGHT.txt"
        self.dataSource["WeightFileFormat"]["Field_Name"] = ['NDB_No','Seq','Amount','Msre_Desc','Gm_Wgt','Num_Data_Pts','Std_Dev']

        self.dataSource["FootnoteFileFormat"] = {}
        self.dataSource["FootnoteFileFormat"]["Has_Problematic_Content"] = False
        self.dataSource["FootnoteFileFormat"]["File_Name"] = "/sr27asc/FOOTNOTE.txt"
        self.dataSource["FootnoteFileFormat"]["Field_Name"] = ['NDB_No','Footnt_No','Footnt_Typ','Nutr_No','Footnt_Txt']

        self.dataSource["SourcesOfDataLinkFileFormat"] = {}
        self.dataSource["SourcesOfDataLinkFileFormat"]["Has_Problematic_Content"] = False
        self.dataSource["SourcesOfDataLinkFileFormat"]["File_Name"] = "/sr27asc/DATSRCLN.txt"
        self.dataSource["SourcesOfDataLinkFileFormat"]["Field_Name"] = ['NDB_No','Nutr_No','DataSrc_ID']

        self.dataSource["SourcesOfDataFileFormat"] = {}
        self.dataSource["SourcesOfDataFileFormat"]["Has_Problematic_Content"] = False
        self.dataSource["SourcesOfDataFileFormat"]["File_Name"] = "/sr27asc/DATA_SRC.txt"
        self.dataSource["SourcesOfDataFileFormat"]["Field_Name"] = ['DataSrc_ID','Authors','Title','Year','Journal','Vol_City','Issue_State','Start_Page','End_Page']

        import os, csv, sqlite3, json, codecs
        scriptPath = os.path.abspath(__file__)
        self.scriptDirectory = os.path.dirname(scriptPath)


    def dbConnect(self, rowFactory=None):
        import sqlite3
        import os, sqlite3
        scriptPath = os.path.abspath(__file__)
        scriptDirectory = os.path.dirname(scriptPath)
        localDb = scriptDirectory + "/sr27.db"
        self.conn = sqlite3.connect(localDb)
        if rowFactory:
            self.conn.row_factory = sqlite3.Row


    def insertOneSql(self, sqlQuery):
        self.dbConnect()
        c = self.conn.cursor()
        c.execute(sqlQuery)
        self.conn.commit()
        self.conn.close()


    def insertManySql(self, sqlQuery, data):
        self.dbConnect()
        c = self.conn.cursor()
        c.executemany(sqlQuery, data)
        self.conn.commit()
        self.conn.close()


    def createDbTable(self, tableName):
        columnsFormatted = []
        numberOfColumns = 0
         #filedNames = self.dataSource[tableName]["Field_Name"]
        for c in self.dataSource[tableName]["Field_Name"]:
            columnsFormatted.append("{} TEXT".format(c))
            numberOfColumns = numberOfColumns + 1
        self.dbConnect()
        c = self.conn.cursor()
        sqlQuery1 = "DROP TABLE IF EXISTS {}".format(tableName)
        print(sqlQuery1)
        c.execute(sqlQuery1)
        sqlQuery2 = "CREATE TABLE {} ({})".format(tableName, str.join(", ", columnsFormatted))
        c.execute(sqlQuery2)
        print(sqlQuery2)
        tableDataSrcPath = self.scriptDirectory + self.dataSource[tableName]['File_Name']
        import csv
        csvReader = csv.reader(open(tableDataSrcPath, newline='\n', encoding='utf-8', errors='ignore'), delimiter='^', quotechar='~')
        valuesToInsertIntoTable = []
        for row in csvReader:
            valuesToInsertIntoTable.append(row)
        # create insert queries
        questionMarks = "("
        col = 0
        while col < numberOfColumns:
            questionMarks = questionMarks + "?, "
            col = col + 1
        questionMarks = questionMarks[:-2] + ")" # get rid of last two characters
        # sqlInsert = "INSERT INTO " + tableName + " VALUES " + str.join(", ", tableColumns) +
        sqlInsert = "INSERT INTO " + tableName + " VALUES " + questionMarks
        print(sqlInsert)
        #insertMany(tf, sqlInsert, valuesToInsertIntoTable)
        c.executemany(sqlInsert, valuesToInsertIntoTable)
        self.conn.commit()
        self.conn.close()


    def runQuery(self, sqlQuery, rowFactory=None):
        if rowFactory:
            self.dbConnect(rowFactory=True)
        else:
            self.dbConnect()
        c = self.conn.cursor()
        c.execute(sqlQuery)
        results = c.fetchall()
        self.conn.close()
        return results


    def getDbTableNames(self):
        names = []
        for tn in self.dataSource:
            names.append(tn)
        return(names)


    def getSelectQueryAsObject(self, sqlQuery):
        results = self.runQuery(sqlQuery, rowFactory=True)
        dataFormatted = []
        for i, r in enumerate(results):
            row = {}
            for k in r.keys():
                row[k] = r[k]
            dataFormatted.append(row)
        return dataFormatted


if __name__ == "__main__":
    # execute only if run as a script
    fdbapp = fdbapp()
    running = True
    tableNames = fdbapp.getDbTableNames()
    while running:
        todo = str(input("What would you like to do? Your choices are: rebuild database (r), print schema (p), search database (s), test queries (t), quit (q)"))

        if todo.lower() == 'r':
            print("You want to rebuild the database. Okay, doing that now...")
            print("Table Names To Build: ")
            print(str.join(", ", tableNames))
            for tn in tableNames:
                fdbapp.createDbTable(tn)

        elif todo.lower() == 'p':
            print("Printing schema:")
            for tn in tableNames:
                print("    table: {}".format(tn))
                for col in fdbapp.dataSource[tn]["Field_Name"]:
                    print("        column: {}".format(col))

        elif todo.lower() == 't':
            print("Running Tests...")
            # example of querying all row lengths of each table name
            for tn in tableNames:
                sqlQuery = "select count(*) from {}".format(tn)
                results = fdbapp.runQuery(sqlQuery)
                for r in results:
                    print(r)
            # example of output with key value
            sqlQuery = "SELECT * FROM FoodDescriptionFileFormat WHERE Long_Desc LIKE '%hiskey%';"
            print(sqlQuery)
            results = fdbapp.getSelectQueryAsObject(sqlQuery)
            for r in results:
                print(r)

        elif todo.lower() == 's':
            print("running a search")
            sqlQuery = str(input("please construct a sql select query in a single line:"))
            print("you entered the following query:")
            print(sqlQuery)
            results = fdbapp.getSelectQueryAsObject(sqlQuery)
            for r in results:
                print(r)

        elif todo.lower() == 'q':
            print("You want to quit. Okay, thank you for using this program. Have a nice day.")
            running = False

        else:
            print("sorry, that is not a valid choice.")
