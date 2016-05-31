"""
describe the foodcalc as a class
"""

class foodcalc(object):
    def __init__(self):
        self.tables = {}  
        self.tables["food_description"] = {}
        self.tables["food_group_description"] = {}
        self.tables["langual_factor"] = {}
        self.tables["langual_factors_description"] = {}
        self.tables["nutrient_data"] = {}
        self.tables["nutrient_definition"] = {}
        self.tables["source_code"] = {}
        self.tables["data_derivation_code_description"] = {}
        self.tables["weight"] = {}
        self.tables["footnote"] = {}
        self.tables["sources_of_data_link"] = {}
        self.tables["sources_of_data"] = {}
        self.tables["abbreviated"] = {}

        # add table keys
        self.table_keys = {}
        self.table_keys["food_description"] = ["NDB_No","FdGrp_Cd","Long_Desc Shrt_Desc","ComName","ManufacName Survey","Ref_desc","Refuse SciName","N_Factor Pro_Factor","Fat_Factor","CHO_Factor"]
        
        self.table_keys["food_group_description"] = ["FdGrp_Cd","FdGrp_Desc"]
        self.table_keys["langual_factor"] = ["NDB_No","Factor_Code"]
        self.table_keys["langual_factors_description"] = ["Factor_Code","Description"]
        self.table_keys["nutrient_data"] = ["NDB_No","Nutr_No","Nutr_Val","Num_Data_Pts","Std_Error","Src_Cd","Deriv_Cd","Ref_NDB_No","Add_Nutr_Mark","Num_Studies","Min","Max","DF","Low_EB","Up_EB","Stat_cmt","AddMod_Date","CC"]
        self.table_keys["nutrient_definition"] = ["Nutr_No","Units","Tagname","NutrDesc","Num_Dec""SR_Order"]
        self.table_keys["source_code"] = ["Src_Cd","SrcCd_Desc"]
        self.table_keys["data_derivation_code_description"] = ["Deriv_Cd","Deriv_Desc"]
        self.table_keys["weight"] = ["NDB_No","Seq","Amount","Msre_Desc","Gm_Wgt","Num_Data_Pts","Std_Dev"]
        self.table_keys["footnote"] = ["NDB_No","Footnt_No","Footnt_Typ","Nutr_No","Footnt_Txt"]
        self.table_keys["sources_of_data_link"] = ["NDB_No","Nutr_No","DataSrc_ID"]
        self.table_keys["sources_of_data"] = ["DataSrc_ID","Authors","Title","Year","Journal","Vol_City","Issue_State","Start_Page","End_Page"]
        # self.table_keys["abbreviated"] = ["NDB_No.","Shrt_Desc","Water","Energ_Kcal","Protein","Lipid_Tot","Ash Carbohydrt","Fiber_TD","Sugar_Tot","Calcium","Iron","Magnesium","Phosphorus","Potassium","Sodium","Zinc","Copper","Manganese","Selenium","Vit_C","Thiamin","Riboflavin","Niacin","Panto_acid","Vit_B6","Folate_Tot","Folic_acid","Food_Folate","Folate_DFE","Choline_Tot","Vit_B12","Vit_A_IU","Vit_A_RAE","Retinol","Alpha_Carot","Beta_Carot","Beta_Crypt","Lycopene","Lut+Zea","Vit_E","Vit_D_mcg","Vit_D_IU","Vit_K","FA_Sat","FA_Mono","FA_Poly","Cholestrl","GmWt_1","GmWt_Desc1","GmWt_2","GmWt_Desc2","Refuse_Pct"]

        # define the source files
        self.source_files = {}
        self.source_files["food_description"] = "FOOD_DES.txt"
        self.source_files["food_group_description"] = "FD_GROUP.txt"
        self.source_files["langual_factor"] = "LANGUAL.txt"
        self.source_files["langual_factors_description"] = "LANGDESC.txt"
        self.source_files["nutrient_data"] = "NUT_DATA.txt"
        self.source_files["source_code"] = "SRC_CD.txt"
        self.source_files["data_derivation_code_description"] = "DERIV_CD.txt"
        self.source_files["weight"] = "WEIGHT.txt"
        self.source_files["footnote"] = "FOOTNOTE.txt"
        self.source_files["sources_of_data_link"] = "DATSRCLN.txt"
        self.source_files["sources_of_data"] = "DATA_SRC.txt"
        self.source_files["nutrient_definition"] = "NUTR_DEF.txt"
        # self.source_files["abbreviated"] = ""

        # define the sqlText
        self.sqlText = {}
        self.sqlText['create'] = {}
        self.sqlText['insert'] = {}

        # define database name
        self.dbname = 'foodcalc.sdb'

    def print_keys(self):  
        print "current object tables available: "
        for t in self.tables.keys():
            # print t, ": ", fc.tables[t]
            print '{0:>2}{2:<15}{0}{1}{0:>2}'.format('|',self.tables[t],t)
        print "\n"
        print "current object table keys per table available: "
        for tk in self.table_keys.keys():
            # print tk, ": ", fc.table_keys[tk]     
            print '{0:>2}{2:<25}{0}{1}{0:>2}'.format('|',self.table_keys[tk],tk)


    def createDatabaseSchemaSource(self):
        """
        call this to create the database
        create a database source
        """
        import os, sqlite3   
        scriptPath = os.path.realpath(__file__).replace(__file__, "")
        dbFile = scriptPath + self.dbname
        try:
            conn = sqlite3.connect(dbFile)
            c = conn.cursor()
            schemaSrcFile = os.path.abspath(__file__).replace(__file__, "sr28asc/createDb.sql")
            with open(schemaSrcFile, 'w') as schemaSrc:
                for tk in self.table_keys.keys():
                    crt = "drop table if exists " + tk + ";\n"   
                    c.execute(crt) # write to the database
                    crt = "create table " + tk + " ("
                    crt = crt + (" text, ".join(self.table_keys[tk])) + " text);\n"
                    self.sqlText['create'][tk] = crt
                    schemaSrc.write(crt)
                    c.execute(crt) # write to the database
            conn.commit()
            conn.close() # close the connection
        except sqlite3.Error as e:
            print "An error occurred: ". e.args[0]


    def writeDatabaseSchemaInserts(self):
        for tk in self.table_keys.keys():
            # if tk != 'nutrient_data':
            # read in from the file
            import os
            scriptPath = os.path.realpath(__file__).replace(__file__, "")
            scriptToOpen = scriptPath + "sr28asc/" + self.source_files[tk]
            sqlToWriteTo = scriptPath + "sr28asc/" + self.source_files[tk].replace('.txt','.sql')
            with open(scriptToOpen, 'r') as srcFile:  
                # now create the inserts
                ins = "insert into " + tk + " ("   
                ins = ins + ", ".join(self.table_keys[tk])
                ins = ins + ") values \n"
                insertLines = []
                for line in srcFile:
                    cleanLine = line.lstrip().rstrip().replace('^',', ').replace('~','"')
                    insertLines.append(cleanLine)
                ins = ins + "(" 
                ins = ins + "),\n(".join(insertLines)
                ins = ins + ")"
                with open(sqlToWriteTo, 'w') as sqlFile:
                    sqlFile.write(ins)
                    print 'done writing to ' + sqlToWriteTo
                    sqlFile.close()
                srcFile.close()
                    

if __name__ == "__main__":
    fc = foodcalc()
    fc.print_keys()  
    print "currently reading from " + __file__
    import os
    wd =  os.path.abspath(__file__).replace(__file__, "")
    print "currently running from directory " + wd
    fc.createDatabaseSchemaSource()
    fc.writeDatabaseSchemaInserts()
