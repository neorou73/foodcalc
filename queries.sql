select * from FoodDescriptionFileFormat where Long_Desc like '%nut%';

select NDB_No, FdGrp_Cd, (select FdGrp_Desc from FoodGroupDescriptionFileFormat where FoodGroupDescriptionFileFormat.FdGrp_Cd = FoodDescriptionFileFormat.FdGrp_Cd) as FoodGrp_Desc,  Long_Desc,  Shrt_Desc,  ComName,  ManufacName,  Survey,  Ref_desc,  Refuse,  SciName,  N_Factor,  Pro_Factor, Fat_Factor, CHO_Factor FROM FoodDescriptionFileFormat WHERE Long_Desc like '%nut%';

select Units, Tagname, NutrDesc, Num_Desc, SR_Order FROM NutrientDefinitionFileFormat WHERE Nutr_No = '?';

SELECT Nutr_No, (select Units FROM NutrientDefinitionFileFormat WHERE Nutr_No = NutrientDataFileFormat.Nutr_No) as NutrUnits, (select Tagname FROM NutrientDefinitionFileFormat WHERE Nutr_No = NutrientDataFileFormat.Nutr_No) as NutrTagName, (select NutrDesc FROM NutrientDefinitionFileFormat WHERE Nutr_No = NutrientDataFileFormat.Nutr_No) as NutrDesc, Nutr_Val, Num_Data_Pts, Std_Error, Src_Cd, Deriv_Cd, Ref_NDB_No, Add_Nutr_Mark, Num_Studies, Min, Max, DF, Low_EB, Up_EB, Stat_cmt, AddMod_Date, CC FROM NutrientDataFileFormat WHERE NDB_No = '42272';

select NDB_No, FdGrp_Cd, (select FdGrp_Desc from FoodGroupDescriptionFileFormat where FoodGroupDescriptionFileFormat.FdGrp_Cd = FoodDescriptionFileFormat.FdGrp_Cd) as FoodGrp_Desc,  Long_Desc,  Shrt_Desc,  ComName,  ManufacName,  SciName FROM FoodDescriptionFileFormat WHERE Long_Desc like '%nut%';
