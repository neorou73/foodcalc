drop table food_description;
drop table food_group_description;
drop table nutrient_data;
drop table nutrient_definition;
drop table langual_factor;
drop table langual_factors_description;
drop table source_code;
drop table data_derivation_code_description;
drop table weight;
drop table footnote;
drop table sources_of_data;
drop table sources_of_data_link;

create table food_description (NDB_No text, FdGrp_Cd text, Long_Desc text, Shrt_Desc text, ComName text, ManufacName text, Survey text, Ref_desc text, Refuse text, SciName text, N_Factor text, Pro_Factor text, Fat_Factor text, CHO_Factor text);

create table food_group_description (FdGrp_Cd text, FdGrp_Desc text);

create table langual_factor (NDB_No text, Factor_Code text);

create table langual_factors_description (Factor_Code text, Description text);

create table nutrient_data (NDB_No text, Nutr_No text, Nutr_Val text, Num_Data_Pts text, Std_Error text, Src_Cd text, Deriv_Cd text, Ref_NDB_No text, Add_Nutr_Mark text, Num_Studies text, Min text, Max text, DF text, Low_EB text, Up_EB text, Stat_cmt text, AddMod_Date text, CC text);

create table nutrient_definition (Nutr_No text, Units text, Tagname text, NutrDesc text, Num_DecSR_Order text);

create table source_code (Src_Cd text, SrcCd_Desc text);

create table data_derivation_code_description (Deriv_Cd text, Deriv_Desc text);

create table weight (NDB_No text, Seq text, Amount text, Msre_Desc text, Gm_Wgt text, Num_Data_Pts text, Std_Dev text);

create table footnote (NDB_No text, Footnt_No text, Footnt_Typ text, Nutr_No text, Footnt_Txt text);

create table sources_of_data_link (NDB_No text, Nutr_No text, DataSrc_ID text);

create table sources_of_data (DataSrc_ID text, Authors text, Title text, Year text, Journal text, Vol_City text, Issue_State text, Start_Page text, End_Page text);
