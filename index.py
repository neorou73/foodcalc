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
        self.tables["update"] = {}
        # add table keys
        self.table_keys = {}
        self.table_keys["food_description"] = ["NDB_No","FdGrp_Cd","Long_Desc Shrt_Desc","ComName","ManufacName Survey","Ref_desc","Refuse SciName","N_Factor Pro_Factor","Fat_Factor","CHO_Factor"];
        
        self.table_keys["food_group_description"] = ["FdGrp_Cd","FdGrp_Desc"];
        self.table_keys["langual_factor"] = ["NDB_No","Factor_Code"];
        self.table_keys["langual_factors_description"] = ["Factor_Code","Description"];
        self.table_keys["nutrient_data"] = ["NDB_No","Nutr_No","Nutr_Val","Num_Data_Pts","Std_Error","Src_Cd","Deriv_Cd","Ref_NDB_No","Add_Nutr_Mark","Num_Studies","Min","Max","DF","Low_EB","Up_EB","Stat_cmt","AddMod_Date","CC"];
        self.table_keys["nutrient_definition"] = ["Nutr_No","Units","Tagname","NutrDesc","Num_Dec""SR_Order"];
        self.table_keys["source_code"] = ["Src_Cd","SrcCd_Desc"];
        self.table_keys["data_derivation_code_description"] = ["Deriv_Cd","Deriv_Desc"];
        self.table_keys["weight"] = ["NDB_No","Seq","Amount","Msre_Desc","Gm_Wgt","Num_Data_Pts","Std_Dev"];
        self.table_keys["footnote"] = ["NDB_No","Footnt_No","Footnt_Typ","Nutr_No","Footnt_Txt"];
        self.table_keys["sources_of_data_link"] = ["NDB_No","Nutr_No","DataSrc_ID"];
        self.table_keys["sources_of_data"] = ["DataSrc_ID","Authors","Title","Year","Journal","Vol_City","Issue_State","Start_Page","End_Page"];
        self.table_keys["abbreviated"] = ["NDB_No.","Shrt_Desc","Water","Energ_Kcal","Protein","Lipid_Tot","Ash Carbohydrt","Fiber_TD","Sugar_Tot","Calcium","Iron","Magnesium","Phosphorus","Potassium","Sodium","Zinc","Copper","Manganese","Selenium","Vit_C","Thiamin","Riboflavin","Niacin","Panto_acid","Vit_B6","Folate_Tot","Folic_acid","Food_Folate","Folate_DFE","Choline_Tot","Vit_B12","Vit_A_IU","Vit_A_RAE","Retinol","Alpha_Carot","Beta_Carot","Beta_Crypt","Lycopene","Lut+Zea","Vit_E","Vit_D_mcg","Vit_D_IU","Vit_K","FA_Sat","FA_Mono","FA_Poly","Cholestrl","GmWt_1","GmWt_Desc1","GmWt_2","GmWt_Desc2","Refuse_Pct"];
        self.table_keys["update"] = [""];

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
        


if __name__ == "__main__":
    fc = foodcalc()
    fc.print_keys()
