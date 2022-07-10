database = {
    "food_description": 
        {
            "table_keys": [ "NDB_No", "FdGrp_Cd", "Long_Desc", "Shrt_Desc", "ComName", "ManufacName", "Survey", "Ref_desc", "Refuse", "SciName", "N_Factor", "Pro_Factor", "Fat_Factor", "CHO_Factor" ],
            "source_file": "FOOD_DES.txt"
        },
    "food_group_description": 
        {
            "table_keys": [ "FdGrp_Cd", "FdGrp_Desc" ],
            "source_file": "FD_GROUP.txt"
        },
    "langual_factor": 
        {
            "table_keys": [ "NDB_No", "Factor_Code" ], 
            "source_file": "LANGUAL.txt" },
    "langual_factors_description": 
        {
            "table_keys": [ "Factor_Code", "Description" ], 
            "source_file": "LANGDESC.txt" },
    "nutrient_data": 
        {
            "table_keys": [ "NDB_No", "Nutr_No", "Nutr_Val", "Num_Data_Pts", "Std_Error", "Src_Cd", "Deriv_Cd", "Ref_NDB_No", "Add_Nutr_Mark", "Num_Studies", "Min", "Max", "DF", "Low_EB", "Up_EB", "Stat_cmt", "AddMod_Date", "CC" ], 
            "source_file": "NUT_DATA.txt" 
        },
    "nutrient_definition": 
        {
            "table_keys": [ "Nutr_No", "Units", "Tagname", "NutrDesc", "Num_DecSR_Order" ], 
            "source_file": "NUTR_DEF.txt" 
        },
    "source_code": 
        {
            "table_keys": [ "Src_Cd", "SrcCd_Desc" ], 
            "source_file": "SRC_CD.txt" 
        },
    "data_derivation_code_description": 
        {
            "table_keys": [ "Deriv_Cd", "Deriv_Desc" ], 
            "source_file": "DERIV_CD.txt" 
        },
    "weight": 
        {
            "table_keys": [ "NDB_No", "Seq", "Amount", "Msre_Desc", "Gm_Wgt", "Num_Data_Pts", "Std_Dev" ], 
            "source_file": "WEIGHT.txt" 
        },
    "footnote": 
        {
            "table_keys": [ "NDB_No", "Footnt_No", "Footnt_Typ", "Nutr_No", "Footnt_Txt" ], 
            "source_file": "FOOTNOTE.txt" 
        },
    "sources_of_data_link": 
        {
            "table_keys": [ "NDB_No", "Nutr_No", "DataSrc_ID" ], 
            "source_file": "DATASRCLN.txt" 
        },
    "sources_of_data": 
        {
            "table_keys": [ "DataSrc_ID", "Authors", "Title", "Year", "Journal", "Vol_City", "Issue_State", "Start_Page", "End_Page" ], 
            "source_file": "DATA_SRC.txt" 
        }
}

def testDatabase():
    for table_name in database:
        print ("=".format([0]*30))
        print (table_name)
        print (database[table_name]['table_keys'])
        print (database[table_name]['source_file'])

def readFile(tableName):
    tableData = []
    fileName = database[tableName]["source_file"]
    tableKeys = database[tableName]["table_keys"]
    #import csv
    with open(fileName, encoding="utf-8", errors='ignore') as f:
        #usdasSrxReader = csv.reader(csvFile, delimiter='^', quotechar='~') # ~^~
        contents = f.readlines()
        print(len(contents))
        for row in contents:
            # print(row)
            rsrow = row.rstrip("\n")
            rowData = rsrow.split("^")
            #print(tableKeys)
            #print(rowData)
            tableDataRow = {}
            for count, value in enumerate(rowData):
                print('"' + tableKeys[count] + '": ', '"' + value.strip("~") + '"')
                tableDataRow[tableKeys[count]] = value.strip("~")
            tableData.append(tableDataRow)

    print(["table " + tableName + " has ", len(tableData), " rows."])

if __name__ == "__main__":
    testDatabase()
    readFile("footnote")