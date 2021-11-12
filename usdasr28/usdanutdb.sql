--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: dataderivationcode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dataderivationcode (
    derivationcode text NOT NULL,
    derivationdescription text
);


ALTER TABLE public.dataderivationcode OWNER TO postgres;

--
-- Name: fooddescription; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fooddescription (
    ndbnumber text NOT NULL,
    foodgroupcode text,
    longdescription text,
    shortdescription text,
    commonname text,
    manufacturername text,
    survey text,
    referencedescription text,
    refuse text,
    scientificname text,
    nfactor text,
    proteinfactor text,
    fatfactor text,
    chofactor text
);


ALTER TABLE public.fooddescription OWNER TO postgres;

--
-- Name: foodgroupdescription; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.foodgroupdescription (
    foodgroupcode text NOT NULL,
    foodgroupdescription text
);


ALTER TABLE public.foodgroupdescription OWNER TO postgres;

--
-- Name: footnote; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.footnote (
    ndbnumber text NOT NULL,
    footnotenumber text,
    footnotetype text,
    nutrientnumber text,
    footnotetext text
);


ALTER TABLE public.footnote OWNER TO postgres;

--
-- Name: langualfactor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.langualfactor (
    nutdbnumber text NOT NULL,
    factorcode text
);


ALTER TABLE public.langualfactor OWNER TO postgres;

--
-- Name: langualfactordescription; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.langualfactordescription (
    factorcode text NOT NULL,
    description text
);


ALTER TABLE public.langualfactordescription OWNER TO postgres;

--
-- Name: nutrientdata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nutrientdata (
    ndbnumber text NOT NULL,
    nutrientnumber text,
    nutrientvalue text,
    numericdatapoints text,
    standarderror text,
    sourcecode text,
    derivationcode text,
    referencedndbnumber text,
    addednutrientmark text,
    numberofstudies text,
    minimumvalue text,
    maximumvalue text,
    degreesoffreedom text,
    lowererrorbound text,
    uppererrorbound text,
    statisticalcomment text,
    addedmodificationdate text,
    confidencecode text
);


ALTER TABLE public.nutrientdata OWNER TO postgres;

--
-- Name: nutrientdefinition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nutrientdefinition (
    nutrientnumber text NOT NULL,
    units text,
    tagname text,
    nutrientdescription text,
    numberofdecimalplaces text,
    srorder text
);


ALTER TABLE public.nutrientdefinition OWNER TO postgres;

--
-- Name: sourcecode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sourcecode (
    sourcecode text NOT NULL,
    sourcecodedescription text
);


ALTER TABLE public.sourcecode OWNER TO postgres;

--
-- Name: sourcesofdata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sourcesofdata (
    datasourceid text,
    authors text,
    title text,
    year text,
    journal text,
    volumecity text,
    issuestate text,
    startpage text,
    endpage text
);


ALTER TABLE public.sourcesofdata OWNER TO postgres;

--
-- Name: sourcesofdatalink; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sourcesofdatalink (
    ndbnumber text NOT NULL,
    nutrientnumber text,
    datasourceid text
);


ALTER TABLE public.sourcesofdatalink OWNER TO postgres;

--
-- Name: weight; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.weight (
    ndbnumber text,
    sequencenumber text,
    amount text,
    measuredescription text,
    gramweight text,
    numberofdatapoints text,
    standarddeviation text
);


ALTER TABLE public.weight OWNER TO postgres;

--
-- Data for Name: dataderivationcode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dataderivationcode (derivationcode, derivationdescription) FROM stdin;
\.


--
-- Data for Name: fooddescription; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fooddescription (ndbnumber, foodgroupcode, longdescription, shortdescription, commonname, manufacturername, survey, referencedescription, refuse, scientificname, nfactor, proteinfactor, fatfactor, chofactor) FROM stdin;
\.


--
-- Data for Name: foodgroupdescription; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.foodgroupdescription (foodgroupcode, foodgroupdescription) FROM stdin;
\.


--
-- Data for Name: footnote; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.footnote (ndbnumber, footnotenumber, footnotetype, nutrientnumber, footnotetext) FROM stdin;
\.


--
-- Data for Name: langualfactor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.langualfactor (nutdbnumber, factorcode) FROM stdin;
\.


--
-- Data for Name: langualfactordescription; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.langualfactordescription (factorcode, description) FROM stdin;
\.


--
-- Data for Name: nutrientdata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nutrientdata (ndbnumber, nutrientnumber, nutrientvalue, numericdatapoints, standarderror, sourcecode, derivationcode, referencedndbnumber, addednutrientmark, numberofstudies, minimumvalue, maximumvalue, degreesoffreedom, lowererrorbound, uppererrorbound, statisticalcomment, addedmodificationdate, confidencecode) FROM stdin;
\.


--
-- Data for Name: nutrientdefinition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nutrientdefinition (nutrientnumber, units, tagname, nutrientdescription, numberofdecimalplaces, srorder) FROM stdin;
\.


--
-- Data for Name: sourcecode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sourcecode (sourcecode, sourcecodedescription) FROM stdin;
\.


--
-- Data for Name: sourcesofdata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sourcesofdata (datasourceid, authors, title, year, journal, volumecity, issuestate, startpage, endpage) FROM stdin;
D3318	D.A. Kline	Quantitative determination of sugars in fruits by GLC separation of TMS derivatives	1970	Journal of AOAC International	53	6	1198	1202
D3326	C. Martin-Villa	High performance liquid chromatographic determination of carbohydrates in raw and cooked vegetables	1982	Journal of Food Science	47	\N	2086	\N
D3331	N.J. NEUCERE, G. SUMRELL	Chemical composition of different varieties of grain sorghum	1980	Journal of Agricultural and Food Chemistry	28	1	19	21
D3339	K.W. Swallow, N.H. Low	Analysis And Quantitation Of The Carbohydrates In Honey Using High-Performance Liquid Chromatography.	1990	Journal of Agricultural and Food Chemistry	38	9	1828	1832
D3357	V.C. Morris, O.A. Levander	Selenium content of food	1970	Journal of Nutrition	100	12	1383	1388
D3904	F Khachik, G R Beecher, W R Lusby	Separation, identification and quantification of the major carotenoids in extracts of apricots, peaches, cantaloupe, and pink grapefruit by liquid chromatography	1989	J Agric Food Chem	37	\N	1465	1473
D3907	C Y Lee, P E McCoon, J H LeBowitz	Vitamin A value of sweet corn	1981	J Agric Food Chem	29	\N	1294	1295
D3920	M. Heinonen, V. Olliloinen, E. Perttivaro, P. Koivistoinen	Carotenoids and retinoids in Finnish Foods: Dietary Fats	1988	J. Food Composition and Analysis	1	\N	334	340
D3852	J Q Wu, D E Carrol	Chemical and physical sensory stabilities of prebaked frozen sweet potatoes.	1991	J. Food Sci.	56	1	710	713
D3860	LIgia Almeida-Muradian, Fausto Fiorini, Marilene Penteado	Provitamin A Evaluation of External and Internal Leaves of Cabbage (Brassica oleracea L. var. capitata)	1995	Ciencia e Tecnologia de Alimentos	15	2	108	111
D3891	L A Chandler, S J Schwartz	Isomerization and losses of trans-beta-carotene in sweet potatoes as affected by processing treatments	1988	J Agric Food Chem	36	\N	129	133
D4043	E. Jakob, I. Elmadfa	Application of a Simplified HPLC Assay for the Determination of Phylloquinone (Vitamin K) in Animal and Plant Food Items	1996	Food Chemistry	56	1	87	91
D4052	T.J. Koivu, V. I. Piironen, S.K. Henttonen, P.H. Mattila	Determination of Phylloquinone in Vegetables, Fruits, and Berries by High-Performance Liquid Chromatography with Electrochemical Detection	1997	American Chemical Society	\N	\N	\N	\N
D4069	S.L. Booth, H.T. Madabushi, KW Davidson, J.A. Sadowski	Tea and Coffee Brews are not Dietary Sources of Vitamin K-1 (Phylloquinone)	1995	Journal of the American Dietetic Assoc.	95	1	82	83
D4142	W. R. Mindak, S. P. Dolan	Determination of arsenic and selenium in food using a microwave digestion-dry ash preparation and flow injection hydride generation atomic absorption spectrometry	1999	Journal of Food Composition and Analysis	12	\N	111	122
D3309	M. Horbowicz	Adaptation of the method of sugars determination by gas chromatography (GC) and characteristics of  their occurrence	1980	Acta Alimentaria Polonica	6	4	227	236
D1417	O. Longe	Effect of boiling on the carbohydrate constituents of some non-leafy vegetables	1981	Food Chemistry	7	1	1	6
D5004	Judy Heilman, Mary Kiritsy, Steven Levy, James Wefel	Assessing Fluoride Levels of Carbonated Soft Drinks	1999	JADA	130	\N	1593	1599
D5981	J. W. DeVries, P.M. Keagy, C.A. Hudson, J.I. Rader	AACC collaborative study of a method for determining total folate in cereal products -- microbiological assay using trienzyme extraction (AACC method 86-47)	2001	Cereal Foods World	46	5	216	219
D4341	Ira Shannon	Fluoride in Carbonated Soft Drinks	1977	Texas Dental Journal	95	\N	6	9
D4722	H.G. Daood, M. Vinkler, F. Markus, E.A. Hebshi, P.A. Biacs	Antioxidant vitamin content of spice red pepper (paprika) as affected by technological and varietal factors	1996	Food Chemistry	55	4	365	372
D4801	P. Perkins-Veazie, J.K. Collins, S.D. Pair, W. Roberts	Lycopene content differs among red-fleshed watermelon cultivars	2001	Journal of the Science of Food and Agriculture	81	\N	983	987
D7282	R. Abdulah, K. Miyazaki, M. Nakazawa, H. Koyama	Low contribution of rice and vegetables to the daily intake of selenium in Japan	2005	International Journal of Food Science and Nutrition	56	7	463	471
D6941	J. Lako, V.C. Trenerry, M. Wahlqvist, N. Wattanapenpaiboon, S. Sotheeswaran, R. Premier	Phytochemical flavonols, carotenoids and the antioxidant properties of a wide selection of Fijian fruit, vegetables and other readily available foods	2007	Food Chemistry	101	\N	1727	1741
D6343	S. Ahrens, M. Venkatachalam, A.M. Mistry, K. Lapsley, S.K. Sathe	Almond (Prunus ducis L.) protein quality	2005	Plant Foods for Human Nutrition	60	\N	123	128
D9782	n/a	kimchi	2012	Standard Food Composition Table	\N	\N	476	476
D1073	J.P. McBride, R.A. Maclead	Sodium and potassium in fish from the Canadian Pacific coast.	1956	Journal of the American Dietetic Association	32	\N	636	638
D964	E.H. Jr. Gruger, R.W. Nelson, M.E. Stansby	Fatty acid composition of oils from 21 species of marine fish, freshwater fish and shellfish.	1964	American Oil Chemists' Society, Journal	41	10	662	667
D3296	C.E. Damon, B.C. Pettitt	Sugars and Sugar Products: High Performance Liquid Chomatographic Determination of Fructose, Glucose and Sucrose in Molasses	1980	J. AOAC	63	3	476	480
D3315	W.J. Hurst, R.A. Martin, B.L. Zoumas	Application of HPLC to Characterization of Individual Carbohydrates in Foods	1979	Journal of Food Science	44	\N	892	893
D3344	R.B. H. Wills	Nutrient composition of stone fruit (Prunus spp.) cultivars: apricot, cherry, nectarine, peach and plum	1983	J Sci Food Agric	34	\N	1383	1389
D3359	O.E. Olson, I.S. Palmer	Selenium in foods purchased or produced in South Dakota	1984	Journal of Food Science	49	\N	\N	\N
D3364	J.T. Snook, D. Kinsey, D.L. Palmquist, J.P. DeLaney, V.M. Vivian, A.L. Moxon	Selenium content of foods purchased or produced in Ohio	1987	Journal of the American Dietetic Association	87	6	744	749
D3924	D.J. Hart, K.J. Scott	Development and evaluation of an HPLC method for the analysis of carotenoids in foods, and the measurement of the carotenoid content of vegetables and fruits commonly consumed in the UK	1995	Food Chemistry	54	\N	101	111
D3846	J P Sweeney, A C Marsh	Effect of processing on provitamin A in vegetables	1971	J Am Diet Assoc	59	\N	238	243
D3886	A A Bushway, D V Setteze, D F McGann, R H True, T M Work, R J Bushway	Effect of processing method and storage time on the nutrient composition of fiddlehead greens	1985	J Food Sci	50	\N	1491	1492
D3890	E D Brown, M S Micozzi, N E Craft, J G Bieri, G Beecher, B K Edwards, A Rose, P R Taylor, J C Smith, Jr.	Plasma carotenoids in normal men after a single ingestion of vegetables or purified beta-carotene	1989	Am J Clin Nutr	49	\N	1258	1265
D3903	F Khachik, G R Beecher	Separation and identification of carotenoids and carotenol fatty acid esters in some squash products by liquid chromatography 1. Quantification of carotenoids and related esters by HPLC	1988	J Agr Food Chem	36	\N	929	937
D3969	E-Siong Tee, Chin-Lam Lim	Carotenoid composition and content of Malaysian vegetables and fruits by the AOAC and HPLC methods.	1991	Food Chemistry	41	\N	309	339
D4051	G. Ferland, J.A. Sadowski	Vitamin K (Phylloquinie) Content of Edible Oils:  Effects of Heating and Light Exposure	1992	Journal of Agricultural and Food Chemistry	40	10	1869	1873
D4066	V. I. Piironen, T.J. Koivu	Quality of Vitamin K Analysis and Food Composition Data in Finland	1998	Food Chemistry	68	\N	223	226
D4074	T.J. Koivu, V. I. Piironen, A.-M. Lampi, P.H. Mattila	Dihydrovitamin K in oils and margarines	1999	Food Chemistry	64	\N	411	414
D4941	S.D. Senter, G.W.Jr. Chapman, W.R. Jr Forbus, J.A. Payne	Sugar and nonvolatile acid composition of persimmons during maturation	1991	Journal of Food Science	56	4	989	991
D5007	Robert Ophaug	Fluoride, Unpublished - Ophaug	\N	Microdiffision	\N	\N	\N	\N
D4381	S.W. Leonard, K. Hardin, J.E. Leklem	Vitamin B-6 Content of Spices	2001	Journal of Food Composition and Analysis	14	\N	163	167
D3335	D.H. Picha	HPLC Determination Of Sugars In Raw And Baked Sweet Potatoes	1985	Journal Of Food Science	50	\N	1189	1190
D7521	B Li, K.W. Andrews, P.R. Pehrsson	Individual sugars, soluble and insoluble dietary fiber contents of 70 high consumption foods	2002	J Food Comp Anal	15	\N	715	723
D7121	J. L. Montgomery, J. R. Blanton, Jr., R. L. Horst, M. L. Galyean, K. J. Morrow, Jr., D. B. Wester, M.F. Miller	Effects of biological type of beef steers on vitamin D, calcium, and phosphorus status.	2004	J. Animal Sci.	82	\N	2043	2049
D6461	B Kandlakunta, A Rajendran, L Thingnganing	Carotene content of some common (cereals, pulses, vegetables, spices and condiments) and unconventional sources of plant origin	2008	Food Chemistry	106	\N	85	89
D9541	, BJ Ector	Compositional and Nutritional Characteristics	2001	Muscadine Grapes	\N	\N	341	367
D672	L. A. Koehler	Food and Drug Bulletin (beverages gen)	1963	Food and Drug Bulletin No. 134, North Dakota State Lab. 1963	134	\N	134	\N
D1394	T.E. Ekpenyong, R.L. Borchers	Effect of cooking on the chemical composition of winged beans (Psophocarpus tetragonobulus)	1980	Journal of Food Science	45	6	1559	\N
D2028	A. Sanchez-Marroquin, A. Feria-Morales, S. Maya, V. Ramos-Moreno	Processing, nutritional quality and sensory evaluation of amaranth enriched corn tortilla	1987	Journal of Food Science	52	5	\N	\N
D3342	J.W. White, R MeLoy, J Probst, W Huser	Sugars Containing Galactose Occur In Honey	1986	Journal Of Agricultural Research (J Apic Res. V.25 (3)	25	3	182	185
D3764	J Marlett	Content and composition of dietary fiber in 117 frequently consumed foods	1992	Journal of the American Dietetic Association	92	2	\N	\N
D3765	N Vollendorf, J Marlett	Comparison of Two Methods of Fiber Analysis of 58 Foods	1993	Journal of Food Composition and Analysis	6	\N	203	214
D3767	M Cardozo, B Li	Total dietary fiber content of selected nuts by two enzymatic-gravimetric methods	1994	Journal of Food Composition and Analysis	7	\N	37	43
D3771	L Prosky	Total Dietary Fiber in Cereals -- Problems and Determination	1986	AACC Symposium	\N	\N	\N	\N
D3773	R. Mongeau, R. Brassard	A Comparison of Three Methods for Analyzing Dietary Fiber in 38 Foods	1989	Journal of Food Composition and Analysis	2	\N	189	199
D3776	C. Lintas, M. Capelloni	Content and composition of dietary fibre in raw and cooked vegetables	1988	Food Sciences and Nutrition	42F	\N	117	124
D3777	J Marlett, N Vollendorf	Dietary fiber content and composition of vegetables determined by two methods of analysis	1993	Journal of Agriculture and Food Chemistry	41	\N	1608	1612
D3779	N Vollendorf, J Marlett	Dietary Fiber Content and Composition in Home-Prepared and Commercially Baked Products: Analysis and Prediction	1994	Cereal Chemistry	71	1	99	105
D3780	J Marlett, N Vollendorf	Dietary fiber content and composition of different forms of fruits	1994	Food Chemistry	51	\N	39	44
D3933	C. Y. Lee, R.W. Robinson	Influence of the crimson gene (ogc) on vitamin A content of tomato	1980	Horticultural Science	15	\N	260	261
D3956	D.M. R. Ramos, D B Rodriguez	Determination of the vitamin A value of common Brazilian leafy vegetables.	1987	J. Micronutrient Analysis	3	\N	147	155
D3845	R L Rouseff, G D Sadler, T J Putman, J E Davis	Determination of beta-carotene and other hydrocarbon carotenoids in red grapefruit cultivars.	1992	J. Agric. Food Chem.	40	\N	47	51
D3870	B.H. Chen, J.R. Chuang, J.H. Lin, P. Chiu	Quantification of provitamin A compounds in Chinese vegetables by high-performance liquid chromatography	1993	J. Food Protection	56	\N	51	54
D3888	R J Bushway	Determination of alpha- and beta-carotene in some raw fruits and vegetables by high-performance liquid chromatography	1986	J Agr Food Chem	34	\N	409	412
D3894	G K Gregory, T-S Chen, T R Philip	Quantitative analysis of carotenoids and carotenoid esters in fruits by HPLC: red bell peppers	1987	J Food Sci	52	\N	1071	1073
D3899	A Homnava, W Rogers, R R Eitenmiller	Provitamin A activity of specialty fruit marketed in the United States.	1990	J. Food Composition and Analysis	3	\N	119	133
D3900	L R Howard, T Dewi	Minimal processing and edible coating effects on composition and sensory quality of mini-peeled carrots.	1996	J. Food Science	61	3	643	651
D4901	J.I. Rader, C. M. Weaver, G. Angyal	Total folate in enriched cereal grain products in the United States following fortification	2000	Food Chemistry	70	\N	275	289
D3305	K.C. Gross	Fruits and vegetables are a source of galactose: Implications in planning the diets of patients with galactosaemia	1991	J. Inher. Metab. Dis.	14	\N	253	258
D5002	J.D.B. Featherstone, Carol Shields	A Study of Fluoride Intake in New York State Residents	1988	New York State Fluoride Analysis Contract - report date 12/1/1988	\N	\N	\N	\N
D5005	Mary Kiritsy, Steven Levy, John Warren, Nupur Guha-Chowdhury, Judy Heilman, Teresa Marshall	Assessing Fluoride Concentrations of Juices and Juice-Flavored Drinks	1996	JADA	127	\N	895	902
D5021	A. Kingman	Unpublished data. NIDR/NIH, 1984	1984	Unpublished data. NIDR/NIH, 1984.	\N	\N	\N	\N
D4721	M.I. Minguez-Mosquera, D. Hornero-Mendez	Comparative study of the effect of paprika processing on the carotenoids in peppers (Capsicum annuum) of the Bola and Agridulce varieties	1994	Journal of Agricultural and Food Chemistry	42	\N	1555	1560
D4743	J.K. Daun, R. Przybylski	Environmental effects on the composition of four Canadian flax cultivars	2000	Proceedings of the 58th Meeting of the Flax Institute of the United States	\N	\N	80	91
D7301	E.C. Pappa, A.C. Pappas, P.F. Surai	Selenium content in selected foods from the Greek market and estimation of the daily intake	2006	Science of the Total Environment	372	\N	100	108
D9421	R. Ayerza, Wayne Coates	Composition of chia (Salvia hispanica) grown in six tropical and subtropical ecosystems of South America	2004	Tropical Science	44	\N	131	135
D7481	A. Perry, H. Rasmussen, E.J. Johnson	Xanthophyll (lutein, zeaxanthin) content in fruits, vegetables and corn and egg products	2009	J Food Comp Anal	22	\N	9	15
D9361	R. Ayerza, Wayne Coates	Some quality components of four chia (Salvia hispanica L.) genotypes grown under tropical coastal desert ecosystem conditions	2009	Asian J Plant Sci	8	4	301	307
D7261	P.P. Sirichakwal, P. Puwastien, J. Polngam, R. Kongkachuichai	Selenium content of Thai foods	2005	J Food Comp Anal	18	\N	47	59
D9701	M. Venkatachalam, S.K. Sathe	Chemical composition of selected edible nut seeds	2006	Journal of Agricultural and Food Chemistry	54	\N	4705	4714
D9564	S.O Serna-Saldivar	Chemical COmposition of cereal grains	2010	Cereal Grains	\N	\N	81	108
D9721	A.A. JOSHI	Studies on Standardization of Enzyme Concentration and Process for Extraction of Tamarind	2012	J Food Process Technol	3	2	141	143
D389	K. Hoppner, B. Lampi, D.E. Perrin	The free & Total folate activity in foods available on the Canadian market.	1972	Canadian Institute of Food Technology Journal	5	2	60	\N
D390	A.V. Lentoc, L.B. Dimannahan, O.N. Gonzalez	Vitamin B6 Content of Some Phillipine Foods. Raw Foods	1971	Philippine Journal of Nutrition	24	\N	209	\N
D1414	Y.G. Deosthale	Trace Element composition of common oilseeds	1981	Journal of American Oil Chemist Society	11	\N	988	\N
D1066	G.V. Mann	The Health and Nutritional status of Alaskan Eskimos.	1962	American Journal of Clinical Nutrition	11	\N	31	76
D3306	K. Haila	Sugar and organic acid content of vegetables consumed in Finland during 1988-1989	1992	Journal of Food Composition and Analysis	5	\N	100	107
D3316	J.L. Iverson, M.P. Bueno	Evaluation of high pressure liquid chromatography and gas liquid chromatography for quantitative determination of sugars in foods	1981	Journal of the Association of Official Analytical Chemists	64	1	139	143
D3337	 SMITH	Quantitative Determination of Sugars in Various Food Products	1986	Journal of Food Science	51	5	\N	\N
D3338	P. Sporns	Alberta honey composition	1992	Food Research International	25	\N	93	100
D3352	S.N. Ganapathy, R Dhanda	Selenium content of omnivorous and vegetarian diets	1980	The Ind. J. Nutr. Dietet.	17	\N	53	59
D3358	A.L. Moxon, D.L. Palmquist	Selenium content of foods grown or sold in Ohio	1980	Ohio Report	65	1	\N	\N
D3912	T Philip, T S Chen	Development of a method for the quantitative estimation of provitamin A carotenoids in some fruits.	1988	J. Food Science	53	\N	1703	1707
D3921	I.M. Heinonen, V. Ollilainen, E. Linkola, P. Varo, P. Koivistoinen	Carotenoids and Retinoids in Finnish Foods:  Cereal and Bakery Products	1989	Cereal Chemistry	66	4	270	273
D3844	D B Rodriguez, L C Raymundo, K L Simpson, C O Chichester	Carotenoid pigment changes in ripening Momordica charantia fruits	1976	Ann Bot (London)	40	\N	615	624
D3850	P W Simon, X Y Wolff	Carotenes in typical and dark orange carrots	1987	J Agric Food Chem	35	\N	1017	1022
D3871	\N	Carotenoid Table Document Number C9325	\N	\N	\N	\N	\N	\N
D3885	R J Bushway, A M Wilson	Determination of alpha- and beta-carotene in fruit and vegetables by high performance liquid chromatography	1982	Can Inst Food Sci Technol	15	\N	165	169
D4002	S.L. Booth, J.A. Sadowski, J.A. T. Pennington	Phylloquinone (Vitamin K) Content of Foods in the U.S. Food and Drug Administration's Total Diet Study	1995	Journal of Agricultural and Food Chemistry	43	6	1574	1579
D4041	S.L. Booth, KW Davidson, J.A. Sadowski	Evaluation of an HPLC Method for the Determination of Phylloquinone (Vitamin K) in Various Food Matrices	1994	Journal of Agricultural and Food Chemistry	42	2	295	300
D4071	V. I. Piironen, T.J. Koivu, O. Tammisalo, P.H. Mattila	Determination of phylloquinone in oils, margarines and butter by HPLC with electrochemical detection	1997	Food Chemistry	59	3	473	480
D4072	C. Bolton-Smith, R.J.G. Price, Steven T. Fenton, Dominic J. Harrington, M.J. Shearer	Compilation of a provisional UK database for the phylloquinone (vitamin K) content of foods	2000	British Journal of Nutrition	83	\N	389	399
D4078	S.L. Booth, J.A. T. Pennington, J.A. Sadowski	Dihydro-vitamin K: primary food sources and estimated dietary intakes in the American diet	1996	Lipids	31	7	714	719
D4863	V.C. Wilberg, D.B. Rodriguez-Amaya	HPLC quantitation of major carotenoids of fresh and processed guava, mango and papaya	1995	Lebensmittel-Wissenschaft und-Technologie	28	5	474	480
D4981	Earle Schulz, Joel Epstein, Donald Forrester	Fluoride Content of Popular Carbonated Beverages	1976	Journal of Preventive Dentistry	3	\N	27	29
D5003	Stephen Adair, Dennis Leverett, Carol Shields	Fluoride Content of School Lunches from Optimally Fluoridated and a Fluoride-Deficient Community	1991	Journal of Food Composition and Analysis	4	\N	216	226
D5162	Jan Stannard, J Rovero, Anthi Tsamtsouris, V Gavris	Fluoride Content of Some Bottled Waters and Recommendations for Fluoride Supplementation	1990	Journal of Pedodontics	14	2	103	107
D5261	Prakash Bhosale, Igor V. Ermakkov, Maia R. Ermakova, Werner Gellermann, Paul S. Bernstein	Resonance Raman notification of nutritionally important carotenoids in fruit, vegetables, and their juices in comparison to high-pressure liquid chromatography analysis.	2004	Journal of Agricultural and Food Chemistry	52	11	3281	3285
D5201	Steven Levy	Fluoride data on infant foods and beverages	2003	unpublished Fluoride data from Dr. Steven Levy, University of Iowa	\N	\N	\N	\N
D4541	Nutrient Data Lab, USDA-ARS	Bottled Water Sampling Study Final Report	\N	\N	\N	\N	\N	\N
D3284	R. Becker	Identification of some sugars and mannitol in celery	1968	Journal of Food Science	33	\N	128	130
D4841	J.A. Dudek	Investigation of total dietary fiber methodology in the characterization of the carbohydrate fraction of canned pears	1985	Journal of Food Science	50	\N	851	852
D6421	M. Ozcan, C. Atalay	Determination of seed and oil properties of some poppy (Papaver somniferum L.) varieties	2006	Grasas Y Aceites	57	2	169	174
D7441	J.M. Humphries, F Khachik	Distribution of lutein, zeaxanthin, & related geometrical isomers in fruit, vegetables, wheat, & pasta products	2003	Journal of Agricultural and Food Chemistry	51	\N	1322	1327
D9741	JD House, J Neufeld, G Leson	Evaluating the quality of protein from hemp seed (Cannabis sativa L.) products through the use of the protein digestibility-corrected amino acid score method	2010	Journal of Agricultural and Food Chemistry	58	\N	11801	11807
D9742	Y Liu, Jeffrey B. Blumberg, C.-Y. Oliver Chen	Quantification and bioaccessibility of California pistachio bioactives	2014	Journal of Agricultural and Food Chemistry	62	\N	1550	1556
D3321	C. Y. Lee	Free sugars in fruits and vegetables	1970	Food Science and Technology	\N	1	\N	\N
D3336	M.L. Richmond	Analysis of simple sugars and sorbitol in fruit by high-performance liquid chromatography	1981	J. Agric. Food Chem.	29	\N	4	7
D673	L. A. Koehlar	Food and Drug Bulletin - N. Dakota State Gen. Beverages	1965	Bulletin No. 141, June 1965	141	\N	141	\N
D3905	F Khachik, M B Goli, G R Beecher, J Holden, W R Lusby, M D Tenoro, M R Barrera	Effect of food preparation on qualitative and quantitative distribution of major carotenoid constituents of tomatoes and several green vegetables.	1992	J. Agric Food Chem	40	\N	390	398
D3909	C Y Lee	Changes in carotenoid content of carrots during growth and post-harvest storage	1986	Food Chem	20	\N	285	293
D3847	J P Sweeney, A C Marsh	Effects of selected herbicides on provitamin A content of vegetables	1971	J Agric Food Chem	19	\N	854	856
D3851	L H Tonucci, J M Holden, G R Beecher, F Khachik, C S Davis, G Mulokozi	Carotenoid content of thermally processed tomato-based food products.	1995	J. Agric. Food Chem.	43	\N	579	586
D3863	K. Bhaskarachary, D.S. Sankar Rao, Y.G. Deosthale, Vinodini Reddy	Carotene content of some common and less familiar foods of plant origin.	1995	Food Chemistry	54	\N	189	193
D3887	J L Bureau, R J Bushway	HPLC determination of carotenoids in fruits and vegetables in the United States	1986	J Food Sci	52	\N	128	130
D3902	F Khachik, G R Beecher	Application of C-45-beta-carotene as an internal standard for the quantification of carotenoids in yellow/orange vegetables by liquid chromatography	1987	J Agr Food Chem	35	\N	732	738
D1191	I.J. Tinsley, R.R. Lowry	Bromine content of lipids of marine organisms	1980	American Oil Chemists' Society, Journal	\N	1	31	33
D4048	G. Ferland, D. MacDonald, J.A. Sadowski	Development of a diet low in vitamin K (phylloquinone)	1992	J. American Dietetic Assoc	92	5	593	597
D4068	T.J. Koivu, V. I. Piironen, P.H. Mattila	Phylloquinone (Vitamin K) in Cereal Products	1997	Cereal Chemistry	75	1	1	6
D4077	S.L. Booth, KW Davidson, A.H. Lichtenstein, J.A. Sadowski	Plasma concentration of dihydro-vitamin K following dietary intake of hydrogenated vitamin K-rich vegetable oil	1996	Lipids	31	7	709	713
D4864	M. Padula, D.B. Rodriguez-Amaya	Characteristics of the carotenoids and assessment of the vitamin A value of Brazilian guavas	1986	Food Chemistry	20	\N	11	19
D4961	Elizabeth Nobmann	Nutrient Value of Alaska Native Foods	1993	\N	\N	\N	\N	\N
D5301	RD Jackson, EJ Brizendine, SA Kelly, R Hinesley, GK Stookey, AJ Dunipace	The fluoride content of foods and beverages from negligibly and optimally fluoridated communities.	2002	Community Dental Oral Epidemiology	30	5	382	391
D5342	A.A. Franke, L.J. Custer, Christi Arakaki, Suzanne Murphy	Vitamin c and flavonoid levels of fruits and vegetables consumed in Hawaii.	2004	Journal of Food Composition and Analysis	17	\N	1	35
D4281	L.D. Thompson, L.C. Hoover, H.C. Brittin, W.R. Lan, M.F. Miller, C.K. Wu	Carcass characteristics, composition, palatability, microbiological quality and consumer acceptance of emu meat	1996	Department of Animal Science and Food Technology, Texas Tech University Research Report	\N	\N	\N	\N
D4301	K.D. Pollok, D.S. Hale, R.K. Miller, J.T. Keeton, R. Angel, A. Blue-McLendon	Ostrich Meat industry development: Phase II	1997	American Ostrich Association, Fort Worth, Texas	\N	\N	\N	\N
D4561	H. Fukuba, T. Murota	Determination of tocopherols in foodstuffs, especially nuts and spices, by high-performance liquid chromotography	1985	Journal of Micronutrient Analysis	1	\N	93	105
D4761	K.C. Duester	Avocado fruit is a rich source of beta-sitosterol	2001	Journal of the American Dietetic Association	101	4	404	404
D4781	R.J. Pawlosky, V.P. Flanagan, R.F. Doherty	A Mass Spectrometric Validated High-Performance Liquid Chromatography Procedure for the Determination of Folates in Foods	2003	Journal of Agricultural and Food Chemistry	\N	\N	\N	\N
D4821	B. Heuer	Effect of late salinization of chia (Salvia hispanica), stock (Matthiola tricuspidata) and evening primrose (Oenothera biennis) on their oil content and quality	2002	Industrial Crops and Products	15	\N	163	167
D6881	M.M. Delgado-Zamarreno, M. Bustamante-Rangel, A. Sanchez-Perez, J. Hernandez-Mendez	Analysis of vitamin D isomers in seeds & nuts with & without coupled hydrolysis by liquid chromatography & coulometric detection	2001	J. Chromatogr. A.	935	\N	77	86
D7321	A. Askar, H.J. Bielig	Selenium content of food consumed by Egyptians	1983	Food Chemistry	10	\N	231	234
D7501	M. Yano et al	Quantitation of carotenoids in raw and processed fruits in Japan	2005	Food Sci. Technol. Res.	11	1	13	18
D6641	K. Mahattanatawee, J.A. Manthey, G. Luzio, S. T. Talcott, K. Goodner et al	Total antioxidant activity and fiber content of select Florida-grown tropical fruits	2006	Journal of Agricultural and Food Chemistry	54	\N	7355	7363
D6522	J. Lehmann, Daniel H. Putnam, A.A. Qureshi	Vitamin E isomers in grain amaranths (Amaranthus spp.)	1994	Lipids. American Oil Chemists' Society	29	3	177	181
D6401	M. Ozcan	Determination of the mineral compositions of some selected oil-bearing seeds & kernels using Inductively Coupled Plasma Atomic Emmission Spectrometry (ICP-AES)	2006	Grasas y Aceites	57	2	\N	\N
D6321	K.M. Phillips, D.M. Ruggio, M. Ashraf-Khorassani	Phytosterol composition of nuts and seeds commonly consumed in the United States	2005	Journal of Agricultural and Food Chemistry	53	\N	9436	9445
D6341	V. I. Piironen, J. Toivo, Riitta Puupponen-Pimia, A.-M. Lampi	Plant sterols in vegetables, fruits and berries	2003	Journal of the Science of Food and Agriculture	83	\N	330	337
D6481	M. Kaufman, Z. Wiesman	Pomegranate oil analysis with emphasis on MALDI-TOF/MS triacylglycerol fingerprinting	2007	Journal of Agricultural and Food Chemistry	55	\N	10405	10413
D6901	M. Ozcan, M. Akbulut	Estimation of minerals, nitrate & nitrite contents of medicinal & aromatic plants used as spices, condiments and herbal tea	2008	Food Chemistry	106	\N	852	858
D7341	M Fox, C Rayner, P Wu	Amino Acid composition of Australian foods	1988	Food Technology in Australia	40	\N	320	323
D6681	A.A. Franke, Suzanne Murphy, R. Lacey, L.J. Custer	Tocopherol and tocotrienol levels of foods comsumed in Hawaii	2007	Journal of Agricultural and Food Chemistry	55	\N	769	778
D642	 Consumer Reports	Orange Drink Mixes	1977	Consumer Reports	\N	Jan	68	70
D1107	M.E. Stansby	Chemical Characteristics of fish caught in the northwest Pacific Oceans.	1976	Marine Fish Rev.	38	9	1	11
D614	L. Hook, I.K. Brandt	Copper content of some low-copper foods	1966	Journal of the American Dietetic Association	49	3	202	203
D3313	 Hunter	PP Document Number 2031005	1993	\N	\N	\N	\N	\N
D3775	J,L, Rosado et al	Dietary Fiber in Mexican Foods	1993	Journal of Food Composition and Analysis	6	3	215	222
D657	W. J. Hurst, R. A. Martin, B. L. Zoumas	Application of HPLC to Characterization of Individual CHO in Foods	1979	Journal of Food Science	44	3	892	\N
D3849	I R Stewart	Provitamin A and carotenoid content of citrus juices	1977	J Agric Food Chem	25	\N	1132	1137
D3853	Y Wu, A K Perry, B P Klein	Vitamin C and beta-carotene in fresh and frozen green beans and broccoli in a simulated system.	1992	J. Food Quality	15	2	87	96
D4050	M.J. Shearer, C. Bolton-Smith	The UK Food Data-Base for Vitamin K and Why We Need It	1999	Food Chemistry	68	\N	213	218
D4053	A.C. Shovic	Nutrient composition of abiyuch and rowal fruits	1999	Tropical Science	39	\N	159	161
D4073	E. Jakob, I. Elmadfa	Rapid and simple HPLC analysis of vitamin K in food, tissues and blood	2000	Food Chemistry	68	\N	219	221
D5001	Donald Taves	Dietary Intake of Fluoride Ashed (total fluoride) v. Unashed (inorganic fluoride) Analysis of Individual Foods	1983	British Journal of Nutrition	49	\N	295	301
D6003	V. Singh, A.N. Garg	Availability of essential trace elements in Indian cereals, vegetables and spices using INAA and the contribution of spices to daily dietary intake	2006	Food Chemistry	94	\N	81	89
D4282	L.D. Thompson	Nutritional composition of six muscles from yearling emus	1997	Department of Animal Science and Food Technology Research Report, Texas Tech University	\N	\N	\N	\N
D4701	M. Murkovic	Development of an Austrian carotenoid database	2000	Journal of Food Composition and Analysis	13	\N	435	440
D7585	\N	The Composition of Foods	2002	McCance and WIddowson's The Composition of Foods	\N	\N	\N	\N
D7101	J. L. Montgomery, F. C. Parrish, D. C. Beitz, R. L. Horst, E. J. Huff-Lonergan, A. H. Trenkle	The use of vitamin D3 to improve beef tenderness.	2000	J. Animal Science	78	\N	2615	2621
D9401	R. Ayerza, Wayne Coates	Influence of environment on growing period and yield, protein, oil and a-linolenic content of three chia (Salvia hispanica L.) selections	2009	Industrial Crops and Products	30	\N	321	324
D6521	A.S. Colmenares De Ruiz, R. Bressani	Effect of germination on the chemical composition and nutritive value of amaranth grain	1990	Cereal Chemistry	67	6	519	522
D6661	M.M. Wall	Ascorbic acid, vitamin A, & mineral composition of banana & papaya cultivars grown in Hawaii	2006	Journal of Food Composition and Analysis	19	\N	434	445
D9843	Jin-Wei Li, Liu-Ping Fan, Shao-Dong Ding, Xiao-Lin Ding	Nutritional composition of five cultivars of chinese jujube	2007	Food Chemistry	103	2	454	460
D739	J.H. Hankin, S. Margen, N. Goldsmith	Contribution of Hard Water to Calcium and Magnesium Intakes of Adults	1970	Journal of the American Dietetic Association	56	3	212	224
D2793	D.T. Gordon, G.L. Roberts, D.M. Hernty	Thiamin, Riboflavin, and Niacin content and stability in Pacific coast seafoods.	1979	Journal of Agricultural and Food Chemistry	27	3	483	490
D3410	A.W. Lantz	Use of chilled sea water in place of ice in transporting fish	1953	Fisheries Research Board of Canada, Progress Reports of the Pacific Coast Stations	95	\N	39	44
D3766	V Chaudhary, F Weber	Barley bran flour evaluated as dietary fiber ingredient in wheat bread	1990	Cereal Foods World	35	6	560	562
D3919	I.M. Heinonen, V. Ollilainen, E. Linkola, P. Varo, P. Koivistoinen	Carotenoids in Finnish Foods:  Vegetables, Fruits, and Berries	1989	Journal  of Agriculture and Food Chemistry	37	\N	655	659
D3901	F Khachik, G R Beecher, N F Whittaker	Separation, identification and quantification of the major carotenoid and chlorophyll constituents in extracts of several green vegetables by liquid chromatography	1986	J Agr Food Chem	34	\N	603	616
D3311	A. Hughes, R.C. Lindsay	Liquid chromatographic analysis of sugars and mannitol in cabbage and fermenting sauerkraut	1985	Journal of Food Science	50	6	1662	1667
D5008	Jan Stannard, Youn Soo Shim, Maria Kritsineli, Panagiota Labropoulou, Anthi Tsamtsouris	Fluoride Levels and Fluoride COntamination of Fruit Juices	1991	The Journal of Clinical Pediatric Dentistry	16	\N	38	40
D5202	V Chaudhary, F Weber	Dietary fiber ingredients obtained by processing brewer's dried grain	1990	Journal of Food Science	55	2	551	553
D5901	M. Soylak, M. Tuzen, I. Narin, H. Sari	Comparison of microwave, dry and wet digestion procedures for the determination of trace metal contents in spice samples produced in Turkey	2004	Journal of Food and Drug Analysis	12	3	254	258
D4602	P.J. McLaughlin, J. Weihrauch	Vitamin E content of foods	1979	Journal of the American Dietetic Association	75	6	647	665
D4682	K.U. Pradeep	Common Indian spices:  Nutrient composition, consumption and contribution to dietary value	1993	Plant Food for Human Nutrition	44	\N	137	148
D6342	L. Normen, L. Ellegard, H. Brants, P. Dutta, H. Andersson	A phytosterol database: Fatty foods consumed in Sweden and the Netherlands	2007	Jorunal of Food Composition and Analysis	20	\N	193	201
D7421	P. Perkins-Veazie	Carotenoids in watermelon and mango	2007	Acta Hort.	746	\N	259	264
D342	J. A. Bowers, J. Craig	Components of B6 in Turkey Breast Muscle	1978	Journal of Food Science	43	5	1619	\N
D463	H.T. Chan	Tropical Foods - the Chemistry & Biochemistry of Papaya	1979	Academic Press	1	\N	\N	\N
D501	O.S. Abou-Fadel, L.T. Miller	Vitamin retention, color and texture in thermally processed green beans and royal ann cherries packed in pouches and cans	1983	Journal of Food Science	48	3	920	923
D566	J. Leichtev, R. J. Bandoni	Nutrient Content of Mushrooms Grown in British Columbia	1980	Canadian Institute of Food Technology Journal	13	3	122	\N
D548	M. A. Amer, G. J. Brisson	Selenium in Human Food Stuffs Collected at Ste-Foy (Quebec) Food M.L.T.	1973	Canadian Institute of Food Technology Journal	6	3	184	\N
D429	P.E. Johnson, C. Straus, G.W. Evans	Metallocalorie Ratios for Copper, Iron and Zinc in Fruits and Vegetables	1977	Nutrition Reports International	15	4	469	\N
D3911	A T Ogunlesi, C Y Lee	Effect of thermal processing on the stereoisomerization of major carotenoids and vitamin A value of carrots	1979	Food Chem	4	\N	311	318
D3949	H. Muller	Determination of the carotenoid content in selected vegetables and fruit by HPLC and photoiode array detection	1997	Z. Lebensm Unters Forsch A	204	\N	88	94
D3842	T Philip, T S Chen	Quantitative analyses of major carotenoid fatty acid esters in fruits by liquid chromatography: Persimmon and Papaya.	1988	J. Food Science	53	6	1720	1722
D3843	F W Quackenbush	Reverse phase HPLC separation of cis- and trans-carotenoids and its application to beta-carotenes in food materials	1987	J Liq Chrom	10	\N	643	653
S4601	Campbell Soup Company	Campbell Soup Company	2008	\N	\N	\N	\N	\N
D3869	B.H. Chen	Studies on the stability of carotenoids in garland chrysanthemums (Ipomoea spp.) as affected by microwave and conventional heating	1995	J. Food Protection	55	\N	296	300
D3889	R J Bushway, A Yang, A M Yamani	Comparison of alpha- and beta-carotene content of supermarket versus roadside stand produce	1987	J Food Qual	9	\N	437	443
D3964	A.J. Speek, S. Speek-Saichua, W.H. P. Schreurs	Total carotenoid and B-carotene contents of Thai vegetables and the effect of processing.	1988	Food Chemistry	27	\N	245	257
D4070	N.J. Miller-Ihli	Atomic absorption and atomic emission spectrometry for the determination of the trace element content of selected fruits consumed in the United States	1996	Journal of Food Composition and Analysis	9	4	301	311
D5061	L. Englberger, W. Aalbersberg, P. Ravi, E. Bonnin, G.C. Marks, M.H. Fitzgerald, J. Elymore	Further analyses on Micronesian banana, taro, breadfruit and other foods for provitamin A carotenoids and minerals	2003	Journal of Food Composition and Analysis	16	\N	219	236
D5961	J.I. Rader, C. M. Weaver, G. Angyal	Use of a microbiological assay with tri-enzyme extraction for measurement of pre-fortification levels of folates in enriched cereal-grain products	1998	Food Chemistry	62	4	451	465
D4581	R.H. Matthews, P.R. Pehrsson, M. Farhat-Sabet	Sugar Content of Selected Foods:  Individual and Total Sugars	1987	Home Economics Research Report Number 48	\N	\N	\N	\N
D4862	R. Ayerza, Wayne Coates	An omega-3 fatty acid enriched chia diet: Influence on egg fatty acid composition, cholesterol and oil content	1999	Canadian Journal of Animal Science	79	\N	53	58
D7241	H.V. Kuhnlein	Vitamins A, D, and E in Canadian Arctic traditional food and adult diets	2006	Journal of Food Composition and Analysis	19	\N	495	506
D9381	R. Ayerza, Wayne Coates	Seed yield, oil content and fatty acid composition of three botanical sources of +-3 fatty acid planted in the Yungas ecosystem of tropical Argentina	2008	Tropical Science	47	4	183	187
D6523	M.F. Marcone	Starch properties of Amaranthus pumilus (seabeach amaranth): a threatened plant species with potential benefits for the breeding/amelioration of present Amaranthus cultivars	2001	Food Chemistry	73	\N	61	66
D6501	John T. Budin, William M. Breene, Daniel H. Putnam	Some compositional properties of seeds and oils of eight amaranthus species	1996	Journal of the American Oil Chemists' Society	73	4	475	481
D9801	KS Robbins, E-C Shin, RL Shewfelt, R R Eitenmiller, RB Pegg	Update on the healthful lipid constituents of commercially important tree nuts	2011	Journal of Agricultural and Food Chemistry	59	\N	12083	12092
S182	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	1982	\N	\N	\N	\N	\N
S202	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	1985	\N	\N	\N	\N	\N
S963	Produce Marketing Association (PMA)	Nutrient Content of Raspberries	1990	\N	\N	\N	\N	\N
S606	Nutrient Data Laboratory, ARS, USDA	Variability of  the sugar content of foods	1989	\N	Beltsville	MD	\N	\N
S239	Hillshire Farm & Kahn's	Nutrient Composition of Hillshire Farms and Kahn's Luncheon Meats	1999	\N	Cincinnati	OH	\N	\N
S282	Owens Country Sausage	Nutrient Composition of Owens Country Sausage Luncheon Meats	1999	\N	\N	\N	\N	\N
S1322	Nutrient Data Laboratory, ARS, USDA	Development/Verification of Nutrient Retention Values in Foods Prepared by Different Cooking Methods	1993	\N	Beltsville	MD	\N	\N
S2109	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 7h	2003	\N	Beltsville	MD	\N	\N
S18	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 1a	1998	\N	Beltsville	MD	\N	\N
S83	Hazelnut Marketing Board	Nutrient Content of Hazelnuts	1999	\N	Aurora	OR	\N	\N
S77	International Nut Council	Nutrient Content of Macadamia Nuts	1999	\N	\N	\N	\N	\N
S206	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	1998	\N	\N	\N	\N	\N
S1621	California Avocado Commission	California Avocado Commission data for avocados 1993-2001	1993	\N	\N	\N	\N	\N
S1662	Nutrient Data Laboratory, ARS, USDA	Food Analysis Laboratory and Control Center Folate Stability Study	2002	\N	Beltsville	MD	\N	\N
S2081	Ross/Abbott Laboratories	Ross	2003	\N	\N	\N	\N	\N
S2203	Nutrient Data Laboratory, ARS, USDA	USDA Commodity pickup 2001	2001	\N	Beltsville	MD	\N	\N
S3461	Nutrient Data Laboratory, ARS, USDA	Choline Study, Local pickup UNC, NFNAP	2003	\N	Beltsville	MD	\N	\N
S2683	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	2001	\N	\N	\N	\N	\N
S3241	Nutrition Coordinating Center, Univ. of Minnesota	NCC-Univ of Minnesota/Univ of Iowa Fluoride Demonstration Study	2005	\N	Minneapolis	MN	\N	\N
S6941	Kellogg, Co.	Kellogg Company Data	2011	\N	\N	\N	\N	\N
S3558	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program, Wave 10d	2006	\N	Beltsville	MD	\N	\N
S4523	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 11f	2007	\N	Beltsville	MD	\N	\N
S3549	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program, Wave 9l	2005	\N	Beltsville	MD	\N	\N
S4881	McDonalds	McDonald's Supplied Food Analyses	2008	\N	\N	\N	\N	\N
S4524	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 11a	2007	\N	Beltsville	MD	\N	\N
S5701	National Pork Board (NPB)	Pork Loin Study - not enhanced - 2008	2008	\N	\N	\N	\N	\N
S7561	Kellogg, Co.	Kellogg Company Vegetarian Products	2012	\N	\N	\N	\N	\N
S7584	Nutrient Data Laboratory, ARS, USDA	Label data obtained from product packages	2012	\N	\N	\N	\N	\N
S7924	Nutrient Data Laboratory, ARS, USDA	Label data obtained from product packages	2013	\N	\N	\N	\N	\N
S7921	Nature's Path Foods	Nature's Path company data	2013	\N	\N	\N	\N	\N
S8004	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 17f	2013	\N	Beltsville	MD	\N	\N
S8384	Post Foods	Post Foods Company Data	2015	\N	\N	\N	\N	\N
S8382	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 18f	2014	\N	Beltsville	MD	\N	\N
S986	University of Maine	Determination of alpha- and beta-carotene in fruit and vegetables by HPLC	1982	\N	\N	\N	\N	\N
S581	Produce Marketing Association (PMA)	Nutrient Content of Strawberries	1989	\N	\N	\N	\N	\N
S1033	Produce Marketing Association (PMA)	Nutrient Content of Kiwi	1983	\N	\N	\N	\N	\N
S605	Produce Marketing Association (PMA)	Nutrient Content of Onions	1984	\N	\N	\N	\N	\N
S622	Produce Marketing Association (PMA)	Nutrient Content of Squash	1991	\N	\N	\N	\N	\N
S252	Jerome Foods	Nutrient Composition of Jerome Foods/The Turkey Store Company Luncheon Meats	1999	\N	Barron	WI	\N	\N
S243	Jones	Nutrient Composition of Jones Dairy Farm Luncheon Meats	1999	\N	Fort Atkinson	WI	\N	\N
S2123	Nutrient Data Laboratory, ARS, USDA	Analyses of Selenium in Foods, Enviromental Trace Substances Research Center	1989	\N	Beltsville	MD	\N	\N
S1401	Nutrient Data Laboratory, ARS, USDA	Total dietary fiber in 104 foods	1992	\N	Beltsville	MD	\N	\N
S19	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 2a	1999	\N	Beltsville	MD	\N	\N
S208	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	1999	\N	\N	\N	\N	\N
S343	International Nut Council	Nutrient Content of Cashews	1999	\N	\N	\N	\N	\N
S1064	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 6c	2002	\N	Beltsville	MD	\N	\N
S2105	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 7d	2002	\N	Beltsville	MD	\N	\N
S2684	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	2002	\N	\N	\N	\N	\N
S2112	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 7k	2003	\N	Beltsville	MD	\N	\N
S1165	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 6n	2002	\N	Beltsville	MD	\N	\N
S3181	Almond Board of California	Nutrient content of almond butter, Almond Board of California	2005	\N	Modesto	CA	\N	\N
S2802	Nutrient Data Laboratory, ARS, USDA	AIAN NFNAP Shoshone-Bannock, Fort Hall, Idaho	2003	\N	Beltsville	MD	\N	\N
S3773	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 10h	2006	\N	Beltsville	MD	\N	\N
S4001	Nutrient Data Laboratory, ARS, USDA	Choline Study, Local pickup VPI, NFNAP	2006	\N	Beltsville	MD	\N	\N
S4201	National Cattlemen's Beef Association (NCBA)	Grass- fed Beef from Texas Tech University	2005	\N	Chicago	IL	\N	\N
S4481	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave a9b	2004	\N	Beltsville	MD	\N	\N
S4043	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 10j	2006	\N	Beltsville	MD	\N	\N
S5961	National Cattlemen's Beef Association (NCBA)	Nutrient Content of Beef	2008	\N	Chicago	IL	\N	\N
S3555	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program, Wave 10a	2005	\N	Beltsville	MD	\N	\N
S6261	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 13C	2009	\N	Beltsville	MD	\N	\N
S6641	Institute of Shortening and Edible Oils	Institute of Shortening and Edible Oils	2010	\N	\N	\N	\N	\N
S7922	General Mills Inc.	General Mills Company Data	2013	\N	\N	\N	\N	\N
S8001	Cornell Cooperative Extension, Seneca County	Cornell, NY Game Study 2012	2012	\N	Waterloo	NY	\N	\N
S8046	Nutrient Data Laboratory, ARS, USDA	Label info	2014	\N	Beltsville	MD	\N	\N
S1141	Produce Marketing Association (PMA)	Nutrient Content of Blueberry	1990	\N	\N	\N	\N	\N
S624	Produce Marketing Association (PMA)	Nutrient Content of Lettuce	1982	\N	\N	\N	\N	\N
S6481	The Quaker Oats, Co.	Quaker Oats product analyses	1979	\N	\N	\N	\N	\N
S642	National Cancer Institute (NCI), DHHS	Total dietary fiber content of selected foods	1992	\N	\N	\N	\N	\N
S8	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	1993	\N	\N	\N	\N	\N
S461	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 4e	2001	\N	Beltsville	MD	\N	\N
S1062	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 6a	2002	\N	Beltsville	MD	\N	\N
S2664	Kellogg, Co.	Kellogg Company Data	2004	\N	\N	\N	\N	\N
S3552	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program, Wave 9o	2005	\N	Beltsville	MD	\N	\N
S5881	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	2005	\N	\N	\N	\N	\N
S8383	Kellogg, Co.	Kellogg Company Vegetarian Products	2015	\N	\N	\N	\N	\N
S7022	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 15c	2010	\N	Beltsville	MD	\N	\N
S7321	Kraft Foods, Inc.	Whole wheat flour, soft wheat study, Ohio State/ARS	2010	\N	\N	\N	\N	\N
S7821	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 16g	2012	\N	Beltsville	MD	\N	\N
S7741	Post Foods	Post Foods Company Data	2012	\N	\N	\N	\N	\N
S8003	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 17e	2013	\N	Beltsville	MD	\N	\N
S8062	Kellogg, Co.	Kellogg Company Products	2014	\N	\N	\N	\N	\N
S8005	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 17g	2013	\N	Beltsville	MD	\N	\N
S8223	Hemp Oil Canada	Hemp Oil Canada analyses	2010	\N	\N	\N	\N	\N
S8222	HempNut, Inc	Copyright 1999-2000 HempNut, Inc. www.hempfood.com	2000	\N	\N	\N	\N	\N
S8282	Nature's Path Foods	Nature's Path company data	2014	\N	\N	\N	\N	\N
S8413	Mushroom Council	Vitamin D in Mushrooms	2015	\N	\N	\N	\N	\N
S8422	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 19a	2014	\N	Beltsville	MD	\N	\N
S8414	American Pistachio Growers	Nutrient composition of pistachio nuts	2015	\N	\N	\N	\N	\N
S743	Nutrient Data Laboratory, ARS, USDA	University of Idaho Contract No. 53-3198-8-29	1989	\N	Beltsville	MD	\N	\N
S620	Produce Marketing Association (PMA)	Nutrient Content of Lettuce	1991	\N	\N	\N	\N	\N
S4532	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 11h	2007	\N	Beltsville	MD	\N	\N
S39	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 0	1998	\N	Beltsville	MD	\N	\N
S86	California Pistachio Commission	Nutrient Content of Pistachio Nuts	1999	\N	\N	\N	\N	\N
S84	Nutrient Data Laboratory, ARS, USDA	Determination of the Tocopherol Content of Selected Foods	1992	\N	Beltsville	MD	\N	\N
S1166	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 6j	2002	\N	Beltsville	MD	\N	\N
S1065	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 6d	2002	\N	Beltsville	MD	\N	\N
S1504	National Sunflower Association	Phytochemicals in sunflower kernel (Helianthus annus L.) and selected tree nuts	2001	\N	Bismark	ND	\N	\N
S2221	Nutrient Data Laboratory, ARS, USDA	Industrial Oils, Shortenings and Margarines	2001	\N	Beltsville	MD	\N	\N
S2401	GFA Brands	GFA Brands Company Data	2004	\N	\N	\N	\N	\N
S4381	National Pork Board (NPB)	Pork Value Cuts 2007	2007	\N	\N	\N	\N	\N
S2901	American Italian Pasta Company	Trans fat in egg noodles	2004	\N	\N	MO	\N	\N
S3221	University of California	University of California, General Clinical research Center	2005	\N	\N	\N	\N	\N
S3541	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program, Wave 8g	2004	\N	Beltsville	MD	\N	\N
S3921	Campbell Soup Company	Campbell's Soup Company	2006	\N	\N	\N	\N	\N
S4344	Coco Lopez, Inc.	Nutrient content of Coco Lopez coconut cream	2007	\N	Miramar	FL	\N	\N
S6241	Kellogg, Co.	Kellogg Company Vegetarian Products	2009	\N	\N	\N	\N	\N
S8462	Atlantic Natural Foods	Atlantic Natural Foods Company Data	2009	\N	Nashville	NC	\N	\N
S7981	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 16i	2012	\N	Beltsville	MD	\N	\N
S8145	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 18a	2013	\N	Beltsville	MD	\N	\N
S8362	Kellogg, Co.	Kellogg Company Data	2015	\N	\N	\N	\N	\N
S8242	American Egg Board	American Egg Board - data on six egg products	2014	\N	\N	\N	\N	\N
S8410	Mushroom Council	Vitamin D in Mushrooms	2012	\N	\N	\N	\N	\N
S205	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	1988	\N	\N	\N	\N	\N
S69	Produce Marketing Association (PMA)	Nutrient Content of Raw Lemon/Juice	1990	\N	\N	\N	\N	\N
S405	Nutrient Data Laboratory, ARS, USDA	Monitoring Nutrient Content of Selected Key Foods	1992	\N	Beltsville	MD	\N	\N
S626	National Food Processors Association	NFPA Canned Vegetables	1995	\N	\N	\N	\N	\N
S226	Underwood	Nutrient Composition of The Pillsbury Company/Underwood Luncheon Meats	1999	\N	St. Paul	MN	\N	\N
S241	Jimmy Dean Foods	Nutrient Composition of Jimmy Dean Foods Luncheon Meats	1999	\N	Cordova	TN	\N	\N
S247	Schaller & Weber Inc.	Nutrient Composition of Schaller and Weber, Inc. Luncheon Meats	1999	\N	Long Island City	NY	\N	\N
S249	Ohio Agriculture & Devel Center, Wooster, Ohio, KC Institute OH0002	Nutrient Composition of Odom's Tennessee Pride Sausage, Inc. Luncheon Meats	1999	\N	Madison	TN	\N	\N
S141	Almond Board of California	Nutrient Content of Almonds	1999	\N	Modesto	CA	\N	\N
S21	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 2c	1999	\N	Beltsville	MD	\N	\N
S121	Nutrient Data Laboratory, ARS, USDA	NDL Report Vitamin E 1991	1991	\N	Beltsville	MD	\N	\N
S441	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 5k	2001	\N	Beltsville	MD	\N	\N
S503	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 5d	2001	\N	Beltsville	MD	\N	\N
S27	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 4c	2001	\N	Beltsville	MD	\N	\N
S1063	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 6b	2002	\N	Beltsville	MD	\N	\N
S2422	Kraft Foods, Inc.	Kraft Foods	2004	\N	\N	\N	\N	\N
S3761	Anheuser-Busch	Anheuser-Busch company data	2005	\N	\N	\N	\N	\N
S3554	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program, Wave 9q	2005	\N	Beltsville	MD	\N	\N
S4528	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 11e	2007	\N	Beltsville	MD	\N	\N
S4645	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 12f	2008	\N	Beltsville	MD	\N	\N
S6141	Western Pistachio Association	Nutrient composition of pistachio nuts	2009	\N	\N	\N	\N	\N
S5801	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Anlaysis Program Wave 12g	2008	\N	Beltsville	MD	\N	\N
S6602	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 13e	2009	\N	Beltsville	MD	\N	\N
S6603	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 13h	2009	\N	Beltsville	MD	\N	\N
S6604	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 14a	2009	\N	Beltsville	MD	\N	\N
S7241	AZChia	Personal communication with Wayne Coates, PhD of AZChia, professor emeritus at U Arizona	2011	\N	\N	\N	\N	\N
S7681	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 16c	2011	\N	Beltsville	MD	\N	\N
S7841	B&G Foods	Nutrient composition of Cream of Wheat cereal	2011	\N	\N	\N	\N	\N
S7984	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	2007	\N	\N	\N	\N	\N
S8146	Meat & Livestock Australia, North America	Australian Lamb, Meat & Livestock Australia and Texas Tech Univ	2014	\N	Washington	DC	\N	\N
S8164	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 18b	2014	\N	Beltsville	MD	\N	\N
S8412	Mushroom Council	Vitamin D in Mushrooms	2011	\N	\N	\N	\N	\N
S1167	Produce Marketing Association (PMA)	Nutrient Content of Pineapple	1981	\N	\N	\N	\N	\N
S604	Nutrient Data Laboratory, ARS, USDA	Investigation of the carbohydrate fraction of foods . . . raw, processed and prepared	1985	\N	Beltsville	MD	\N	\N
S237	Farmland	Nutrient Composition of Farmland Foods Luncheon Meats	1999	\N	Topeka	KS	\N	\N
S1069	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 6h	2002	\N	Beltsville	MD	\N	\N
S12	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	1997	\N	\N	\N	\N	\N
S87	Nutrient Data Laboratory, ARS, USDA	NDL Report Vitamin E 1997	1997	\N	Beltsville	MD	\N	\N
S2	National Cattlemen's Beef Association (NCBA)	Nutrient Content of Retail Beef Cuts with 1/8 inch Trim Beef	2000	\N	Chicago	IL	\N	\N
S421	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 4d	2001	\N	Beltsville	MD	\N	\N
S541	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 5a	2001	\N	Beltsville	MD	\N	\N
S661	Dahlgren & Company, Inc.	Sunflower analysis for Dahlgren & Company	1996	\N	Crookston	MN	\N	\N
S1783	Ministry of Public Health	Analysis of Salvia hispanica chia seed	2003	\N	\N	\N	\N	\N
S2621	California Salmon Council	Nutrient Analysis of King Salmon Samples Caught off of the California Coast	2000	\N	Folsom	CA	\N	\N
S2381	Nutrient Data Laboratory, ARS, USDA	American Indian/Alaskan Native Database - Navajo Foods 1999-2000	2000	\N	Beltsville	MD	\N	\N
S2110	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 7i	2003	\N	Beltsville	MD	\N	\N
S2703	National Cattlemen's Beef Association (NCBA)	Beef Value Cuts 2004	2004	\N	Chicago	IL	\N	\N
S8042	Beef + Lamb New Zealand Limited	New Zealand Beef + Lamb Study	2012	\N	Wellington	\N	\N	\N
S2111	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 7j	2003	\N	Beltsville	MD	\N	\N
S2782	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 8b	2004	\N	Beltsville	MD	\N	\N
S3767	Smuckers	Smuckers company data	2005	\N	\N	\N	\N	\N
S3764	George weston Bakeries, Inc.	George Watson company data	2005	\N	\N	\N	\N	\N
S3553	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program, Wave 9p	2005	\N	Beltsville	MD	\N	\N
S6401	Mushroom Council	National Food and Nutrient Analysis Program Wave 13d	2009	\N	Dublin	CA	\N	\N
S6702	National Cattlemen's Beef Association (NCBA)	NutrientContent of Beef	2009	\N	Chicago	IL	\N	\N
S6962	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 15a	2010	\N	Beltsville	MD	\N	\N
S7341	National Cattlemen's Beef Association (NCBA)	Nutrient Content of Beef	2010	\N	Chicago	IL	\N	\N
S7282	House Foods	House Foods Premium Tofu	2011	\N	\N	\N	\N	\N
S7781	Attune Foods, Inc.	Nutrient composition of Uncle Sam cereal	2007	\N	San Francisco	CA	\N	\N
S7988	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 17d	2013	\N	Beltsville	MD	\N	\N
S7987	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 17c	2013	\N	Beltsville	MD	\N	\N
S8182	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 18d	2014	\N	Beltsville	MD	\N	\N
S8409	Mushroom Council	Vitamin D in Mushrooms	2013	\N	\N	\N	\N	\N
S8502	Alaska Seafood Marketing Institute	Alaska Seafood Marketing Institute Sockeye Salmon Study	2013	\N	\N	\N	\N	\N
S183	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	1983	\N	\N	\N	\N	\N
S381	Nutrient Data Laboratory, ARS, USDA	Nutrient Analysis of Specialty Fruit Marketed in the United States	1987	\N	Beltsville	MD	\N	\N
S53	Produce Marketing Association (PMA)	Nutrient Content of Sweet Cherries	1990	\N	\N	\N	\N	\N
S615	Produce Marketing Association (PMA)	Nutrient Content of Eggplant	1991	\N	\N	\N	\N	\N
S618	Produce Marketing Association (PMA)	Nutrient Content of Carrot	1982	\N	\N	\N	\N	\N
S837	Nutrient Data Laboratory, ARS, USDA	Dietary Fiber and Sugars in Commonly Consumed Foods	1994	\N	Beltsville	MD	\N	\N
S225	Bar-S Foods	Nutrient composition of Bar-S Foods Company Luncheon Meats	1999	\N	Clinton	OK	\N	\N
S238	Gallo Salame	Nutrient Composition of Gallo Salame/Galileo Foods Luncheon Meats	1999	\N	San Lorenzo	CA	\N	\N
S242	Johnsonville Foods Co.	Nutrient Composition of Johnsonville Foods Company Luncheon Meats	1999	\N	Sheboygan Falls	WI	\N	\N
S2502	Malt-O-Meal Company	Malt-O-Meal Company Data	2004	\N	\N	\N	\N	\N
S3361	Masterfoods USA	MASTERFOODS USA 2006	2006	\N	Hackettstown	NJ	\N	\N
S2121	Nutrient Data Laboratory, ARS, USDA	 FCL-NDL Interlaboratory agreement- Data on Dietary fiber and sugar in foods	1995	\N	Beltsville	MD	\N	\N
S2113	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 8a	2003	\N	Beltsville	MD	\N	\N
S2644	National Cancer Institute (NCI), DHHS	Carotenoid content of fruits and vegetables	1988	\N	\N	\N	\N	\N
S2781	Nutrient Data Laboratory, ARS, USDA	Nutrient Analysis of Selected Foods, Shankman Labs	1985	\N	Beltsville	MD	\N	\N
S3521	McDonalds	Data supplied by McDonalds	2006	\N	\N	\N	\N	\N
S4303	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 9i	2005	\N	Beltsville	MD	\N	\N
S4661	Nutrient Data Laboratory, ARS, USDA	Proximates in Grass-fed Buffalo	2004	\N	Beltsville	MD	\N	\N
S4921	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 12a	2007	\N	Beltsville	MD	\N	\N
S5805	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Anlaysis Program Wave 13b	2009	\N	Beltsville	MD	\N	\N
S6743	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 14e	2010	\N	Beltsville	MD	\N	\N
S7021	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 15b	2010	\N	Beltsville	MD	\N	\N
S7041	Vitasoy	Nutritional Values for Select Vitasoy Products	2011	\N	\N	\N	\N	\N
S7401	American Egg Board	American Egg Board-Egg Nutrition Center Study	2005	\N	\N	\N	\N	\N
S7661	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 16b	2011	\N	Beltsville	MD	\N	\N
S7662	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 16t	2011	\N	Beltsville	MD	\N	\N
S1027	Produce Marketing Association (PMA)	Nutrient Content of Watermelon	1989	\N	\N	\N	\N	\N
S4841	Cherry Marketing Institute	Analysis of physical and chemical properties of cherries	1988	\N	Okemos	MI	\N	\N
S259	Hormel Foods Corp.	Nutrient Composition of Hormel Foods Corporation Luncheon Meats	1999	\N	\N	\N	\N	\N
S3242	Dawn Food Products	Dawn Food Products, Fiber Analysis	1990	\N	\N	\N	\N	\N
S3	University of Wisconsin - Madison, Muscle Biology Laboratory	Nutrient Content of Alternate Red Meat Products	2000	\N	Madison	WI	\N	\N
S25	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 4a	2001	\N	Beltsville	MD	\N	\N
S4802	Welch's	Nutrient content of Welch's purple and white grape juices	2008	\N	\N	\N	\N	\N
S4644	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 12e	2008	\N	Beltsville	MD	\N	\N
S3381	Smuckers	Label 2006	2006	\N	\N	\N	\N	\N
S4281	McCormick & Company, Inc.	Nutrient Analysis Reports for McCormick Spices and Herbs	1993	\N	\N	MD	\N	\N
S4541	Campbell Soup Company	Campbell's Soup Company	2007	\N	\N	\N	\N	\N
S7023	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 15d	2010	\N	Beltsville	MD	\N	\N
S7381	National Cattlemen's Beef Association (NCBA)	Nutrient Analysis of the Beef Alternative Merchandising (BAM) Cuts	2010	\N	Chicago	IL	\N	\N
S7361	Food Standards Australia New Zealand	NUTTAB 2010 Online Searchable Database	2011	\N	\N	\N	\N	\N
S7901	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 16f	2012	\N	Beltsville	MD	\N	\N
S7929	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 16h	2012	\N	Beltsville	MD	\N	\N
S7982	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 17b	2012	\N	Beltsville	MD	\N	\N
S7986	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 17a	2013	\N	Beltsville	MD	\N	\N
S8104	Northern Pulse Growers Association	2012 U.S. Pulse Quality Survey	2012	\N	Bismark	ND	\N	\N
S8342	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 18e	2014	\N	Beltsville	MD	\N	\N
S8322	Malt-O-Meal Company	MOM Brands company data for Malt-O-Meal cereals	2015	\N	\N	\N	\N	\N
S8403	Crop & Food Research, New Zealand	Nutrient composition of New Zealand Zespri SunGold kiwifruit	2015	\N	\N	\N	\N	\N
S8406	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 19b	2014	\N	Beltsville	MD	\N	\N
S201	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	1984	\N	\N	\N	\N	\N
S78	Produce Marketing Association (PMA)	Nutrient Content of Mushrooms	1982	\N	\N	\N	\N	\N
S2982	University  of Texas at Austin	Minerals in selected fruits and fruit juices	1975	\N	\N	\N	\N	\N
S1161	Produce Marketing Association (PMA)	Nutrient Content of Tangerines	1992	\N	\N	\N	\N	\N
S611	Produce Marketing Association (PMA)	Nutrient Content of Pepper	1987	\N	\N	\N	\N	\N
S5	Food and Drug Administration (FDA), DHHS	FDA Study on Labeling	1996	\N	\N	\N	\N	\N
S230	Carl Buddig	Nutrient Composition of Carl Buddig and Company Luncheon Meats	1999	\N	South Holland	IL	\N	\N
S227	Bil Mar Foods	Nutrient Composition of Bil-Mar Foods Luncheon Meats	1999	\N	Zeeland	MI	\N	\N
S3542	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program, Wave 8h	2004	\N	Beltsville	MD	\N	\N
S2661	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 8e	2004	\N	Beltsville	MD	\N	\N
S1067	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 6f	2002	\N	Beltsville	MD	\N	\N
S3281	Nutrient Data Laboratory, ARS, USDA	Analysis of low-fat and new food items	1993	\N	Beltsville	MD	\N	\N
S1381	National Cancer Institute (NCI), DHHS	NCI Contract No. 1-CN-SS442 - Carotenoids	1988	\N	\N	\N	\N	\N
S11	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	1996	\N	\N	\N	\N	\N
S6501	The Quaker Oats, Co.	Quaker Oats product analyses	1986	\N	\N	\N	\N	\N
S563	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 5e	2001	\N	Beltsville	MD	\N	\N
S682	Kellogg, Co.	Kellogg Company Data	2001	\N	\N	\N	\N	\N
S4241	Nutrient Data Laboratory, ARS, USDA	Ground chicken study - NFNAP Wave 9h	2005	\N	Beltsville	MD	\N	\N
S1701	Ocean Spray Cranberries, Inc.	Nutrient Analysis of Sweetened Dried Cranberries	2002	\N	\N	\N	\N	\N
S2921	Uncle Ben's	Niacin in parboiled rice	2005	\N	\N	\N	\N	\N
S3081	National Grain Sorghum Producers	Dietary fiber content of ground whole sorghum grain	2005	\N	\N	\N	\N	\N
S3770	Nestle USA, Inc.	Nestle company data	2006	\N	\N	\N	\N	\N
S3548	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program, Wave 9k	2005	\N	Beltsville	MD	\N	\N
S3544	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program, Wave 9d	2004	\N	Beltsville	MD	\N	\N
S4741	Maine Wild Blueberry Company, Inc	Nutritive value of frozen wild blueberries	2005	\N	Cherryfield	ME	\N	\N
S4527	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 11d	2007	\N	Beltsville	MD	\N	\N
S7601	Meat & Livestock Australia, North America	Australian Meat Study; Beef, lamb and veal	2012	\N	Washington	DC	\N	\N
S7701	Acadian Seaplants Limited	Acadian Seaplants Limited Company Data	2012	\N	Dartmount, NS, C	\N	\N	\N
S7930	Almond Board of California	Nutrient Content of Almonds	2013	\N	Modesto	CA	\N	\N
S8122	Nutrient Data Laboratory, ARS, USDA	Cornell, NY Game Study 2013	2013	\N	Beltsville	MD	\N	\N
S8102	Kellogg, Co.	Kellogg Company Vegetarian Products	2014	\N	\N	\N	\N	\N
S8123	United Sorghum Checkoff Program	United Sorghum Checkoff Program composition data	2014	\N	\N	\N	\N	\N
S8386	General Mills Inc.	General Mills Company Data	2015	\N	\N	\N	\N	\N
S8404	Ocean Spray Cranberries, Inc.	Nutrient composition of Ocean Spray products	2015	\N	\N	\N	\N	\N
S8408	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 19d	2015	\N	Beltsville	MD	\N	\N
S8482	American Egg Board	American Egg Board - data on four egg products	2015	\N	\N	\N	\N	\N
S73	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	1989	\N	\N	\N	\N	\N
S1024	Produce Marketing Association (PMA)	Nutrient Content of Cantaloupe	1985	\N	\N	\N	\N	\N
S1206	Nutrient Data Laboratory, ARS, USDA	Continued monitoring of the nutrient content of selected key foods, University of Georgia	1993	\N	Beltsville	MD	\N	\N
S244	Juniata Packing	Nutrient Composition of Juniata Packing Luncheon Meats	1999	\N	\N	\N	\N	\N
S224	Tyson Foods, Inc.	Nutrient Composition of Tyson Foods, Inc./Weaver Luncheon Meats	1999	\N	Springdale	AR	\N	\N
S2841	Alcohol and Tobacco Tax and Trade Bureau	Wine and malt beverage data from TTB	2004	\N	Beltsville	MD	\N	\N
S23	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 3b	2000	\N	Beltsville	MD	\N	\N
S3559	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program, Wave 10e	2006	\N	Beltsville	MD	\N	\N
S26	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 4b	2001	\N	Beltsville	MD	\N	\N
S566	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 5L	2001	\N	Beltsville	MD	\N	\N
S6281	ConAgra Foods, Inc.	Data from ConAgra on Rye Flour 2009	2009	\N	Omaha	NE	\N	\N
S2722	Nutrient Data Laboratory, ARS, USDA	Analysis of iron, thiamin, and niacin in unenriched white rice	2004	\N	Beltsville	MD	\N	\N
S2941	Mushroom Council	National Food and Nutrient Analysis Program Wave 9b	2004	\N	Dublin	CA	\N	\N
S7001	Quaker Oats Company - The Gatorade Company,  a unit of Pepsi Co.	Quaker Oats Company Data	2011	\N	\N	\N	\N	\N
S3941	National Pork Board (NPB)	Pork Study - Natural Cuts - 2006	2006	\N	\N	\N	\N	\N
S3557	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program, Wave 10c	2006	\N	Beltsville	MD	\N	\N
S4621	Pom Wonderful	Nutrient Composition of California Wonderful Pomegranates	2007	\N	\N	CA	\N	\N
S6441	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 13G	2009	\N	Beltsville	MD	\N	\N
S7081	Post Foods	Post Foods Company Data	2011	\N	\N	\N	\N	\N
S7562	Kellogg, Co.	Kellogg Company Products	2012	\N	\N	\N	\N	\N
S7541	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 15h	2011	\N	Beltsville	MD	\N	\N
S7985	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	2008	\N	\N	\N	\N	\N
S8082	Post Foods	Post Foods Company Data	2014	\N	\N	\N	\N	\N
S1163	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 6l	2002	\N	Beltsville	MD	\N	\N
S1031	Produce Marketing Association (PMA)	Nutrient Content of Avocado	1989	\N	\N	\N	\N	\N
S404	Nutrient Data Laboratory, ARS, USDA	Determination of the Nutrient Content of Selected Candies, Nuts, Condiments, Beverages & Vegetables	1985	\N	Beltsville	MD	\N	\N
S1023	Produce Marketing Association (PMA)	Nutrient Content of Banana	1990	\N	\N	\N	\N	\N
S235	Country Smoked Meats	Nutrient Composition of Country Smoked Meats, Inc. Luncheon Meats	1999	\N	Wooster	OH	\N	\N
S3774	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 10i	2006	\N	Beltsville	MD	\N	\N
S85	Pecan Shellers Association	Nutrient Content of Pecans	1999	\N	\N	\N	\N	\N
S561	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 5b	2000	\N	Beltsville	MD	\N	\N
S1121	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 5n	2001	\N	Beltsville	MD	\N	\N
S1041	Nutrient Data Laboratory, ARS, USDA	Nutrient composition of Oscar Mayer Luncheon Meats	2002	\N	Beltsville	MD	\N	\N
S1362	MGP Ingredients	Nutrient Analyses of Vital Wheat Gluten	2002	\N	Atchison	KS	\N	\N
S1068	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 6g	2002	\N	Beltsville	MD	\N	\N
S2141	Indian Health Service - Alaska	Nutrient Value of Alaska Foods	1993	\N	Anchorage	AK	\N	\N
S2961	Sunkist Growers, Inc.	Nutrient content of citrus fruits	2004	\N	\N	\N	\N	\N
S3021	Mizkan Americas, Inc	Nutrient content of different varieties of vinegar	2005	\N	\N	\N	\N	\N
S2922	The Vinegar Institute	Nutrient content of vinegars	2002	\N	Atlanta	GA	\N	\N
S5804	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Anlaysis Program Wave 13a	2008	\N	Beltsville	MD	\N	\N
S3561	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 8k	2004	\N	Beltsville	MD	\N	\N
S3683	Unilever	Carb Options Peanut Butter Spread Label Information	2006	\N	\N	\N	\N	\N
S3547	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program, Wave 9j	2005	\N	Beltsville	MD	\N	\N
S4501	Nutrient Data Laboratory, ARS, USDA	Salad dressing data	2007	\N	Beltsville	MD	\N	\N
S4561	Kellogg, Co.	Kellogg Company Data	2007	\N	\N	\N	\N	\N
S5802	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Anlaysis Program Wave 12h	2008	\N	Beltsville	MD	\N	\N
S4531	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 12b	2008	\N	Beltsville	MD	\N	\N
S6781	ConAgra Foods, Inc.	Data supplied by ConAgra on millet and sorghum	2010	\N	Omaha	NE	\N	\N
S8002	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 17h	2013	\N	Beltsville	MD	\N	\N
S8165	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 18c	2014	\N	Beltsville	MD	\N	\N
S6	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	1991	\N	\N	\N	\N	\N
S1026	Produce Marketing Association (PMA)	Nutrient Content of Honeydew	1985	\N	\N	\N	\N	\N
S1032	Produce Marketing Association (PMA)	Nutrient Content of Date	1986	\N	\N	\N	\N	\N
S608	Produce Marketing Association (PMA)	Nutrient Content of Tomato	1983	\N	\N	\N	\N	\N
S625	National Food Processors Association	NFPA Canned Vegetables	1993	\N	\N	\N	\N	\N
S619	Produce Marketing Association (PMA)	Nutrient Content of Broccoli	1982	\N	\N	\N	\N	\N
S281	Food Safety and Inspection Service (FSIS), USDA	Nutrient Composition of FSIS 96 NDL SLM Luncheon Meats	1999	\N	\N	\N	\N	\N
S245	Penn Valley Farms	Nutrient Composition of Penn Valley Farms, Ltd. Luncheon Meats	1999	\N	Chicago	IL	\N	\N
S7261	General Mills Inc.	General Mills Company Data compiled early 2011	2011	\N	\N	\N	\N	\N
S81	Nutrient Data Laboratory, ARS, USDA	Nutrient Analysis of Selected Foods, University of Georgia	1987	\N	Beltsville	MD	\N	\N
S2801	McDonalds	McDonald's Supplied Food Analyses	2004	\N	\N	\N	\N	\N
S7	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	1992	\N	\N	\N	\N	\N
S9	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	1994	\N	\N	\N	\N	\N
S482	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 5i	2001	\N	Beltsville	MD	\N	\N
S941	Hammons Products Company	Nutrient Analysis of Black Walnuts	2002	\N	Stockton	MO	\N	\N
S1164	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 6m	2002	\N	Beltsville	MD	\N	\N
S1343	Nutrient Data Laboratory, ARS, USDA	Analysis of carotenoids in selected foods.	2002	\N	Beltsville	MD	\N	\N
S1921	Mead Johnson	Mead Johnson Infant Formula 2003	2003	\N	\N	\N	\N	\N
S1581	Nutrient Data Laboratory, ARS, USDA	Variety Meats All Food Groups	2003	\N	Beltsville	MD	\N	\N
S2142	National Sunflower Association	National Sunflower Association Analysis of Vitamin E in Dry Roasted and Oil Roasted Sunflower Seeds	2003	\N	Bismark	ND	\N	\N
S3765	H.J. Heinz, Co.	Heinz company data	2005	\N	\N	\N	\N	\N
S4261	Soyfood Assciation of North America	Soymilk Nutrient Composition Data	2007	\N	Washington	DC	\N	\N
S4525	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 11b	2007	\N	Beltsville	MD	\N	\N
S6881	National Pork Board (NPB)	Pork Loin-not enhanced Phase2 2009	2009	\N	\N	\N	\N	\N
S7582	General Mills Inc.	General Mills Company Data	2012	\N	\N	\N	\N	\N
S7722	The Quaker Oats, Co.	Quaker Oats Company Data	2012	\N	\N	\N	\N	\N
S8262	AZChia	Amino acid analysis of goji berries	2012	\N	\N	\N	\N	\N
S8411	Mushroom Council	Vitamin D in Mushrooms	2014	\N	\N	\N	\N	\N
S1181	Produce Marketing Association (PMA)	Nutrient Content of Papaya	1984	\N	\N	\N	\N	\N
S617	Produce Marketing Association (PMA)	Nutrient Content of Radish	1982	\N	\N	\N	\N	\N
S627	National Food Processors Association	NFPA Canned Vegetables	1994	\N	\N	\N	\N	\N
S1202	Nutrient Data Laboratory, ARS, USDA	Nutrient content of ethnic and geographic specific foods, Southern Testing and Research Laboratories	1995	\N	Beltsville	MD	\N	\N
S233	Citterio USA Corp.	Nutrient Composition of Citterio USA Corporation Luncheon Meats	1999	\N	Freeland	PA	\N	\N
S221	National Cattlemen's Beef Association (NCBA)	Beef study, Texas A&M University	1992	\N	Chicago	IL	\N	\N
S1222	Nutrient Data Laboratory, ARS, USDA	Analysis of fat-free and reduced fat food items, University of Georgia	1992	\N	Beltsville	MD	\N	\N
S101	California Pistachio Commission	Nutrition Labeling Database for California Pistachios	1994	\N	\N	\N	\N	\N
S363	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 5c	2001	\N	Beltsville	MD	\N	\N
S565	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 5h	2001	\N	Beltsville	MD	\N	\N
S702	The Quaker Oats, Co.	Quaker Oats Company Data	2001	\N	\N	\N	\N	\N
S1221	Flax Council of Canada	Nutrient Analysis of Flaxseed by Medallion Lab	1997	\N	Winnipeg	\N	\N	\N
S2662	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 8f	2004	\N	Beltsville	MD	\N	\N
S1162	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 6k	2002	\N	Beltsville	MD	\N	\N
S2106	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 7e	2003	\N	Beltsville	MD	\N	\N
S1122	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 5o	2001	\N	Beltsville	MD	\N	\N
S2104	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 7c	2002	\N	Beltsville	MD	\N	\N
S3741	A&M Cookie Company Canada - Archway	A&M Cofokie Company, Canada - Archway Data	2005	\N	Kitchener, ON	\N	\N	\N
S2102	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 7a	2002	\N	Beltsville	MD	\N	\N
S3742	ConAgra, Inc.	ConAgra Company Data	2005	\N	Omaha	NE	\N	\N
S3682	Nutrient Data Laboratory, ARS, USDA	Nutrient Content of Agave	2002	\N	Beltsville	MD	\N	\N
S3641	Mushroom Council	Mushroom Council Vitamin D Study	2006	\N	Dublin	CA	\N	\N
S3550	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program, Wave 9m	2005	\N	Beltsville	MD	\N	\N
S4643	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 12d	2008	\N	Beltsville	MD	\N	\N
S5665	National Pork Board (NPB)	Nutrient content of ground pork	2007	\N	\N	\N	\N	\N
S6741	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 14c	2009	\N	Beltsville	MD	\N	\N
S6541	Kellogg, Co.	Kellogg Company Data	2010	\N	\N	\N	\N	\N
S6605	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 14b	2010	\N	Beltsville	MD	\N	\N
S7441	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 8j	2004	\N	Beltsville	MD	\N	\N
S7861	Kellogg, Co.	Kellogg Company Data, received late 2012	2012	\N	\N	\N	\N	\N
S7983	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	2006	\N	\N	\N	\N	\N
S8061	The Quaker Oats, Co.	Quaker Oats Company Data	2014	\N	\N	\N	\N	\N
S2985	Castle and Cooke (Dole)	Select nutrients in pineapple fruit and juice	1979	\N	\N	\N	\N	\N
S204	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	1987	\N	\N	\N	\N	\N
S1183	Produce Marketing Association (PMA)	Nutrient Content of Apple	1990	\N	\N	\N	\N	\N
S1821	Utah State University	Composition of Foods	1980	\N	\N	\N	\N	\N
S228	Bridgford	Nutrient Composition of Bridgford Foods of Illinois, Inc. Luncheon Meats	1999	\N	Chicago	IL	\N	\N
S222	Fred Usinger Inc.	Nutrient Composition of Fred Usinger, Inc. Luncheon Meats	1999	\N	Milwaukee	WI	\N	\N
S1203	National Institutes of Health (NIH)	Carotenoid analyses of U.S. foods, Food Composition Laboratory	1997	\N	\N	\N	\N	\N
S6301	USDA-ARS Tropical Agricultural Research Station	Nutrient content of mamey sapote fruit grown in Puerto Rico	2009	\N	\N	\N	\N	\N
S74	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	1990	\N	\N	\N	\N	\N
S80	Mushroom Council	Nutrient Content of Mushrooms	1999	\N	Dublin	CA	\N	\N
S481	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 5g	2001	\N	Beltsville	MD	\N	\N
S582	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 5m	2001	\N	Beltsville	MD	\N	\N
S1001	Southeastern Regional Lab (ARS South Atlantic Area), Georgia, USDA	Protein hydrolysis studies on tree nuts	1981	\N	Athens	GA	\N	\N
S1341	California Prune Board	Carotenoid Analysis of Prunes	2000	\N	\N	\N	\N	\N
S2103	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 7b	2002	\N	Beltsville	MD	\N	\N
S2202	Nutrient Data Laboratory, ARS, USDA	Nutrient Content of Legumes and Some Cereal and Baked Products	1984	\N	Beltsville	MD	\N	\N
S2107	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 7f	2003	\N	Beltsville	MD	\N	\N
S4101	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 8d	2004	\N	Beltsville	MD	\N	\N
S2702	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 8i	2004	\N	Beltsville	MD	\N	\N
S3061	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 9f	2004	\N	Beltsville	MD	\N	\N
S3301	Nutrient Data Laboratory, ARS, USDA	Ham and ham products, NFNAP	2003	\N	Beltsville	MD	\N	\N
S4061	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	2004	\N	\N	\N	\N	\N
S3841	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	2003	\N	\N	\N	\N	\N
S2741	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 9a	2004	\N	Beltsville	MD	\N	\N
S4901	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 12x repeats	2008	\N	Beltsville	MD	\N	\N
S4642	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 12c	2008	\N	Beltsville	MD	\N	\N
S6961	The Quaker Oats, Co.	Quaker company data	2011	\N	\N	\N	\N	\N
S7181	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 15e	2011	\N	Beltsville	MD	\N	\N
S7421	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 15f	2011	\N	Beltsville	MD	\N	\N
S7926	National Cattlemen's Beef Association (NCBA)	Nutrient Content of Beef	2012	\N	Chicago	IL	\N	\N
S7961	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 16k	2012	\N	Beltsville	MD	\N	\N
S7941	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 16j	2012	\N	Beltsville	MD	\N	\N
S7942	Kamut International, Ltd.	Nutrient Composition of Kamut	2013	\N	\N	\N	\N	\N
S8045	General Mills Inc.	General Mills Company Data	2014	\N	\N	\N	\N	\N
S402	National Food Processors Association	Investigations to Determine Nutrient Content of Selected Fruits and Vegetables	1980	\N	\N	\N	\N	\N
S616	Produce Marketing Association (PMA)	Nutrient content of Broccoflower	1992	\N	\N	\N	\N	\N
S822	Kraft Foods, Inc.	Kraft Study, Hazelton Lab	1992	\N	\N	\N	\N	\N
S248	Sutton Place Gourmet	Nutrient Composition of Sutton Place Gourmet Luncheon Meats	1999	\N	\N	\N	\N	\N
S231	Carando Gourmet	Nutrient Composition of Carando Gourmet Foods Corporation Luncheon Meats	1999	\N	Springfield	MA	\N	\N
S2581	Nutrient Data Laboratory, ARS, USDA	Fiber Content of Selected Foods	1987	\N	Beltsville	MD	\N	\N
S79	California Walnut Commission	Nutrient Content of Walnuts	1999	\N	Modesto	CA	\N	\N
S22	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 3a	2000	\N	Beltsville	MD	\N	\N
S82	Nutrient Data Laboratory, ARS, USDA	Determination of the Tocopherol Content of Selected Foods	1990	\N	Beltsville	MD	\N	\N
S502	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 5j	2001	\N	Beltsville	MD	\N	\N
S562	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 4f	2000	\N	Beltsville	MD	\N	\N
S14	National Cattlemen's Beef Association (NCBA)	Nutrient Content of Ground Beef	2000	\N	\N	\N	\N	\N
S961	National Sunflower Association	Nutrient Analysis of Oil Roasted Sunflower Seeds	2000	\N	Bismark	ND	\N	\N
S1562	Association of Spanish Exporters of Table Olives	Analysis of Spanish Olives	1993	\N	\N	\N	\N	\N
S2682	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	2000	\N	\N	\N	\N	\N
S3743	Continental Mills, Krusteaz	Continental Mills company data	2005	\N	\N	\N	\N	\N
S4522	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 11g	2007	\N	Beltsville	MD	\N	\N
S3481	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 8c	2004	\N	Beltsville	MD	\N	\N
S3501	Mizkan Americas, Inc	Nutrient analysis of vinegar	2006	\N	\N	\N	\N	\N
S3766	Pillsbury Co.	Pillsbury company data	2005	\N	\N	\N	\N	\N
S3402	California Strawberry Commission	Analyses for nutrition labeling of strawberries	2005	\N	Watsonville	CA	\N	\N
S3551	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program, Wave 9n	2005	\N	Beltsville	MD	\N	\N
S3901	The Quaker Oats, Co.	Quaker Oats Company Data	2006	\N	\N	\N	\N	\N
S4021	Vitasoy	Nutritional Values for Select Vitasoy Products	2006	\N	\N	\N	\N	\N
S3546	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program, Wave 9h	2005	\N	Beltsville	MD	\N	\N
S5803	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Anlaysis Program Wave 12i	2008	\N	Beltsville	MD	\N	\N
S7665	General Mills Inc.	General Mills Company Data compiled late 2011	2011	\N	\N	\N	\N	\N
S7521	Natlional Fisheries Institute	National Food and Nutrient Analysis Program Wave 15s	2011	\N	McLean	VA	\N	\N
S7761	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 16e	2012	\N	Beltsville	MD	\N	\N
S7928	Alliance for Potato Research & Education	Alliance for Potato Research & Eucation	2013	\N	\N	\N	\N	\N
S7944	Campbell Soup Company	Campbell2013	2013	\N	\N	\N	\N	\N
S8407	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 19c	2015	\N	Beltsville	MD	\N	\N
S203	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	1986	\N	\N	\N	\N	\N
S641	National Food Processors Association	NFPA Canned Vegetables	1992	\N	\N	\N	\N	\N
S406	Nutrient Data Laboratory, ARS, USDA	Nutritional Evaluation of the Solid and Liquid Portion of Selected Canned Fruits and Vegetables	1986	\N	Beltsville	MD	\N	\N
S251	Bob Evans Farms	Nutrient Composition of Bob Evans Farms Luncheon Meats	1999	\N	Columbus	OH	\N	\N
S2122	Nutrient Data Laboratory, ARS, USDA	Analyses of Selenium in Foods, Hazleton Laboratories	1989	\N	Beltsville	MD	\N	\N
S10	Food and Drug Administration (FDA), DHHS	FDA Total Diet Study	1995	\N	\N	\N	\N	\N
S20	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 2b	1999	\N	Beltsville	MD	\N	\N
S564	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 5f	2001	\N	Beltsville	MD	\N	\N
S1082	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 6i	2002	\N	Beltsville	MD	\N	\N
S1861	Mead Johnson	Lipil infant formula	2003	\N	\N	\N	\N	\N
S922	General Mills Inc.	General Mills Company Data	2005	\N	\N	\N	\N	\N
S1742	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program - Industrial Flour	2000	\N	Beltsville	MD	\N	\N
S1066	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 6e	2002	\N	Beltsville	MD	\N	\N
S2108	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 7g	2003	\N	Beltsville	MD	\N	\N
S4141	Almond Board of California	Nutrient content of almonds	2006	\N	Modesto	CA	\N	\N
S3942	National Pork Board (NPB)	Pork Study - Enhanced Cuts - 2006	2006	\N	\N	\N	\N	\N
S4526	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 11c	2007	\N	Beltsville	MD	\N	\N
S6362	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 13x	2009	\N	Beltsville	MD	\N	\N
S6742	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 14d	2010	\N	Beltsville	MD	\N	\N
S7042	Kellogg, Co.	Kellogg Company Vegetarian Products	2011	\N	\N	\N	\N	\N
S7301	California Table Grape Commission	Vitamin C in grapes	1999	\N	\N	\N	\N	\N
S7621	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 16a	2011	\N	Beltsville	MD	\N	\N
S7481	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 15g	2011	\N	Beltsville	MD	\N	\N
S7721	Nutrient Data Laboratory, ARS, USDA	National Food and Nutrient Analysis Program Wave 16d	2012	\N	Beltsville	MD	\N	\N
S7801	ACH Food Companies	Study of phytosterols in corn oil from the manufacturer	2012	\N	Cordova	TN	\N	\N
S7927	Malt-O-Meal Company	MOM Brands company data for Malt-O-Meal cereals	2013	\N	\N	\N	\N	\N
S7923	ConAgra Foods, Inc.	ConAgra Foods - Company Data	2012	\N	Omaha	NE	\N	\N
S8142	National Cattlemen's Beef Association (NCBA)	National Cattlemen's Beef Assoc (NCBA)/North American Meat Assoc (NAMA) Special Fed Veal Study	2013	\N	Chicago	IL	\N	\N
S8144	National Cattlemen's Beef Association (NCBA)	Ground Beef Study	2014	\N	Chicago	IL	\N	\N
S8103	Northern Pulse Growers Association	2011 U.S. Pulse Quality Survey	2011	\N	Bismark	ND	\N	\N
\.


--
-- Data for Name: sourcesofdatalink; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sourcesofdatalink (ndbnumber, nutrientnumber, datasourceid) FROM stdin;
\.


--
-- Data for Name: weight; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.weight (ndbnumber, sequencenumber, amount, measuredescription, gramweight, numberofdatapoints, standarddeviation) FROM stdin;
01001	1	1	pat (1"" sq, 1/3"" high)	5.0	\N	\N
01001	2	1	tbsp	14.2	\N	\N
01001	3	1	cup	227	\N	\N
01001	4	1	stick	113	\N	\N
01002	1	1	pat (1"" sq, 1/3"" high)	3.8	\N	\N
01002	2	1	tbsp	9.4	\N	\N
01002	3	1	cup	151	\N	\N
01002	4	1	stick	76	\N	\N
01003	1	1	tbsp	12.8	\N	\N
01003	2	1	cup	205	\N	\N
01004	1	1	oz	28.35	\N	\N
01004	2	1	cubic inch	17	\N	\N
01004	3	1	cup, crumbled, not packed	135	\N	\N
01005	1	1	cup, diced	132	\N	\N
01005	2	1	cup, shredded	113	\N	\N
01005	3	1	oz	28.35	\N	\N
01005	4	1	cubic inch	17	\N	\N
01005	5	1	slice (1 oz)	28	\N	\N
01006	1	1	oz	28.35	\N	\N
01006	2	1	cup, sliced	144	\N	\N
01006	3	1	cup, melted	240	\N	\N
01006	4	1	cubic inch	17	\N	\N
01006	5	1	package (4.5 oz)	128	\N	\N
01007	1	1	oz	28.35	\N	\N
01007	2	1	cup	246	\N	\N
01007	3	1	cubic inch	17	\N	\N
01007	4	1	wedge (1.33 oz)	38	\N	\N
01008	1	1	oz	28.35	\N	\N
01009	1	1	cup, diced	132	\N	\N
01009	2	1	cup, melted	244	\N	\N
01009	3	1	cup, shredded	113	\N	\N
01009	4	1	oz	28.35	\N	\N
01009	5	1	cubic inch	17	\N	\N
01009	6	1	slice (1 oz)	28	\N	\N
01010	1	1	oz	28.35	\N	\N
01011	1	1	cup, diced	132	\N	\N
01011	2	1	cup, shredded	113	\N	\N
01011	3	1	oz	28.35	\N	\N
01011	4	1	cubic inch	17	\N	\N
01011	5	1	slice (1 oz)	28	\N	\N
01012	1	4	oz	113	\N	\N
01012	2	1	cup, large curd (not packed)	210	\N	\N
01012	3	1	cup, small curd (not packed)	225	\N	\N
01013	1	4	oz	113	\N	\N
01013	2	1	cup (not packed)	226	\N	\N
01014	1	1	cup (not packed)	145	\N	\N
01014	2	4	oz	113	\N	\N
01015	1	4	oz	113	\N	\N
01015	2	1	cup (not packed)	226	\N	\N
01016	1	4	oz	113	\N	\N
01016	2	1	cup (not packed)	226	\N	\N
01017	1	1	tbsp	14.5	\N	\N
01017	2	1	cup	232	\N	\N
01017	3	1	tbsp, whipped	10.0	\N	\N
01017	4	1	oz	28.35	\N	\N
01017	5	1	cubic inch	16	\N	\N
01017	6	1	package, small (3 oz)	85	\N	\N
01018	1	1	oz	28.35	\N	\N
01018	2	1	package (7 oz)	198	\N	\N
01019	1	1	cup, crumbled	150	\N	\N
01019	2	1	oz	28.35	\N	\N
01019	3	1	cubic inch	17	\N	\N
01019	4	1	wedge (1.33 oz)	38	\N	\N
01020	1	1	cup, diced	132	\N	\N
01020	2	1	cup, shredded	108	\N	\N
01020	3	1	oz	28.35	\N	\N
01020	4	1	cubic inch	15.0	\N	\N
01020	5	1	slice (1 oz)	28	\N	\N
01020	6	1	package (8 oz)	227	\N	\N
01021	1	1	oz	28.35	\N	\N
01021	2	1	package (8 oz)	227	\N	\N
01022	1	1	oz	28.35	\N	\N
01022	2	1	package (7 oz)	198	\N	\N
01023	1	1	oz	28.35	\N	\N
01023	2	1	slice (1 oz)	28	\N	\N
01023	3	1	cubic inch	15.0	\N	\N
01023	4	1	cup, diced	132	\N	\N
01023	5	1	cup, shredded	108	\N	\N
01023	6	1	package (6 oz)	170	\N	\N
01024	1	1	cup	134	\N	\N
01024	2	1	oz	28.35	\N	\N
01024	3	1	cubic inch	18	\N	\N
01024	4	1	box	113	\N	\N
01024	5	1	package (8 oz)	227	\N	\N
01025	1	1	cup, diced	132	\N	\N
01025	2	1	cup, shredded	113	\N	\N
01025	3	1	oz	28.35	\N	\N
01025	4	1	cubic inch	17	\N	\N
01025	5	1	slice (1 oz)	28	\N	\N
01025	6	1	package (6 oz)	170	\N	\N
01026	1	1	cup, shredded	112	\N	\N
01026	2	1	oz	28.35	\N	\N
01026	3	6	slices	170	\N	\N
01027	1	1	oz	28.35	\N	\N
01027	2	1	cubic inch	18	\N	\N
01028	1	1	oz	28.35	\N	\N
01029	1	1	cup, diced	132	\N	\N
01029	2	1	cup, shredded	113	\N	\N
01029	3	1	oz	28.35	\N	\N
01029	4	1	cubic inch	18	\N	\N
01029	5	1	slice (1 oz)	28	\N	\N
01030	1	1	cup, diced	132	\N	\N
01030	2	1	cup, shredded	113	\N	\N
01030	3	1	oz	28.35	\N	\N
01030	4	1	cubic inch	18	\N	\N
01030	5	1	slice (1 oz)	28	\N	\N
01030	6	1	package (6 oz)	170	\N	\N
01031	1	1	oz	28.35	\N	\N
01031	2	1	package (3 oz)	85	\N	\N
01032	1	1	cup	100	\N	\N
01032	2	1	tbsp	5.0	\N	\N
01032	3	1	oz	28.35	\N	\N
01033	1	1	oz	28.35	\N	\N
01033	2	1	cubic inch	10.3	\N	\N
01033	3	5	package (5 oz)	142	\N	\N
01034	1	1	cup, diced	132	\N	\N
01034	2	1	cup, shredded	113	\N	\N
01034	3	1	oz	28.35	\N	\N
01034	4	1	cubic inch	17	\N	\N
01034	5	1	slice (1 oz)	28	\N	\N
01034	6	1	package (6 oz)	170	\N	\N
01035	1	1	cup, diced	132	\N	\N
01035	2	1	oz	28.35	\N	\N
01035	3	1	cubic inch	17	\N	\N
01035	4	1	slice (1 oz)	28	\N	\N
01035	5	1	package (6 oz)	170	\N	\N
01036	1	0.5	cup	124	\N	\N
01036	2	1	cup	246	\N	\N
01037	1	0.5	cup	124	\N	\N
01037	2	1	oz	28.35	\N	\N
01037	3	1	cup	246	\N	\N
01038	1	1	oz	28.35	\N	\N
01038	2	5	package (5 oz)	142	\N	\N
01039	1	1	oz	28.35	\N	\N
01039	2	1	package (3 oz)	85	\N	\N
01040	1	1	cup, diced	132	\N	\N
01040	2	1	cup, melted	244	\N	\N
01040	3	1	cup, shredded	108	\N	\N
01040	4	1	oz	28.35	\N	\N
01040	5	1	cubic inch	15.0	\N	\N
01040	6	1	slice (1 oz)	28	\N	\N
01041	1	1	oz	28.35	\N	\N
01041	2	1	package (6 oz)	170	\N	\N
01042	1	1	oz	28.35	\N	\N
01042	2	1	slice (1 oz)	28	\N	\N
01042	3	1	slice (3/4 oz)	21	\N	\N
01042	4	1	cubic inch	18	\N	\N
01042	5	1	cup, shredded	113	\N	\N
01042	6	1	cup, diced	140	\N	\N
01042	7	1	cup, melted	244	\N	\N
01043	1	1	cup, diced	140	\N	\N
01043	2	1	cup, melted	244	\N	\N
01043	3	1	cup, shredded	113	\N	\N
01043	4	1	oz	28.35	\N	\N
01043	5	1	cubic inch	18	\N	\N
01043	6	1	slice (3/4 oz)	21	\N	\N
01044	1	1	cup, diced	140	\N	\N
01044	2	1	cup, shredded	113	\N	\N
01044	3	1	oz	28.35	\N	\N
01044	4	1	cubic inch	18	\N	\N
01044	5	1	slice (3/4 oz)	21	\N	\N
01045	1	1	oz	28.35	\N	\N
01045	2	1	package (8 oz)	227	\N	\N
01046	1	1	cup	113	\N	\N
01046	2	1	oz	28.35	\N	\N
01046	3	1	slice (3/4 oz)	21	\N	\N
01046	4	1	package (8 oz)	227	\N	\N
01047	1	1	oz	28.35	\N	\N
01047	2	1	package (8 oz)	227	\N	\N
01048	1	1	cup, diced	140	\N	\N
01048	2	1	cup	244	\N	\N
01048	3	1	jar (5 oz)	128	\N	\N
01048	4	1	cubic inch	18	\N	\N
01048	5	1	jar (5 oz)	142	\N	\N
01048	6	1	slice	34	\N	\N
01048	7	1	slice, thin	14.0	\N	\N
01049	1	1	fl oz	30.2	\N	\N
01049	2	1	tbsp	15.0	\N	\N
01049	3	1	cup	242	\N	\N
01049	4	1	container, individual (.5 fl oz)	15.0	\N	\N
01050	1	1	fl oz	30.0	\N	\N
01050	2	1	tbsp	15.0	\N	\N
01050	3	1	cup	240	\N	\N
01050	4	1	container, individual	11.1	\N	\N
01052	1	1	cup, whipped	120	\N	\N
01052	2	1	cup, fluid (yields 2 cups whipped)	239	\N	\N
01052	3	1	tbsp	15.0	\N	\N
01053	1	1	cup, whipped	120	\N	\N
01053	2	1	cup, fluid (yields 2 cups whipped)	238	\N	\N
01053	3	1	tbsp	15.0	\N	\N
01053	4	1	fl oz	29.8	\N	\N
01054	1	1	cup	60	\N	\N
01054	2	1	tbsp	3.0	\N	\N
01055	1	1	tbsp	15.0	\N	\N
01055	2	1	cup	242	\N	\N
01056	1	1	tbsp	12.0	\N	\N
01056	2	1	cup	230	\N	\N
01057	1	1	cup	254	\N	\N
01057	2	1	fl oz	31.8	\N	\N
01057	3	1	quart	1016	\N	\N
01058	1	1	tbsp	12.0	\N	\N
01058	2	1	cup	235	\N	\N
01059	1	1	cup	244	\N	\N
01059	2	1	quart	976	\N	\N
01060	1	1	cup	244	\N	\N
01060	2	1	fl oz	30.5	\N	\N
01060	3	1	quart	976	\N	\N
01061	1	1	serving	19	1	\N
01067	1	1	container, individual	15.0	\N	\N
01067	2	1	fl oz	30.0	\N	\N
01067	3	1	cup	240	\N	\N
01067	4	0.5	cup	120	\N	\N
01068	1	1	container, individual	15.0	\N	\N
01068	2	0.5	cup	120	\N	\N
01069	1	1	cup	94	\N	\N
01069	2	1	tsp	2.0	\N	\N
01069	3	1	packet	3.0	\N	\N
01070	1	1.5	oz	43	\N	\N
01070	2	1	portion, amount to make 1 tbsp	1.3	\N	\N
01071	1	1	cup	80	\N	\N
01071	2	1	tbsp	4.0	\N	\N
01071	3	1	package yields	160	\N	\N
01072	1	1	cup	70	\N	\N
01072	2	1	tbsp	4.0	\N	\N
01073	1	1	cup	75	\N	\N
01073	2	1	tbsp	4.0	\N	\N
01074	1	1	oz	28.35	\N	\N
01074	2	1	cup	230	\N	\N
01076	1	1	cup	244	\N	\N
01076	2	1	quart	976	\N	\N
01077	1	1	cup	244	\N	\N
01077	2	1	fl oz	30.5	\N	\N
01077	3	1	tbsp	15	\N	\N
01077	4	1	quart	976	\N	\N
01078	1	1	cup	244	\N	\N
01078	2	1	quart	976	\N	\N
01079	1	1	cup	244	\N	\N
01079	2	1	fl oz	30.5	\N	\N
01079	3	1	quart	976	\N	\N
01080	1	1	cup	245	\N	\N
01080	2	1	quart	980	\N	\N
01081	1	1	cup	246	\N	\N
01081	2	1	quart	984	\N	\N
01082	1	1	cup	244	\N	\N
01082	2	1	fl oz	30.5	\N	\N
01082	3	1	quart	976	\N	\N
01083	1	1	cup	245	\N	\N
01083	2	1	quart	980	\N	\N
01084	1	1	cup	246	\N	\N
01084	2	1	quart	984	\N	\N
01085	1	1	cup	245	\N	\N
01085	2	1	fl oz	30.6	\N	\N
01085	3	1	quart	980	\N	\N
01086	1	1	cup	245	\N	\N
01086	2	1	fl oz	30.6	\N	\N
01086	3	1	quart	980	\N	\N
01087	1	1	cup	246	\N	\N
01087	2	1	quart	984	\N	\N
01088	1	1	cup	245	\N	\N
01088	2	1	fl oz	30.6	\N	\N
01088	3	1	quart	980	\N	\N
01089	1	1	cup	244	\N	\N
01089	2	1	fl oz	30.5	\N	\N
01089	3	1	quart	976	\N	\N
01090	1	0.25	cup	32	\N	\N
01090	2	1	cup	128	\N	\N
01091	1	0.25	cup	30	\N	\N
01091	2	1	cup	120	\N	\N
01091	3	5	tbsp	23	1	\N
01092	1	1	cup	68	\N	\N
01092	2	1	envelope (1-1/3 cup)	91	\N	\N
01092	3	0.333	cup (makes 1 cup reconstituted milk)	23	\N	\N
01093	1	1	oz	28.35	\N	\N
01093	2	0.25	lb	113	\N	\N
01094	1	0.25	cup	30	\N	\N
01094	2	1	cup	120	\N	\N
01094	3	1	tbsp	6.5	\N	\N
01095	1	1	fl oz	38.2	\N	\N
01095	2	1	cup	306	\N	\N
01096	1	1	fl oz	31.5	\N	\N
01096	2	1	cup	252	\N	\N
01096	3	1	can (13 oz)	369	\N	\N
01096	4	0.5	cup	126	\N	\N
01097	1	1	fl oz	31.9	\N	\N
01097	2	1	cup	256	\N	\N
01097	3	0.5	cup	128	\N	\N
01102	1	1	cup	250	\N	\N
01102	2	1	fl oz	31.2	\N	\N
01102	3	1	quart	1000	\N	\N
01103	1	1	cup	250	\N	\N
01103	2	1	fl oz	31.2	\N	\N
01103	3	1	quart	1000	\N	\N
01104	1	1	cup	250	\N	\N
01104	2	1	quart	1000	\N	\N
01105	1	1	cup	250	\N	\N
01105	2	1	fl oz	31.2	\N	\N
01106	1	1	fl oz	30.5	\N	\N
01106	2	1	cup	244	\N	\N
01106	3	1	quart	976	\N	\N
01107	1	1	fl oz	30.8	\N	\N
01107	2	1	cup	246	\N	\N
01108	1	1	cup	244	\N	\N
01108	2	1	quart	976	\N	\N
01109	1	1	cup	245	\N	\N
01109	2	1	quart	980	\N	\N
01110	1	1	fl oz	28.4	\N	\N
01110	2	1	container (10.6 oz)	300	\N	\N
01111	1	1	fl oz	28.4	\N	\N
01111	2	1	container (11 oz)	313	\N	\N
01112	1	1	cup	246	\N	\N
01112	2	1	quart	984	\N	\N
01113	1	1	cup	57	\N	\N
01113	2	1	tbsp	2.9	\N	\N
01114	1	1	cup	246	\N	\N
01114	2	1	quart	984	\N	\N
01115	1	1	cup	145	\N	\N
01115	2	1	tbsp	7.5	\N	\N
01116	1	1	container (6 oz)	170	\N	\N
01116	2	1	container (8 oz)	227	\N	\N
01116	3	0.5	container (4 oz)	113	\N	\N
01116	4	1	cup (8 fl oz)	245	\N	\N
01117	1	1	container (6 oz)	170	\N	\N
01117	2	1	container (8 oz)	227	\N	\N
01117	3	0.5	container (4 oz)	113	\N	\N
01117	4	1	cup (8 fl oz)	245	\N	\N
01118	1	1	container (6 oz)	170	\N	\N
01118	2	1	container (8 oz)	227	\N	\N
01118	3	1	cup (8 fl oz)	245	\N	\N
01119	1	1	container (6 oz)	170	\N	\N
01119	2	1	container (8 oz)	227	\N	\N
01119	3	1	cup (8 fl oz)	245	\N	\N
01120	1	1	container (6 oz)	170	\N	\N
01120	2	1	container (4.4 oz)	125	\N	\N
01120	3	1	container (5 oz)	142	\N	\N
01120	4	1	cup (8 fl oz)	245	\N	\N
01120	5	1	container (8 oz)	227	\N	\N
01120	6	0.5	container (4 oz)	113	\N	\N
01121	1	1	container (6 oz)	170	\N	\N
01121	2	1	cup (8 fl oz)	245	\N	\N
01121	3	1	container (8 oz)	227	\N	\N
01121	5	1	container, Dannon Sprinkl'ins (4.1 oz)	116	\N	\N
01121	6	0.5	container (4 oz)	113	\N	\N
01122	1	1	container (6 oz)	170	\N	\N
01122	2	0.5	container (4 oz)	113	\N	\N
01122	3	1	container (8 oz)	227	\N	\N
01123	1	1	large	50	\N	\N
01123	2	1	extra large	56	\N	\N
01123	3	1	jumbo	63	\N	\N
01123	5	1	cup (4.86 large eggs)	243	\N	\N
01123	6	1	medium	44	\N	\N
01123	7	1	small	38	\N	\N
01124	1	1	large	33	\N	\N
01124	2	1	cup	243	\N	\N
01125	1	1	large	17	\N	\N
01125	2	1	cup	243	\N	\N
01126	1	1	oz	28.35	\N	\N
01126	2	0.5	lb	227	\N	\N
01127	1	1	oz	28.35	\N	\N
01127	2	0.5	lb	227	\N	\N
01128	1	1	large	46	\N	\N
01129	1	1	cup, chopped	136	\N	\N
01129	2	1	tbsp	8.5	\N	\N
01129	3	1	large	50	\N	\N
01130	1	1	tbsp	15	\N	\N
01130	2	1	large	61	\N	\N
01131	1	1	large	50	\N	\N
01132	1	1	large	61	\N	\N
01132	2	1	tbsp	13.7	\N	\N
01132	3	1	cup	220	\N	\N
01133	1	1	cup, sifted	85	\N	\N
01133	2	1	tbsp	5.0	\N	\N
01134	1	1	cup, sifted	85	\N	\N
01134	2	1	tbsp	5.0	\N	\N
01135	1	1	oz	28.35	\N	\N
01135	2	0.5	lb	227	\N	\N
01136	1	1	cup, sifted	107	\N	\N
01136	2	1	tbsp	7.0	\N	\N
01137	1	1	cup, sifted	67	\N	\N
01137	2	1	tbsp	4.0	\N	\N
01138	1	1	egg	70	\N	\N
01139	1	1	egg	144	\N	\N
01140	1	1	egg	9.0	\N	\N
01141	1	1	egg	79	\N	\N
01144	1	0.35	oz	9.9	\N	\N
01144	2	0.7	oz	20	\N	\N
01145	1	1	pat (1"" sq, 1/3"" high)	5.0	\N	\N
01145	2	1	tbsp	14.2	\N	\N
01145	3	1	cup	227	\N	\N
01145	4	1	stick	113	\N	\N
01146	1	1	tbsp	5.0	\N	\N
01151	1	1	cup	245	\N	\N
01151	2	1	quart	980	\N	\N
01152	1	1	cup	245	\N	\N
01152	2	1	quart	980	\N	\N
01153	1	1	fl oz	31.5	\N	\N
01153	2	0.5	cup	126	\N	\N
01154	1	0.25	cup	30	\N	\N
01154	2	1	cup	120	\N	\N
01155	1	1	cup	68	\N	\N
01155	2	1	envelope (1-1/3 cup)	91	\N	\N
01156	1	1	oz	28.35	\N	\N
01157	1	1	oz	28.35	\N	\N
01159	1	1	oz	28.35	\N	\N
01160	1	1	oz	28.35	\N	\N
01160	2	0.5	lb	227	\N	\N
01161	1	1	cup, shredded	113	\N	\N
01161	2	1	oz	28.35	\N	\N
01161	3	1	cubic inch	18	\N	\N
01161	4	1	slice	28	\N	\N
01161	5	3	oz	85	\N	\N
01164	1	2	tbsp	30	\N	\N
01164	2	1	cup	243	\N	\N
01165	1	1	cup, crumbled	132	\N	\N
01165	2	1	oz	28.35	\N	\N
01166	1	1	cup, diced	132	\N	\N
01166	2	1	cup, shredded	113	\N	\N
01166	3	1	oz	28.35	\N	\N
01166	4	1	cubic inch	18	\N	\N
01166	5	1	slice (1 oz)	28	\N	\N
01167	1	1	cup, diced	132	\N	\N
01167	2	1	cup, shredded	113	\N	\N
01167	3	1	oz	28.35	\N	\N
01167	4	1	cubic inch	17	\N	\N
01167	5	1	slice (1 oz)	28	\N	\N
01168	1	1	cup, diced	132	\N	\N
01168	2	1	cup, shredded	113	\N	\N
01168	3	1	oz	28.35	\N	\N
01168	4	1	cubic inch	17	\N	\N
01168	5	1	slice (1 oz)	28	\N	\N
01169	1	1	cup, diced	132	\N	\N
01169	2	1	cup, shredded	113	\N	\N
01169	3	1	oz	28.35	\N	\N
01169	4	1	cubic inch	17	\N	\N
01169	5	1	slice (1 oz)	28	\N	\N
01171	1	1	oz	28	\N	\N
01172	1	1	oz	28	\N	\N
01173	1	1	oz	28	\N	\N
01174	1	1	cup	246	\N	\N
01174	2	1	quart	984	\N	\N
01175	1	1	cup	244	\N	\N
01175	2	1	quart	976	\N	\N
01178	1	1	tablespoon	12.0	\N	\N
01178	2	1	cup	230	\N	\N
01179	1	1	tablespoon	12.0	\N	\N
01179	2	1	cup	230	\N	\N
01180	1	1	tablespoon	12.0	\N	\N
01180	2	1	cup	230	\N	\N
01182	1	1	cup shredded	113	\N	\N
01184	1	1	container (6 oz)	170	\N	\N
01185	1	1	tablespoon	5.0	\N	\N
01186	1	1	tbsp	18	6	0.251
01187	1	1	container (6 oz)	170	\N	\N
01188	1	2	tbsp	33	\N	\N
01189	1	2	tbsp	35	\N	\N
01190	1	1	slice	21	\N	\N
01191	1	1	oz	28	\N	\N
01192	1	1	oz	28	\N	\N
01193	1	2	tbsp	31	\N	\N
01194	1	2	tbsp	32	\N	\N
01199	1	2	tbsp	29	1	\N
01199	2	1	pint	484	1	\N
01200	1	1	tablespoon	4.0	\N	\N
01200	2	1	cup	75	\N	\N
01202	1	1	cup	250	\N	\N
01202	2	1	fl oz	31.2	\N	\N
01202	3	1	quart	1000	\N	\N
01203	1	1	container (6 oz)	170	\N	\N
01203	2	1	cup (8 fl oz)	245	\N	\N
01203	3	1	container (8 oz)	227	\N	\N
01204	1	1	cup	100	\N	\N
01204	2	1	tbsp	5.0	\N	\N
01204	3	1	oz	28.35	\N	\N
01205	1	1	tbsp	15.0	1	\N
01206	1	4	tsp	12.0	1	\N
01208	1	1	cup, diced	132	\N	\N
01208	2	1	oz	28.35	\N	\N
01208	3	1	cup, shredded	113	\N	\N
01208	4	1	cubic inch	14.3	\N	\N
01208	5	1	slice (1 oz)	28	\N	\N
01208	6	1	package (6 oz)	170	\N	\N
01209	1	1	oz	28.35	1	\N
01209	2	0.25	cup	28	1	\N
01210	1	1	tbsp	8.6	3	1.389
01210	2	1	cup	105	3	3.876
01211	1	1	cup	244	\N	\N
01211	2	1	tbsp	15	\N	\N
01211	3	1	fl oz	30.5	\N	\N
01211	4	1	quart	976	\N	\N
01212	1	1	cup	128	\N	\N
01212	2	0.25	cup	32	\N	\N
01214	1	1	cup	252	\N	\N
01214	2	1	fl oz	31.5	\N	\N
01214	3	1	can (13 oz)	369	\N	\N
01214	4	0.5	cup	126	\N	\N
01215	1	1	slice 3/4 oz	21	\N	\N
01215	2	1	slice 2/3 oz	19	\N	\N
01216	1	1	container (6 oz)	170	\N	\N
01216	2	1	container (4.4 oz)	125	\N	\N
01216	3	1	container (5 oz)	142	\N	\N
01216	4	1	cup (8 fl oz)	245	\N	\N
01216	5	1	container (8 oz)	227	\N	\N
01216	6	0.5	container (4 oz)	113	\N	\N
01217	1	1	container (6 oz)	170	\N	\N
01217	2	1	cup (8 fl oz)	245	\N	\N
01217	3	1	container (8 oz)	227	\N	\N
01217	5	1	container, Dannon Sprinkl'ins (4.1 oz)	116	\N	\N
01217	6	0.5	container (4 oz)	113	\N	\N
01218	1	1	container (6 oz)	170	\N	\N
01218	2	1	container (4.4 oz)	125	\N	\N
01218	3	1	cup (8 fl oz)	245	\N	\N
01218	4	1	container (8 oz)	227	\N	\N
01219	1	1	container (6 oz)	170	\N	\N
01219	2	1	cup (8 fl oz)	245	\N	\N
01219	3	1	container (8 oz)	227	\N	\N
01220	1	1	container (6 oz)	170	\N	\N
01220	2	1	container (8 oz)	227	\N	\N
01220	3	0.5	container (4 oz)	113	\N	\N
01220	4	1	cup (8 fl oz)	245	\N	\N
01221	1	1	container (6 oz)	170	\N	\N
01222	1	1	container (6 oz)	170	\N	\N
01223	1	1	tbsp	11.0	\N	\N
01224	1	2	scoop	50	1	\N
01225	1	1	tbsp	19	4	2.243
01226	1	0.25	cup	60	\N	\N
01226	2	1	cup	240	\N	\N
01227	1	1	cup grated	97	12	13.246
01228	1	1	cup, crumbled	122	12	8.56
01229	1	1	cup, crumbled	118	12	5.521
01230	1	1	cup	245	\N	\N
01231	1	1	container	170	\N	\N
01235	1	0.5	cup	68	\N	\N
01236	1	0.5	cup	86	\N	\N
01237	1	1	bar	50	\N	\N
01238	1	1	serving	70	\N	\N
01239	1	1	serving	82	1	\N
01240	1	1	unit	96	1	\N
01241	1	1	serving	70	1	\N
01242	1	1	serving	70	1	\N
01243	1	0.5	cup	68	1	\N
01244	1	1	bar	68	2	\N
01250	1	1	can	227	1	\N
01251	1	0.25	cup shredded	28	\N	\N
01252	1	1	slice (2/3 oz)	19	\N	\N
01252	2	1	slice (3/4 oz)	21	\N	\N
01253	1	1	oz	28.35	\N	\N
01253	2	1	slice (3/4 oz)	21	\N	\N
01253	3	1	slice (1 oz)	28	\N	\N
01253	4	1	cubic inch	18	\N	\N
01253	5	1	cup, diced	140	\N	\N
01253	6	1	cup, shredded	113	\N	\N
01253	7	1	cup, melted	244	\N	\N
01254	1	1	cup	113	\N	\N
01254	2	1	oz	28.35	\N	\N
01254	3	1	slice (3/4 oz)	21	\N	\N
01254	4	1	package (8 oz)	227	\N	\N
01255	1	1	oz	28	\N	\N
01256	1	1	container	170	1	\N
01258	1	1	cup, sifted	107	\N	\N
01258	2	1	tbsp	7.0	\N	\N
01259	1	1	piece	21	12	0.481
01259	2	1	package	566	8	208.427
01260	1	1	slice	21	9	2.145
01263	1	1	medium	298	1	\N
01264	1	26	pieces	95	1	\N
01265	1	1	serving	28	1	\N
01266	1	1	serving	28	\N	\N
01267	1	2	tsp	5.0	1	\N
01270	1	1	slice (2/3 oz)	19	\N	\N
01270	2	1	slice (3/4 oz)	21	\N	\N
01270	3	1	slice (1 oz)	28	\N	\N
01271	1	1	cup	86	32	7.497
01275	1	5.3	oz	150	\N	\N
01276	1	5.3	oz	150	\N	\N
01278	1	5.3	oz	150	\N	\N
01280	1	5.3	oz	150	\N	\N
01281	1	5.3	oz	150	\N	\N
01284	1	1	container (5.3 oz)	150	\N	\N
01285	1	1	container (5.3 oz)	150	\N	\N
01286	1	1	container (5.3 oz)	150	\N	\N
01287	1	1	container (7 oz)	200	\N	\N
01291	1	1	cup	252	\N	\N
01291	2	1	fl oz	31.5	\N	\N
01291	3	1	can (13 oz)	369	\N	\N
01291	4	0.5	cup	126	\N	\N
01295	1	1	cup (8 fl oz)	245	\N	\N
01295	2	1	container (8 oz)	227	\N	\N
01295	3	0.5	container (4 oz)	113	\N	\N
02001	1	1	tsp	1.9	\N	\N
02001	2	1	tbsp	6.0	\N	\N
02002	1	1	tsp, whole	2.1	\N	\N
02002	2	1	tbsp, whole	6.7	\N	\N
02003	1	1	tsp, leaves	0.7	13	\N
02003	2	1	tbsp, leaves	2.1	30	0.12
02003	3	1	tsp, ground	1.4	\N	\N
02003	4	1	tbsp, ground	4.5	\N	\N
02004	1	1	tsp, crumbled	0.6	\N	\N
02004	2	1	tbsp, crumbled	1.8	\N	\N
02005	1	1	tsp	2.1	\N	\N
02005	2	1	tbsp	6.7	\N	\N
02006	1	1	tsp, ground	2.0	\N	\N
02006	2	1	tbsp, ground	5.8	\N	\N
02007	1	1	tsp	2.0	\N	\N
02007	2	1	tbsp	6.5	\N	\N
02008	1	1	tsp	0.6	\N	\N
02008	2	1	tbsp	1.9	\N	\N
02009	1	1	tsp	2.7	33	\N
02009	2	1	tbsp	8.0	30	0.1
02010	1	1	tsp	2.6	13	0.13
02010	2	1	tbsp	7.8	12	0.288
02011	1	1	tsp	2.1	30	0.12
02011	2	1	tbsp	6.5	30	0.16
02012	1	1	tsp	0.6	\N	\N
02012	2	1	tbsp	1.8	\N	\N
02013	1	1	tsp	1.8	\N	\N
02013	2	1	tbsp	5.0	\N	\N
02014	1	1	tsp, whole	2.1	\N	\N
02014	2	1	tbsp, whole	6.0	\N	\N
02015	1	1	tsp	2.0	\N	\N
02015	2	1	tbsp	6.3	\N	\N
02016	1	1	tsp	2.1	\N	\N
02016	2	1	tbsp	6.6	\N	\N
02017	1	1	tsp	1.0	\N	\N
02017	2	1	tbsp	3.1	\N	\N
02018	1	1	tsp, whole	2.0	\N	\N
02018	2	1	tbsp, whole	5.8	\N	\N
02019	1	1	tsp	3.7	\N	\N
02019	2	1	tbsp	11.1	\N	\N
02020	1	1	tsp	3.1	50	0.06
02020	2	1	tbsp	9.7	20	0.07
02021	1	1	tsp	1.8	33	\N
02021	2	1	tbsp	5.2	30	0.15
02022	1	1	tsp	1.7	\N	\N
02022	2	1	tbsp	5.3	\N	\N
02023	1	1	tsp	0.6	\N	\N
02023	2	1	tbsp	1.7	\N	\N
02024	1	1	tsp	2.0	3	0.115
02024	2	1	tbsp	6.3	60	0.46
02025	1	1	tsp	2.2	\N	\N
02025	2	1	tbsp	7.0	\N	\N
02026	1	1	tsp	2.4	10	0.04
02026	2	1	tbsp	6.9	10	0.12
02027	1	1	tsp, leaves	1.0	10	0.03
02027	2	1	tsp, ground	1.8	10	0.05
02028	1	1	tsp	2.3	23	\N
02028	2	1	tbsp	6.8	20	0.19
02029	1	1	tsp	0.5	13	\N
02029	2	1	tbsp	1.6	30	0.16
02030	1	1	tsp, ground	2.3	63	\N
02030	2	1	tbsp, ground	6.9	60	\N
02030	3	1	tsp, whole	2.9	3	0.1
02030	4	1	dash	0.1	\N	\N
02031	1	1	tsp	1.8	\N	\N
02031	2	1	tbsp	5.3	\N	\N
02032	1	1	tsp, ground	2.4	\N	\N
02032	2	1	tbsp, ground	7.1	\N	\N
02033	1	1	tsp	2.8	\N	\N
02033	2	1	tbsp	8.8	40	0.32
02034	1	1	tsp	1.5	20	0.07
02034	2	1	tbsp	4.4	20	0.19
02035	1	1	tsp	1.7	\N	\N
02035	2	1	tbsp	5.6	\N	\N
02036	1	1	tsp	1.2	\N	\N
02036	2	1	tbsp	3.3	\N	\N
02037	1	1	tsp	0.7	\N	\N
02037	2	1	tbsp	2.1	\N	\N
02038	1	1	tsp	0.7	\N	\N
02038	2	1	tbsp	2.0	\N	\N
02039	1	1	tsp	1.4	\N	\N
02039	2	1	tbsp	4.4	\N	\N
02041	1	1	tsp, leaves	0.6	10	0.03
02041	2	1	tbsp, leaves	1.8	30	0.08
02041	3	1	tsp, ground	1.6	\N	\N
02041	4	1	tbsp, ground	4.8	\N	\N
02042	1	1	tsp, leaves	1.0	30	0.06
02042	2	1	tbsp, leaves	2.7	30	0.17
02042	3	1	tsp, ground	1.4	\N	\N
02042	4	1	tbsp, ground	4.3	\N	\N
02043	1	1	tsp	3.0	20	0.06
02043	2	1	tbsp	9.4	20	0.16
02044	1	5	leaves	2.5	\N	\N
02044	2	2	tbsp, chopped	5.3	\N	\N
02044	3	0.25	cup leaves, whole	6.0	12	1.021
02045	1	5	sprigs	1.0	\N	\N
02045	2	1	cup sprigs	8.9	\N	\N
02046	1	1	tsp or 1 packet	5.0	\N	\N
02046	2	1	cup	249	34	5.448
02047	1	1	tsp	6.0	\N	\N
02047	2	1	tbsp	18	\N	\N
02047	3	1	cup	292	\N	\N
02047	4	1	dash	0.4	\N	\N
02048	1	1	tbsp	14.9	\N	\N
02048	2	1	cup	239	\N	\N
02048	3	1	tsp	5.0	23	0.785
02049	1	1	tsp	0.8	\N	\N
02049	2	0.5	tsp	0.4	\N	\N
02050	1	1	tsp	4.2	\N	\N
02050	2	1	tbsp	13.0	\N	\N
02050	3	1	cup	208	\N	\N
02051	1	1	tsp	4.2	\N	\N
02051	2	1	tbsp	13.0	\N	\N
02052	1	1	tsp	4.2	\N	\N
02052	2	1	tbsp	13.0	\N	\N
02053	1	1	tbsp	14.9	\N	\N
02053	2	1	cup	238	\N	\N
02053	3	1	tsp	5.0	\N	\N
02054	1	1	tbsp, drained	8.6	\N	\N
02055	1	1	tsp	5.0	\N	\N
02055	2	1	tbsp	15.0	\N	\N
02063	1	1	tsp	0.7	\N	\N
02063	2	1	tbsp	1.7	\N	\N
02064	1	2	leaves	0.1	\N	\N
02064	2	2	tbsp	3.2	\N	\N
02065	1	2	leaves	0.3	\N	\N
02065	2	2	tbsp	11.4	\N	\N
02066	1	1	tsp	0.5	\N	\N
02066	2	1	tbsp	1.6	\N	\N
02068	1	1	tbsp	14.9	\N	\N
02068	2	1	cup	239	\N	\N
02068	3	1	tsp	5.0	\N	\N
02069	1	1	tbsp	16	\N	\N
02069	2	1	cup	255	\N	\N
02069	3	1	tsp	5.3	\N	\N
02073	1	2	tbsp (1 serving)	5.3	1	\N
02074	1	0.25	tsp	1.0	1	\N
02075	1	2	tsp	5.7	3	0.577
02076	1	1.33	tbsp	9.0	2	\N
03001	1	1	packet	28	\N	\N
03002	1	1	tbsp	14.7	13	\N
03002	2	1	oz	28.35	1	\N
03002	3	1	jar	71	4	0
03003	1	1	oz	28.35	1	\N
03003	2	1	tbsp	14.7	13	\N
03003	3	1	jar	71	4	0
03005	1	1	tbsp	16	8	1.569
03005	2	1	oz	28.35	\N	\N
03005	3	1	jar	71	\N	\N
03007	1	1	oz	28.35	\N	\N
03007	2	1	jar	71	\N	\N
03008	1	1	tbsp	15.0	\N	\N
03008	2	1	oz	28.35	\N	\N
03008	3	1	jar	71	\N	\N
03008	4	1	jar Gerber Second Foods (2.5 oz)	71	\N	\N
03009	1	1	oz	28.35	\N	\N
03009	2	1	jar	71	\N	\N
03010	1	1	tbsp	22	7	\N
03010	2	1	oz	28.35	1	\N
03010	3	1	jar	71	4	0
03010	4	1	container	70	10	\N
03011	1	1	oz	28.35	\N	\N
03011	2	1	jar	71	\N	\N
03012	1	1	tbsp	15.0	\N	\N
03012	2	1	oz	28.35	\N	\N
03012	3	1	jar	71	\N	\N
03012	4	1	jar Beech-Nut Stage 1 (2.5 oz)	71	\N	\N
03012	5	1	jar Gerber Second Foods (2.5 oz)	71	\N	\N
03012	6	1	jar Heinz Strained-2 (2.5 oz)	71	\N	\N
03013	1	1	tbsp	15.0	\N	\N
03013	2	1	oz	28.35	\N	\N
03013	3	1	jar	71	\N	\N
03013	4	1	jar Gerber Third Foods (2.5 oz)	71	\N	\N
03013	5	1	jar Heinz Junior-3 (2.5 oz)	71	\N	\N
03014	1	1	stick	10.0	\N	\N
03014	2	1	jar	71	\N	\N
03014	3	1	jar Gerber Graduate (2.5 oz)	71	\N	\N
03015	1	1	tbsp	15.0	\N	\N
03015	2	1	oz	28.35	\N	\N
03015	3	1	jar	71	\N	\N
03015	4	1	jar Beech-Nut Stage 1 (2.5 oz)	71	\N	\N
03015	5	1	jar Gerber Second Foods (2.5 oz)	71	\N	\N
03015	6	1	jar Heinz Strained-2 (2.5 oz)	71	\N	\N
03016	1	1	tbsp	19	12	3.629
03016	2	1	container	68	12	1.792
03017	1	1	stick	10.0	\N	\N
03017	2	1	jar	71	\N	\N
03017	3	1	jar Gerber Graduate (2.5 oz)	71	\N	\N
03019	1	1	bar	9.9	\N	\N
03021	1	1	stick	10.0	\N	\N
03021	2	1	jar	71	\N	\N
03021	3	1	jar Gerber Graduate (2.5 oz)	71	\N	\N
03024	1	1	serving	113	\N	\N
03041	1	1	oz	28.35	\N	\N
03041	2	1	jar	113	\N	\N
03042	1	1	oz	28.35	\N	\N
03042	2	1	jar	170	\N	\N
03043	1	1	oz	28.35	\N	\N
03043	2	1	jar	170	\N	\N
03044	1	1	tbsp	16	\N	\N
03044	2	1	oz	28.35	\N	\N
03044	3	1	jar	113	\N	\N
03044	4	1	jar Gerber Second Food (4 oz)	113	\N	\N
03044	5	1	jar Beech-Nut Stage 2 (4 oz)	113	\N	\N
03044	6	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
03045	1	1	tbsp	16	\N	\N
03045	2	1	oz	28.35	\N	\N
03045	3	1	jar	170	\N	\N
03045	4	1	jar Beech-Nut Stage 3 (6 oz)	170	\N	\N
03045	5	1	jar Gerber Third Foods (6 oz)	170	\N	\N
03046	1	1	tbsp	16	\N	\N
03046	2	1	piece	8.0	\N	\N
03047	1	1	tbsp	16	\N	\N
03047	2	1	oz	28.35	\N	\N
03047	3	1	jar	113	\N	\N
03047	4	1	jar Gerber Second Food (4 oz)	113	\N	\N
03047	5	1	jar Beech-Nut Stage 2 (4 oz)	113	\N	\N
03047	6	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
03048	1	1	container	113	\N	\N
03049	1	1	oz	28.35	\N	\N
03049	2	1	jar	170	\N	\N
03050	1	1	tbsp	16	\N	\N
03050	2	1	oz	28.35	\N	\N
03050	3	1	jar	170	\N	\N
03050	4	1	jar Beech-Nut Stage 3 (6 oz)	170	\N	\N
03050	5	1	jar Gerber Third Foods (6 oz)	170	\N	\N
03050	6	1	jar Heinz Junior-3 (6 oz)	170	\N	\N
03051	1	1	oz	28.35	\N	\N
03051	2	1	jar	170	\N	\N
03052	1	1	oz	28.35	\N	\N
03052	2	1	jar	170	\N	\N
03052	3	1	jar Beech-Nut Table Time (6 oz)	170	\N	\N
03053	1	1	cup	256	\N	\N
03053	2	1	tbsp	16	\N	\N
03053	3	1	oz	28.35	\N	\N
03053	4	1	jar	113	\N	\N
03053	5	1	jar Earth's Best (4.5 oz)	128	\N	\N
03053	6	1	jar Gerber Second Food (4 oz)	113	\N	\N
03053	7	1	jar Beech-Nut Stage 2 (4 oz)	113	\N	\N
03053	8	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
03054	1	1	cup	256	\N	\N
03054	2	1	tbsp	16	\N	\N
03054	3	1	oz	28.35	\N	\N
03054	4	1	jar	170	\N	\N
03054	5	1	jar Beech-Nut Stage 3 (6 oz)	170	\N	\N
03054	6	1	jar Gerber Third Foods (6 oz)	170	\N	\N
03054	7	1	jar Heinz Junior-3 (6 oz)	170	\N	\N
03055	1	1	jar Beech-Nut Stage 2 (4 oz)	113	\N	\N
03059	1	1	cup	256	\N	\N
03059	2	1	tbsp	16	\N	\N
03059	3	1	oz	28.35	\N	\N
03059	4	1	jar	113	\N	\N
03059	5	1	jar Gerber Second Food (4 oz)	113	\N	\N
03059	6	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
03061	1	1	cup	256	\N	\N
03061	2	1	tbsp	16	\N	\N
03061	3	1	oz	28.35	\N	\N
03061	4	1	jar	113	\N	\N
03061	5	1	jar Gerber Second Food (4 oz)	113	\N	\N
03061	6	1	jar Beech-Nut Stage 2 (4 oz)	113	\N	\N
03061	7	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
03062	1	1	cup	256	\N	\N
03062	2	1	tbsp	16	\N	\N
03062	3	1	oz	28.35	\N	\N
03062	4	1	jar	170	\N	\N
03062	5	1	jar Gerber Third Foods (6 oz)	170	\N	\N
03062	6	1	jar Heinz Junior-3 (6 oz)	170	\N	\N
03066	1	1	cup	256	\N	\N
03066	2	1	tbsp	16	\N	\N
03066	3	1	oz	28.35	\N	\N
03066	4	1	jar	113	\N	\N
03066	5	1	jar Beech-Nut Stage 2 (4 oz)	113	\N	\N
03066	6	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
03067	1	1	oz	28.35	\N	\N
03067	2	1	jar	170	\N	\N
03068	1	1	tbsp	16	\N	\N
03068	2	1	oz	28.35	\N	\N
03068	3	1	jar	113	\N	\N
03068	4	1	jar Gerber Second Food (4 oz)	113	\N	\N
03068	5	1	jar Beech-Nut Stage 2 (4 oz)	113	\N	\N
03068	6	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
03069	1	1	tbsp	16	\N	\N
03069	2	1	oz	28.35	\N	\N
03069	3	1	jar	170	\N	\N
03069	4	1	jar Beech-Nut Stage 3 (6 oz)	170	\N	\N
03069	5	1	jar Gerber Third Foods (6 oz)	170	\N	\N
03069	6	1	jar Heinz Junior-3 (6 oz)	170	\N	\N
03070	1	1	jar Beech-Nut Stage 2 (4 oz)	113	\N	\N
03070	2	1	tbsp	16	\N	\N
03070	3	1	oz	28.35	\N	\N
03070	4	1	jar	113	\N	\N
03070	5	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
03072	1	1	tbsp	16	\N	\N
03072	2	1	oz	28.35	\N	\N
03072	3	1	jar	170	\N	\N
03072	4	1	jar	170	\N	\N
03073	1	1	cup	256	\N	\N
03073	2	1	tbsp	16	\N	\N
03073	3	1	oz	28.35	\N	\N
03073	4	1	jar	113	\N	\N
03073	5	1	jar Gerber Second Food (4 oz)	113	\N	\N
03073	6	1	jar Beech-Nut Stage 2 (4 oz)	113	\N	\N
03073	7	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
03075	1	1	oz	28.35	\N	\N
03075	2	1	jar	113	\N	\N
03076	1	1	oz	28.35	\N	\N
03076	2	1	jar	170	\N	\N
03077	1	1	jar, Gerber (4 oz)	113	\N	\N
03079	1	1	oz	28.35	\N	\N
03079	2	1	jar	113	\N	\N
03081	1	1	oz	28.35	\N	\N
03081	2	1	jar	170	\N	\N
03082	1	1	tbsp	16	\N	\N
03082	2	1	oz	28.35	\N	\N
03082	3	1	jar	113	\N	\N
03082	4	1	jar Gerber Second Food (4 oz)	113	\N	\N
03082	5	1	jar Beech-Nut Stage 2 (4 oz)	113	\N	\N
03082	6	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
03083	1	1	tbsp	16	\N	\N
03083	2	1	oz	28.35	\N	\N
03083	3	1	jar	170	\N	\N
03083	4	1	jar Beech-Nut Stage 3 (6 oz)	170	\N	\N
03083	5	1	jar Gerber Third Foods (6 oz)	170	\N	\N
03083	6	1	jar Heinz Junior-3 (6 oz)	170	\N	\N
03084	1	1	cup	256	\N	\N
03084	2	1	tbsp	16	\N	\N
03084	3	1	oz	28.35	\N	\N
03084	4	1	jar	113	\N	\N
03084	5	1	jar Earth's Best (4.5 oz)	113	\N	\N
03084	6	1	jar Gerber Second Food (4 oz)	113	\N	\N
03085	1	1	cup	256	\N	\N
03085	2	1	tbsp	16	\N	\N
03085	3	1	oz	28.35	\N	\N
03085	4	1	jar	170	\N	\N
03085	5	1	jar Gerber Third Foods (6 oz)	170	\N	\N
03089	1	1	oz	28.35	\N	\N
03089	2	1	jar	113	\N	\N
03090	1	1	oz	28.35	\N	\N
03090	2	1	jar	170	\N	\N
03091	1	1	cup	240	\N	\N
03091	2	1	tbsp	15.0	\N	\N
03091	3	1	oz	28.35	\N	\N
03091	4	1	jar	113	\N	\N
03091	5	1	jar Beech-Nut Stage I (4 oz)	113	\N	\N
03091	6	1	jar Gerber First Foods (2.5 oz)	71	\N	\N
03091	7	1	jar Gerber Second Food (4 oz)	113	\N	\N
03091	8	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
03091	9	1	jar Heinz Beginner-1 (2.5 oz)	71	\N	\N
03092	1	1	cup	240	\N	\N
03092	2	1	tbsp	15.0	\N	\N
03092	3	1	oz	28.35	\N	\N
03092	4	1	jar	170	\N	\N
03092	5	1	jar Beech-Nut Stage 3 (6 oz)	170	\N	\N
03093	1	1	oz	28.35	\N	\N
03093	2	1	jar	128	\N	\N
03096	1	1	jar, Gerber (4 oz)	113	\N	\N
03098	1	1	cup	224	\N	\N
03098	2	1	tbsp	14.0	\N	\N
03098	3	1	oz	28.35	\N	\N
03098	4	1	jar	113	\N	\N
03098	5	1	jar Gerber Second Food (4 oz)	113	\N	\N
03098	6	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
03099	1	1	cup	224	\N	\N
03099	2	1	tbsp	14.0	\N	\N
03099	3	1	oz	28.35	\N	\N
03099	4	1	jar	113	\N	\N
03099	5	1	jar Beech-Nut Baby's First (2.5 oz)	71	\N	\N
03099	6	1	jar Beech-Nut Stage I (4 oz)	113	\N	\N
03099	7	1	jar Gerber First Foods (2.5 oz)	71	\N	\N
03099	8	1	jar Earth's Best (4.5 oz)	128	\N	\N
03099	9	1	jar Gerber Second Food (4 oz)	113	\N	\N
03099	10	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
03099	11	1	jar Heinz Beginner-1 (2.5 oz)	71	\N	\N
03100	1	1	cup	224	\N	\N
03100	2	1	tbsp	14.0	\N	\N
03100	3	1	oz	28.35	\N	\N
03100	4	1	jar	170	\N	\N
03100	5	1	jar Beech-Nut Stage 3 (6 oz)	170	\N	\N
03100	6	1	jar Gerber Third Foods (6 oz)	170	\N	\N
03100	7	1	jar Heinz Junior-3 (6 oz)	170	\N	\N
03104	1	1	tbsp	16	9	1.01
03104	2	1	oz	28.35	1	\N
03104	3	1	jar	113	8	23.835
03105	1	1	tbsp	16	9	1.01
03105	2	1	oz	28.35	1	\N
03105	3	1	jar	99	8	23.835
03105	4	1	container	67	8	2.029
03108	1	1	cup	224	\N	\N
03108	2	1	tbsp	14.0	\N	\N
03108	3	1	oz	28.35	\N	\N
03108	4	1	jar	113	\N	\N
03108	5	1	jar Beech-Nut Baby's First (2.5 oz)	71	\N	\N
03108	6	1	jar Beech-Nut Stage I (4 oz)	113	\N	\N
03108	7	1	jar Gerber First Foods (2.5 oz)	71	\N	\N
03108	8	1	jar Earth's Best (4.5 oz)	128	\N	\N
03108	9	1	jar Gerber Second Food (4 oz)	113	\N	\N
03108	10	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
03108	11	1	jar Heinz Beginner-1 (2.5 oz)	71	\N	\N
03109	1	1	cup	224	\N	\N
03109	2	1	tbsp	14.0	\N	\N
03109	3	1	oz	28.35	\N	\N
03109	4	1	jar	170	\N	\N
03109	5	1	jar Beech-Nut Stage 3 (6 oz)	170	\N	\N
03109	6	1	jar Gerber Third Foods (6 oz)	170	\N	\N
03109	7	1	jar Heinz Junior-3 (6 oz)	170	\N	\N
03112	1	1	cup	163	\N	\N
03112	2	1	tbsp	10.0	\N	\N
03112	3	1	jar Gerber Graduate (4.5 oz)	71	\N	\N
03114	1	1	jar, Gerber (4 oz)	113	\N	\N
03115	1	1	oz	28.35	\N	\N
03116	1	1	tbsp	16	\N	\N
03116	2	1	oz	28.35	\N	\N
03116	3	1	jar	113	\N	\N
03838	1	1	scoop	9.0	\N	\N
03116	4	1	jar Beech-Nut Baby's First (2.5 oz)	71	\N	\N
03116	5	1	jar Beech-Nut Stage I (4 oz)	113	\N	\N
03116	6	1	jar Gerber First Foods (2.5 oz)	71	\N	\N
03116	7	1	jar Earth's Best (4.5 oz)	128	\N	\N
03116	8	1	jar Gerber Second Food (4 oz)	113	\N	\N
03116	9	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
03116	10	1	jar Heinz Beginner-1 (2.5 oz)	71	\N	\N
03117	1	1	tbsp	16	\N	\N
03117	2	1	oz	28.35	\N	\N
03117	3	1	jar	170	\N	\N
03117	4	1	jar Beech-Nut Stage 3 (6 oz)	170	\N	\N
03117	5	1	jar Gerber Third Foods (6 oz)	170	\N	\N
03117	6	1	jar Heinz Junior-3 (6 oz)	170	\N	\N
03118	1	1	tbsp	15.0	\N	\N
03118	2	1	oz	28.35	\N	\N
03118	3	1	jar	113	\N	\N
03118	4	1	jar Gerber Second Food (4 oz)	113	\N	\N
03118	5	1	jar Heinz Strained-2 (4.25 oz)	120	\N	\N
03119	1	1	jar	113	\N	\N
03119	2	1	tbsp	15.0	\N	\N
03119	3	1	oz	28.35	\N	\N
03119	4	1	cup	240	\N	\N
03119	5	1	jar Gerber Second Food (4 oz)	113	\N	\N
03119	6	1	jar Beech-Nut Stage 2 (4 oz)	113	\N	\N
03119	7	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
03120	1	1	cup	240	\N	\N
03120	2	1	tbsp	15.0	\N	\N
03120	3	1	oz	28.35	\N	\N
03120	4	1	jar	170	\N	\N
03120	5	1	jar Heinz Junior-3 (6 oz)	170	\N	\N
03121	1	1	tbsp	16	13	\N
03121	2	1	oz	28.35	1	\N
03121	3	1	jar	95	7	22.45
03121	4	1	cup	240	1	\N
03121	5	1	container	91	12	21.176
03122	1	1	oz	28.35	\N	\N
03127	1	1	cup	240	\N	\N
03127	2	1	tbsp	15.0	\N	\N
03127	3	1	oz	28.35	\N	\N
03127	4	1	jar	113	\N	\N
03127	5	1	jar Gerber Second Food (4 oz)	113	\N	\N
03128	1	1	tbsp	15.0	\N	\N
03128	2	1	oz	28.35	\N	\N
03128	3	1	jar	170	\N	\N
03128	4	1	jar Gerber Third Foods (6 oz)	170	\N	\N
03128	5	1	jar Heinz Junior-3 (6 oz)	170	\N	\N
03129	1	1	tbsp	15.0	\N	\N
03129	2	1	oz	28.35	\N	\N
03129	3	1	jar	113	\N	\N
03129	4	1	jar Gerber Second Food (4 oz)	113	\N	\N
03129	5	1	jar Heinz Strained-2 (4.25 oz)	120	\N	\N
03130	1	1	tbsp	17	13	0.722
03130	2	1	oz	28.35	1	\N
03130	3	1	jar	95	7	22.45
03130	4	1	container	67	12	2.853
03131	1	1	tbsp	17	13	0.722
03131	2	1	oz	28.35	1	\N
03131	3	1	jar	95	7	22.45
03131	4	1	container	67	12	2.853
03132	1	1	tbsp	16	\N	\N
03132	2	1	oz	28.35	\N	\N
03132	3	1	jar	113	\N	\N
03132	4	1	jar Beech-Nut Baby's First (2.5 oz)	71	\N	\N
03132	5	1	jar Beech-Nut Stage I (4 oz)	113	\N	\N
03132	6	1	jar Gerber First Foods (2.5 oz)	71	\N	\N
03132	7	1	jar Earth's Best (4.5 oz)	113	\N	\N
03132	8	1	jar Gerber Second Food (4 oz)	113	\N	\N
03132	9	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
03132	10	1	jar Heinz Beginner-1 (2.5 oz)	71	\N	\N
03133	1	1	tbsp	16	\N	\N
03133	2	1	oz	28.35	\N	\N
03133	3	1	jar	170	\N	\N
03133	4	1	jar Beech-Nut Stage 3 (6 oz)	170	\N	\N
03133	5	1	jar Gerber Third Foods (6 oz)	170	\N	\N
03133	6	1	jar Heinz Junior-3 (6 oz)	170	\N	\N
03134	1	1	tbsp	15.0	\N	\N
03134	2	1	oz	28.35	\N	\N
03134	3	1	jar	113	\N	\N
03134	4	1	jar Gerber Second Food (4 oz)	113	\N	\N
03134	5	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
03135	1	1	tbsp	15.0	\N	\N
03135	2	1	oz	28.35	\N	\N
03135	3	1	jar	170	\N	\N
03135	4	1	jar Gerber Third Foods (6 oz)	170	\N	\N
03136	1	1	tbsp	15.0	\N	\N
03136	2	1	oz	28.35	\N	\N
03136	3	1	jar	113	\N	\N
03136	4	1	jar Gerber Second Food (4 oz)	113	\N	\N
03136	5	1	jar Heinz Strained-2 (4.25 oz)	120	\N	\N
03137	1	1	oz	28.35	\N	\N
03137	2	1	jar	170	\N	\N
03139	1	1	tbsp	15.0	\N	\N
03139	2	1	jar Gerber First Foods (2.5 oz)	71	\N	\N
03140	1	1	tbsp	15.0	\N	\N
03140	2	1	oz	28.35	\N	\N
03140	3	1	jar, Gerber (4 oz)	113	\N	\N
03140	4	1	jar	113	\N	\N
03141	1	1	oz	28.35	\N	\N
03141	2	1	jar Gerber	128	\N	\N
03142	1	1	tbsp	16	\N	\N
03142	2	1	oz	28.35	\N	\N
03142	3	1	jar	113	\N	\N
03142	4	1	jar Earth's Best (4.5 oz)	128	\N	\N
03142	5	1	jar Gerber Second Food (4 oz)	113	\N	\N
03142	6	1	jar Beech-Nut Stage 2 (4 oz)	113	\N	\N
03142	7	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
03143	1	1	tbsp	16	\N	\N
03143	2	1	oz	28.35	\N	\N
03143	3	1	jar	170	\N	\N
03143	4	1	jar Heinz Junior-3 (6 oz)	170	\N	\N
03144	1	1	oz	28.35	\N	\N
03144	2	1	jar	113	\N	\N
03145	1	1	oz	28.35	\N	\N
03145	2	1	jar	170	\N	\N
03147	1	1	tbsp	16	\N	\N
03147	2	1	jar NFS	170	\N	\N
03147	3	1	jar Beech-Nut Stage 3 (6 oz)	170	\N	\N
03150	1	1	oz	28.35	\N	\N
03150	2	1	jar	113	\N	\N
03151	1	1	oz	28.35	\N	\N
03151	2	1	jar	170	\N	\N
03152	1	1	oz	28.35	\N	\N
03152	2	1	jar	113	\N	\N
03153	1	1	oz	28.35	\N	\N
03153	2	1	jar	170	\N	\N
03154	1	1	jar, Gerber (4 oz)	113	\N	\N
03156	1	1	tbsp	15.0	\N	\N
03156	2	1	oz	28.35	\N	\N
03156	3	1	jar	170	\N	\N
03156	4	1	jar Gerber Third Foods (6 oz)	170	\N	\N
03156	5	1	jar Heinz Junior-3 (6 oz)	170	\N	\N
03157	1	1	tbsp	15.0	\N	\N
03157	2	1	oz	28.35	\N	\N
03157	3	1	jar	113	\N	\N
03157	4	1	jar Gerber Second Food (4 oz)	113	\N	\N
03157	5	1	jar Heinz Strained-2 (4.25 oz)	120	\N	\N
03158	1	1	tbsp	16	\N	\N
03158	2	1	oz	28.35	\N	\N
03158	3	1	jar	113	\N	\N
03158	4	1	jar Gerber Second Food (4 oz)	113	\N	\N
03158	5	1	jar Beech-Nut Stage 2 (4 oz)	113	\N	\N
03158	6	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
03159	1	1	tbsp	16	\N	\N
03159	2	1	oz	28.35	\N	\N
03159	3	1	jar	170	\N	\N
03159	4	1	jar Gerber Third Foods (6 oz)	170	\N	\N
03160	1	1	oz	28.35	\N	\N
03160	2	1	jar	113	\N	\N
03161	1	1	oz	28.35	\N	\N
03161	2	1	jar Gerber	128	\N	\N
03162	1	1	oz	28.35	\N	\N
03162	2	1	jar	113	\N	\N
03163	1	1	tbsp	15.0	\N	\N
03163	2	1	jar NFS	113	\N	\N
03163	3	1	jar Gerber Second Food (4 oz)	113	\N	\N
03164	1	1	oz	28.35	\N	\N
03164	2	1	jar	113	\N	\N
03165	1	1	oz	28.35	\N	\N
03165	2	1	jar	170	\N	\N
03166	1	1	fl oz	31.7	\N	\N
03166	2	1	jar	127	\N	\N
03166	3	1	bottle Earth's Best (4.2 fl oz)	131	\N	\N
03166	4	1	bottle Heinz Strained (4 fl oz)	125	\N	\N
03166	5	1	bottle Gerber First Food (4 fl oz)	125	\N	\N
03166	6	1	bottle Beech-Nut Stage I (4 fl oz)	125	\N	\N
03167	1	1	fl oz	31.2	\N	\N
03167	2	1	bottle Earth's Best (4.2 fl oz)	131	\N	\N
03167	3	1	bottle Heinz Strained (4 fl oz)	125	\N	\N
03167	4	1	bottle NFS	125	\N	\N
03167	5	1	bottle Beech-Nut Stage 2 (4 fl oz)	125	\N	\N
03167	6	1	bottle Gerber Second Foods (4 fl oz)	125	\N	\N
03168	1	1	fl oz	31.2	\N	\N
03168	2	1	jar	127	\N	\N
03169	1	1	fl oz	31.2	1	\N
03170	1	1	fl oz	31.2	\N	\N
03170	2	1	jar	127	\N	\N
03171	1	1	fl oz	31.2	\N	\N
03171	2	1	jar	127	\N	\N
03171	3	1	bottle (4 fl oz)	125	\N	\N
03172	1	1	fl oz	31.2	\N	\N
03172	2	1	jar	127	\N	\N
03172	3	1	bottle Heinz Strained (4 fl oz)	125	\N	\N
03172	4	1	bottle Gerber Second Foods (4 fl oz)	125	\N	\N
03172	5	1	bottle Beech-Nut Stage 3 (4 fl oz)	125	\N	\N
03173	1	1	fl oz	31.2	\N	\N
03173	2	1	jar	127	\N	\N
03174	1	1	fl oz	31.2	\N	\N
03174	2	1	jar	127	\N	\N
03174	3	1	bottle Heinz Strained (4 fl oz)	125	\N	\N
03175	1	1	fl oz	31.2	\N	\N
03175	2	1	jar	127	\N	\N
03176	1	1	fl oz	31.2	\N	\N
03176	2	1	jar	127	\N	\N
03177	1	1	fl oz	31.2	\N	\N
03177	2	1	jar	127	\N	\N
03178	1	1	fl oz	31.2	\N	\N
03178	2	1	jar	127	\N	\N
03179	1	1	fl oz	31.2	\N	\N
03179	2	1	jar	127	\N	\N
03179	3	1	bottle (4 fl oz)	125	\N	\N
03181	1	1	tbsp	2.4	\N	\N
03181	2	0.5	oz	15.0	\N	\N
03184	1	0.5	oz	15.0	\N	\N
03185	1	1	tbsp	2.5	\N	\N
03185	2	0.5	oz	15.0	\N	\N
03186	1	1	tbsp	2.5	\N	\N
03186	2	0.5	oz	15.0	\N	\N
03187	1	1	oz	28.35	\N	\N
03187	2	1	jar	113	\N	\N
03188	1	1	oz	28.35	\N	\N
03188	2	1	jar	170	\N	\N
03189	1	1	tbsp	3.2	5	0.466
03189	2	0.5	oz	15.0	1	\N
03189	3	0.25	cup	12.2	4	0.386
03189	4	1	box	223	4	5.393
03190	1	1	tbsp	2.5	\N	\N
03190	2	0.5	oz	15.0	\N	\N
03191	1	1	oz	28.35	\N	\N
03191	2	1	jar	113	\N	\N
03192	1	1	oz	28.35	\N	\N
03192	2	1	jar	170	\N	\N
03193	1	1	tbsp	2.4	\N	\N
03193	2	0.5	oz	14.2	\N	\N
03194	1	1	tbsp	2.5	\N	\N
03194	2	0.5	oz	15.0	\N	\N
03195	1	1	tbsp	16	\N	\N
03195	2	1	oz	28.35	\N	\N
03195	3	1	jar	113	\N	\N
03195	4	1	jar Gerber Second Food (4 oz)	113	\N	\N
03195	5	1	jar Heinz Strained-2 (4.25 oz)	120	\N	\N
03197	1	1	oz	28.35	\N	\N
03197	2	1	jar	113	\N	\N
03198	1	1	oz	28.35	\N	\N
03198	2	1	jar	170	\N	\N
03199	1	1	oz	28.35	\N	\N
03199	2	1	jar	113	\N	\N
03201	1	1	oz	28.35	\N	\N
03201	2	1	jar	170	\N	\N
03205	1	1	tbsp	5.3	\N	\N
03205	2	1	packet (.75 oz)	21	\N	\N
03206	1	1	cookie	8.0	\N	\N
03209	1	1	cracker	0.7	\N	\N
03211	1	1	tbsp	2.4	\N	\N
03211	2	0.5	oz	14.2	\N	\N
03212	1	1	tbsp	2.5	\N	\N
03212	2	0.5	oz	15.0	\N	\N
03213	1	1	oz	28.35	\N	\N
03213	2	1	cookie	6.5	\N	\N
03214	1	1	oz	28.35	\N	\N
03214	2	1	cookie	5.0	\N	\N
03215	1	1	oz	28.35	\N	\N
03215	2	1	pretzel	6.0	\N	\N
03216	1	1	oz	28.35	\N	\N
03216	2	1	biscuit	11.0	\N	\N
03217	1	1	oz	28.35	\N	\N
03217	2	1	piece	7.0	\N	\N
03217	3	1	rusk	10.0	\N	\N
03217	4	1	toast, Gerber Zwieback	7.0	\N	\N
03220	1	1	oz	28.35	\N	\N
03220	2	1	jar	113	\N	\N
03221	1	1	oz	28.35	\N	\N
03221	2	1	jar	170	\N	\N
03222	1	1	oz	28.35	\N	\N
03224	1	1	oz	28.35	\N	\N
03224	2	1	jar	113	\N	\N
03225	1	1	oz	28.35	\N	\N
03225	2	1	jar	170	\N	\N
03226	1	1	oz	28.35	\N	\N
03226	2	1	jar	113	\N	\N
03227	1	1	tbsp	15.0	\N	\N
03227	2	1	oz	28.35	\N	\N
03227	3	1	jar	113	\N	\N
03227	4	1	jar Gerber Second Food (4 oz)	113	\N	\N
03227	5	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
03228	1	1	tbsp	15.0	\N	\N
03228	2	1	oz	28.35	\N	\N
03228	3	1	jar	220	\N	\N
03228	4	1	jar Gerber Third Foods (6 oz)	170	\N	\N
03229	1	1	oz	28.35	\N	\N
03229	2	1	jar	113	\N	\N
03230	1	1	oz	28.35	\N	\N
03230	2	1	jar	220	\N	\N
03233	1	1	tbsp	15.0	\N	\N
03233	2	1	oz	28.35	\N	\N
03233	3	1	jar	113	\N	\N
03233	4	1	jar Gerber Second Food (4 oz)	113	\N	\N
03235	1	1	tbsp	15.0	\N	\N
03235	2	1	oz	28.35	\N	\N
03235	3	1	jar	113	\N	\N
03235	4	1	jar Gerber Second Food (4 oz)	113	\N	\N
03235	5	1	jar Heinz Strained-2 (4.25 oz)	120	\N	\N
03236	1	1	tbsp	15.0	\N	\N
03236	2	1	oz	28.35	\N	\N
03236	3	1	jar	170	\N	\N
03236	4	1	jar Gerber Third Foods (6 oz)	170	\N	\N
03236	5	1	jar Heinz Junior-3 (6 oz)	170	\N	\N
03238	1	1	oz	28.35	\N	\N
03238	2	1	jar	113	\N	\N
03245	1	1	cup	229	\N	\N
03245	2	1	tbsp	14.0	\N	\N
03245	3	1	oz	28.35	\N	\N
03245	4	1	jar	113	\N	\N
03245	5	1	jar Gerber Second Food (4 oz)	113	\N	\N
03245	6	1	jar Beech-Nut Stage 2 (4 oz)	113	\N	\N
03245	7	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
03246	1	1	cup	229	\N	\N
03246	2	1	tbsp	14.0	\N	\N
03246	3	1	oz	28.35	\N	\N
03246	4	1	jar	170	\N	\N
03246	5	1	jar Beech-Nut Stage 3 (6 oz)	170	\N	\N
03246	6	1	jar Gerber Third Foods (6 oz)	170	\N	\N
03246	7	1	jar Heinz Junior-3 (6 oz)	170	\N	\N
03265	1	1	fl oz	31.2	\N	\N
03265	2	1	jar	127	\N	\N
03265	3	1	bottle Earth's Best (4.2 fl oz)	131	\N	\N
03265	4	1	bottle Heinz Strained (4 fl oz)	125	\N	\N
03265	5	1	bottle Beech-Nut Stage 2 (4 fl oz)	125	\N	\N
03265	6	1	bottle Gerber Second Foods (4 fl oz)	125	\N	\N
03267	1	1	fl oz	31.2	\N	\N
03268	1	1	fl oz	31.2	\N	\N
03268	2	1	jar	127	\N	\N
03269	1	1	serving	189	\N	\N
03274	1	1	cup	256	\N	\N
03274	2	1	tbsp	16	\N	\N
03274	3	1	oz	28.35	\N	\N
03274	4	1	jar	170	\N	\N
03274	5	1	jar Beech-Nut Stage 3 (6 oz)	170	\N	\N
03274	6	1	jar Gerber Third Foods (6 oz)	170	\N	\N
03278	1	1	oz	28.35	\N	\N
03278	2	1	jar	113	\N	\N
03279	1	1	serving	99	\N	\N
03280	1	1	tbsp	15.0	\N	\N
03280	2	1	oz	28.35	\N	\N
03280	3	1	jar	170	\N	\N
03280	4	1	jar Gerber Third Foods (6 oz)	170	\N	\N
03280	5	1	jar Heinz Junior-3 (6 oz)	170	\N	\N
03282	1	1	serving 3.5 oz serving	99	\N	\N
03282	2	1	tbsp	15.0	\N	\N
03282	3	1	oz	28.35	\N	\N
03282	4	1	cup	240	\N	\N
03282	5	1	package 7 oz	198	\N	\N
03283	1	1	oz	28.35	\N	\N
03283	2	1	jar	113	\N	\N
03286	1	1	oz	28.35	\N	\N
03286	2	1	jar	113	\N	\N
03287	1	1	tbsp	16	\N	\N
03287	2	1	oz	28.35	\N	\N
03287	3	1	jar	170	\N	\N
03287	4	1	jar Beech-Nut Stage 3 (6 oz)	170	\N	\N
03287	5	1	jar Gerber Third Foods (6 oz)	170	\N	\N
03287	6	1	jar Heinz Junior-3 (6 oz)	170	\N	\N
03289	1	1	tbsp	15.0	\N	\N
03289	2	1	jar NFS	113	\N	\N
03289	3	1	jar Gerber Second Food (4 oz)	113	\N	\N
03290	1	1	tbsp	15.0	\N	\N
03290	2	1	jar NFS	113	\N	\N
03290	3	1	jar Gerber Second Food (4 oz)	113	\N	\N
03293	1	1	oz	28.35	\N	\N
03293	2	1	jar Earth's Best	113	\N	\N
03296	1	1	oz	28.35	\N	\N
03296	2	1	jar Beech nut	170	\N	\N
03297	1	1	oz	28.35	\N	\N
03297	2	1	jar	113	\N	\N
03297	3	1	jar Gerber Second Food (4 oz)	113	\N	\N
03297	4	1	jar Beech-Nut Stage 2 (4 oz)	113	\N	\N
03297	5	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
03298	1	1	tbsp	29	4	4.181
03298	2	1	container	162	3	2.802
03301	1	4	oz	113	1	\N
03301	2	8	oz	227	1	\N
03302	1	1	serving	7.0	1	\N
03303	1	1	tbsp	16	\N	\N
03303	2	1	jar Beech-Nut Stage 2 (4 oz)	113	\N	\N
03304	1	1	oz	28.35	\N	\N
03681	1	1	oz	28.35	\N	\N
03682	1	1	oz	28.35	\N	\N
03685	1	1	oz	28.35	\N	\N
03686	1	1	oz	28.35	\N	\N
03689	1	1	oz	28.35	\N	\N
03690	1	1	oz	28.35	\N	\N
03693	1	1	oz	28.35	\N	\N
03694	1	1	oz	28.35	\N	\N
03696	1	1	oz	28.35	\N	\N
03704	1	1	oz	28.35	\N	\N
03711	1	1	oz	28.35	\N	\N
03712	1	1	oz	28.35	\N	\N
03800	1	1	fl oz	30.5	\N	\N
03801	1	1	fl oz	31.4	\N	\N
03802	1	1	scoop	8.7	\N	\N
03803	1	1	fl oz	30.5	\N	\N
03805	1	1	scoop	8.3	\N	\N
03806	1	1	fl oz	30.5	\N	\N
03806	2	5	fl oz	152	\N	\N
03808	1	1	scoop	8.5	\N	\N
03809	1	1	scoop	8.3	\N	\N
03812	1	1	fl oz	31.3	\N	\N
03813	1	1	Serving 100 ml	107	\N	\N
03813	2	1	fl oz	30.8	\N	\N
03814	1	1	scoop	9.6	\N	\N
03815	1	1	serving 100 ml	106	\N	\N
03815	2	1	fl oz	30.5	\N	\N
03816	1	1	fl oz	31.5	\N	\N
03818	1	1	fl oz	31.3	\N	\N
03819	1	1	scoop	9.4	\N	\N
03820	1	1	fl oz	31.0	\N	\N
03821	1	1	scoop	8.8	\N	\N
03822	1	1	serving 100 ml	103	\N	\N
03822	2	1	fl oz	30.8	\N	\N
03823	1	1	Serving 100 ml	106	\N	\N
03823	2	1	fl oz	30.5	\N	\N
03824	1	1	fl oz	30.8	\N	\N
03825	1	1	serving 100 ml	106	\N	\N
03825	2	1	fl oz	30.5	\N	\N
03826	1	1	scoop	8.8	\N	\N
03827	1	1	scoop	8.5	\N	\N
03830	1	1	fl oz	31.3	\N	\N
03832	1	1	serving 100 ml	106	\N	\N
03832	2	1	fl oz	30.5	\N	\N
03837	1	1	scoop	8.7	\N	\N
03839	1	1	fl oz	30.5	\N	\N
03840	1	1	fl oz	30.8	\N	\N
03841	1	1	fl oz	30.5	\N	\N
03842	1	1	fl oz	31.4	\N	\N
03843	1	1	scoop	8.7	\N	\N
03844	1	1	fl oz	31.6	\N	\N
03845	1	1	serving 100 ml	107	\N	\N
03845	2	1	fl oz	30.5	\N	\N
03846	1	1	fl oz	30.5	\N	\N
03849	1	1	scoop	9.4	\N	\N
03850	1	1	fl oz	30.4	\N	\N
03851	1	1	fl oz	31.4	\N	\N
03852	1	1	scoop	8.8	\N	\N
03853	1	1	scoop	8.5	\N	\N
03854	1	1	fl oz	31.3	\N	\N
03855	1	1	fl oz	31.0	\N	\N
03856	1	1	fl oz	31.4	\N	\N
03857	1	1	serving 100 ml	106	\N	\N
03857	2	1	fl oz	30.5	\N	\N
03858	1	1	scoop	8.7	\N	\N
03859	1	1	oz	29	\N	\N
03860	1	1	fl oz	31.0	\N	\N
03861	1	3	scoop	28	\N	\N
03864	1	1	serving 100 ml	103	\N	\N
03864	2	1	fl oz	30.5	\N	\N
03867	1	1	scoop	9.4	\N	\N
03868	1	1	fl oz	30.5	\N	\N
03869	1	1	scoop	8.5	\N	\N
03870	1	1	fl oz	31.0	\N	\N
03900	1	1	fl oz	30.5	\N	\N
03901	1	1	fl oz	31.9	\N	\N
03913	1	1	scoop	9.4	\N	\N
03925	1	1	fl oz	30.5	\N	\N
03926	1	1	fl oz	31.4	\N	\N
03928	1	1	scoop	8.5	\N	\N
03929	1	1	scoop	9.3	\N	\N
03930	1	1	fl oz	30.5	\N	\N
03934	1	1	oz	28.35	\N	\N
03935	1	1	fl oz	30.5	\N	\N
03936	1	1	fl oz	30.4	\N	\N
03937	1	1	fl oz	31.4	\N	\N
03938	1	1	scoop	8.4	\N	\N
03939	1	1	fl oz	30.4	\N	\N
03940	1	1	fl oz	31.4	\N	\N
03941	1	1	scoop	8.7	\N	\N
03942	1	1	serving 100 ml	106	\N	\N
03942	2	1	fl oz	30.5	\N	\N
03943	1	1	scoop	8.7	\N	\N
03943	2	1	serving 100 ml	106	\N	\N
03944	1	1	fl oz	30.5	\N	\N
03945	1	1	fl oz	30.5	\N	\N
03946	1	1	fl oz	30.5	\N	\N
03947	1	1	fl oz	30.5	\N	\N
03948	1	1	fl oz	30.5	\N	\N
03949	1	1	fl oz	30.4	\N	\N
03950	1	1	scoop	8.5	\N	\N
03951	1	1	fl oz	31.4	\N	\N
03952	1	1	fl oz	31.4	\N	\N
03953	1	1	fl oz	30.5	\N	\N
03954	1	1	scoop	8.7	\N	\N
03955	1	1	fl oz	30.8	\N	\N
03956	1	1	oz	31	\N	\N
03956	2	1	container	113	\N	\N
03957	1	1	scoop	8.7	1	\N
03959	1	1	container	170	\N	\N
03960	1	1	fl oz	30.5	\N	\N
03961	1	1	fl oz	31.4	\N	\N
03963	1	1	fl oz	30.5	\N	\N
03964	1	1	bar	19	1	\N
03965	1	1	tbsp	16	8	1.569
03965	2	1	container	69	8	3.378
03966	1	1	fl oz	29.2	\N	\N
03967	1	1	scoop	8.8	\N	\N
03968	1	1	fl oz	29.2	\N	\N
03980	1	1	scoop	8.7	\N	\N
03981	1	5	fl oz	152	1	\N
03982	1	1	fl oz	30.4	1	\N
03982	2	5	fl oz	152	\N	\N
03983	1	1	fl oz	30.4	1	\N
03983	2	5	fl oz	152	\N	\N
03984	1	1	fl oz	30.4	1	\N
03984	2	5	fl oz	152	\N	\N
03985	1	1	fl oz	30.4	1	\N
03985	2	5	fl oz	152	\N	\N
03986	1	1	fl oz	30.5	1	\N
03986	2	5	fl oz	152	1	\N
03987	1	1	fl oz	30.4	1	\N
03987	2	5	fl oz	152	\N	\N
03988	1	1	fl oz	30.4	1	\N
03988	2	5	fl oz	152	\N	\N
03989	1	1	fl oz	30.4	1	\N
03989	2	5	fl oz	152	\N	\N
03990	1	1	fl oz	30.4	1	\N
03990	2	5	fl oz	152	\N	\N
03991	1	5	fl oz	153	1	\N
03992	1	1	fl oz	30.4	\N	\N
03992	2	5	fl oz	153	1	\N
03993	1	1	fl oz	30.4	1	\N
03993	2	5	fl oz	152	\N	\N
03994	1	1	bottle	140	1	\N
03995	1	1	packet	99	1	\N
03997	1	4	biscuit	8.0	1	\N
03998	1	18	piece	7.0	1	\N
03999	1	1	scoop	9.5	\N	\N
04001	1	1	tbsp	12.8	\N	\N
04001	2	1	cup	205	\N	\N
04002	1	1	tbsp	12.8	\N	\N
04002	2	1	cup	205	\N	\N
04011	1	1	tbsp	15.0	\N	\N
04013	1	1	tbsp	16	\N	\N
04014	1	1	tbsp	16	\N	\N
04015	1	1	tbsp	15	\N	\N
04015	2	1	cup	245	\N	\N
04015	3	1	serving (2 tbsp)	30	\N	\N
04016	1	1	tablespoon	15	\N	\N
04016	2	1	cup	245	\N	\N
04017	1	1	tbsp	16	\N	\N
04017	2	1	cup	250	\N	\N
04017	3	1	serving (2 tbsp)	30	\N	\N
04018	1	1	tbsp	14.7	\N	\N
04018	2	1	cup	235	\N	\N
04020	1	1	tablespoon	16	\N	\N
04020	2	1	cup	260	\N	\N
04020	3	1	serving (2 tbsp)	30	\N	\N
04021	1	1	tablespoon	15.0	\N	\N
04021	2	1	cup	240	\N	\N
04022	1	1	tablespoon	16	\N	\N
04022	2	1	cup	260	\N	\N
04023	1	1	tablespoon	15	\N	\N
04023	2	1	cup	245	\N	\N
04023	3	1	serving (2 tbsp)	15	\N	\N
04025	1	1	tbsp	13.8	\N	\N
04025	2	1	cup	220	\N	\N
04025	3	1	packet	10.0	\N	\N
04026	1	1	tablespoon	13.8	\N	\N
04026	2	1	cup	220	\N	\N
04027	1	1	tbsp	15.0	\N	\N
04027	2	1	cup	240	\N	\N
04028	1	1	tablespoon	15.0	\N	\N
04028	2	1	cup	240	\N	\N
04029	1	1	tablespoon	14.1	\N	\N
04029	2	1	cup	225	\N	\N
04030	1	1	tablespoon	15	\N	\N
04030	2	1	cup	245	\N	\N
04031	1	1	tbsp	12.8	\N	\N
04031	2	1	cup	205	\N	\N
04034	1	1	tbsp	13.6	\N	\N
04034	2	1	cup	218	\N	\N
04034	3	1	tsp	4.5	\N	\N
04037	1	1	tablespoon	13.6	\N	\N
04037	2	1	cup	218	\N	\N
04037	3	1	tsp	4.5	\N	\N
04038	1	1	tsp	4.5	\N	\N
04038	2	1	tablespoon	13.6	\N	\N
04038	3	1	cup	218	\N	\N
04042	1	1	tbsp	13.5	\N	\N
04042	2	1	cup	216	\N	\N
04042	3	1	tsp	4.5	\N	\N
04044	1	1	tbsp	13.6	\N	\N
04044	2	1	cup	218	\N	\N
04044	3	1	tsp	4.5	\N	\N
04047	1	1	tbsp	13.6	\N	\N
04047	2	1	cup	218	\N	\N
04047	3	1	tsp	4.5	\N	\N
04053	1	1	tablespoon	13.5	\N	\N
04053	2	1	cup	216	\N	\N
04053	3	1	tsp	4.5	\N	\N
04055	1	1	tbsp	13.6	\N	\N
04055	2	1	cup	216	\N	\N
04055	3	1	tsp	4.5	\N	\N
04058	1	1	tablespoon	13.6	\N	\N
04058	2	1	cup	218	\N	\N
04058	3	1	tsp	4.5	\N	\N
04060	1	1	tbsp	13.6	\N	\N
04060	2	1	cup	218	\N	\N
04060	3	1	tsp	4.5	\N	\N
04073	1	1	tsp	4.7	\N	\N
04073	2	1	stick	113	\N	\N
04114	1	1	tbsp	14.7	\N	\N
04114	2	1	cup	235	\N	\N
04120	1	1	tbsp	16	\N	\N
04120	2	1	cup	250	\N	\N
04128	1	1	tbsp	14.9	16	1.399
04128	2	1	cup	232	\N	\N
04128	3	1	tsp	4.8	\N	\N
04133	1	1	tablespoon	14.0	\N	\N
04133	2	1	cup	220	\N	\N
04135	1	1	tablespoon	16	\N	\N
04135	2	1	cup	250	\N	\N
04141	1	1	tablespoon	15.0	\N	\N
04142	1	1	tablespoon	16	\N	\N
04142	2	1	cup	260	\N	\N
04143	1	1	tablespoon	14.7	\N	\N
04143	2	1	cup	235	\N	\N
04144	1	1	tablespoon	15.0	\N	\N
04144	2	1	cup	240	\N	\N
04145	1	1	tablespoon	13.8	\N	\N
04145	2	1	cup	220	\N	\N
04146	1	1	tablespoon	14.0	\N	\N
04146	2	1	cup	220	\N	\N
04367	1	1	tablespoon	16	\N	\N
04367	2	1	cup	256	\N	\N
04501	1	1	tablespoon	13.6	\N	\N
04501	2	1	cup	218	\N	\N
04501	3	1	tsp	4.5	\N	\N
04502	1	1	tablespoon	13.6	\N	\N
04502	2	1	cup	218	\N	\N
04502	3	1	tsp	4.5	\N	\N
04506	1	1	tbsp	13.6	\N	\N
04506	2	1	cup	218	\N	\N
04506	3	1	tsp	4.5	\N	\N
04510	1	1	tbsp	13.6	\N	\N
04510	2	1	cup	218	\N	\N
04510	3	1	tsp	4.5	\N	\N
04511	1	1	tablespoon	13.6	\N	\N
04511	2	1	cup	218	\N	\N
04511	3	1	tsp	4.5	\N	\N
04513	1	1	tablespoon	13.6	\N	\N
04513	2	1	cup	218	\N	\N
04513	3	2	tbsp (1/8 cup)	27	\N	\N
04514	1	1	tablespoon	13.6	\N	\N
04514	2	1	cup	218	\N	\N
04514	3	1	tsp	4.5	\N	\N
04515	1	1	tablespoon	13.6	\N	\N
04515	2	1	cup	218	\N	\N
04515	3	1	tsp	4.5	\N	\N
04516	1	1	tablespoon	13.6	\N	\N
04516	2	1	cup	218	\N	\N
04516	3	1	tsp	4.5	\N	\N
04517	1	1	tablespoon	13.6	\N	\N
04517	2	1	cup	218	\N	\N
04517	3	1	tsp	4.5	\N	\N
04518	1	1	tbsp	13.6	\N	\N
04518	2	1	cup	218	\N	\N
04518	3	1	tsp	4.5	\N	\N
04520	1	1	tbsp	12.8	\N	\N
04520	2	1	cup	205	\N	\N
04528	1	1	tbsp	13.6	\N	\N
04528	2	1	cup	218	\N	\N
04528	3	1	tsp	4.5	\N	\N
04529	1	1	tablespoon	13.6	\N	\N
04529	2	1	cup	218	\N	\N
04529	3	1	tsp	4.5	\N	\N
04530	1	1	tablespoon	13.6	\N	\N
04530	2	1	cup	218	\N	\N
04530	3	1	tsp	4.5	\N	\N
04531	1	1	tablespoon	13.6	\N	\N
04531	2	1	cup	218	\N	\N
04531	3	1	tsp	4.5	\N	\N
04532	1	1	tablespoon	13.6	\N	\N
04532	2	1	cup	218	\N	\N
04532	3	1	tsp	4.5	\N	\N
04534	1	1	tbsp	13.6	\N	\N
04534	2	1	cup	218	\N	\N
04534	3	1	tsp	4.5	\N	\N
04536	1	1	tablespoon	13.6	\N	\N
04536	2	1	cup	218	\N	\N
04536	3	1	tsp	4.5	\N	\N
04539	1	1	tbsp	15	\N	\N
04539	2	1	cup	245	\N	\N
04541	1	1	tablespoon	13.6	\N	\N
04541	2	1	cup	218	\N	\N
04541	3	1	tsp	4.5	\N	\N
04542	1	1	tbsp	12.8	\N	\N
04542	2	1	cup	205	\N	\N
04543	1	1	tablespoon	13.6	\N	\N
04543	2	1	cup	218	\N	\N
04543	3	1	tsp	4.5	\N	\N
04544	1	1	tablespoon	12.8	\N	\N
04544	2	1	cup	205	\N	\N
04545	1	1	tbsp	13.6	\N	\N
04545	2	1	cup	218	\N	\N
04545	3	1	tsp	4.5	\N	\N
04546	1	1	tablespoon	12.8	\N	\N
04546	2	1	cup	205	\N	\N
04548	1	1	tbsp	12.8	\N	\N
04548	2	1	cup	205	\N	\N
04549	1	1	tbsp	12.8	\N	\N
04549	2	1	cup	205	\N	\N
04550	1	1	tbsp	12.8	\N	\N
04550	2	1	cup	205	\N	\N
04551	1	1	tbsp	12.8	\N	\N
04551	2	1	cup	205	\N	\N
04554	1	1	tbsp	12.8	\N	\N
04554	2	1	cup	205	\N	\N
04556	1	1	tbsp	12.8	\N	\N
04556	2	1	cup	205	\N	\N
04559	1	1	tbsp	12.8	\N	\N
04559	2	1	cup	205	\N	\N
04560	1	1	tbsp	12.8	\N	\N
04560	2	1	cup	205	\N	\N
04570	1	1	tbsp	13.6	\N	\N
04570	2	1	cup	218	\N	\N
04572	1	1	tbsp	13.6	\N	\N
04572	2	1	cup	218	\N	\N
04572	3	1	tsp	4.5	\N	\N
04573	1	1	tbsp	13.6	\N	\N
04573	2	1	cup	218	\N	\N
04573	3	1	tsp	4.5	\N	\N
04574	1	1	tbsp	12.8	\N	\N
04574	2	1	cup	205	\N	\N
04575	1	1	tbsp	12.8	\N	\N
04575	2	1	tsp	4.3	\N	\N
04575	3	1	cup	205	\N	\N
04576	1	1	tbsp	12.8	\N	\N
04576	2	1	cup	205	\N	\N
04581	1	1	tbsp	14.0	\N	\N
04581	2	1	cup	218	\N	\N
04581	3	1	tsp	4.5	\N	\N
04582	1	1	tbsp	14.0	\N	\N
04582	2	1	cup	218	\N	\N
04582	3	1	tsp	4.5	\N	\N
04583	1	1	tbsp	14.0	\N	\N
04583	2	1	cup	218	\N	\N
04583	3	1	tsp	4.5	\N	\N
04584	1	1	tbsp	14.0	\N	\N
04584	2	1	cup	218	\N	\N
04584	3	1	tsp	4.5	\N	\N
04585	1	1	tbsp	14.1	8	0.614
04585	2	1	cup	227	\N	\N
04585	3	1	tsp	4.7	\N	\N
04585	4	1	stick	111	4	1.258
04586	1	1	tbsp	12.8	\N	\N
04586	2	1	cup	205	\N	\N
04587	1	1	tbsp	12.8	\N	\N
04587	2	1	cup	205	\N	\N
04588	1	1	tbsp	13.6	\N	\N
04588	2	1	cup	218	\N	\N
04588	3	1	tsp	4.5	\N	\N
04589	1	1	tsp	4.5	\N	\N
04589	2	1	tbsp	13.6	\N	\N
04589	3	1	cup	218	\N	\N
04590	1	1	tbsp	13.6	\N	\N
04590	2	1	tsp	4.5	\N	\N
04590	3	1	cup	218	\N	\N
04591	1	1	tbsp	13.6	\N	\N
04591	2	1	tsp	4.5	\N	\N
04591	3	1	cup	218	\N	\N
04592	1	1	tbsp	12.5	\N	\N
04592	2	1	tsp	4.5	\N	\N
04592	3	1	cup	205	\N	\N
04593	1	1	tbsp	13.6	\N	\N
04593	2	1	tsp	4.5	\N	\N
04593	3	1	cup	218	\N	\N
04594	1	1	tbsp	13.6	\N	\N
04594	2	1	tsp	4.5	\N	\N
04594	3	1	cup	218	\N	\N
04595	1	1	tbsp	12.8	\N	\N
04595	2	1	cup	205	\N	\N
04600	1	1	tablespoon	14.0	\N	\N
04601	1	1	tablespoon	14.0	\N	\N
04602	1	1	tablespoon	14.0	\N	\N
04606	1	1	tablespoon	12.8	\N	\N
04606	2	1	oz	28.35	\N	\N
04609	1	1	tsp	4.3	\N	\N
04610	1	1	tbsp	14.0	1	\N
04610	2	1	cup	227	\N	\N
04610	3	1	tsp	4.7	\N	\N
04610	4	1	pat (1"" sq, 1/3"" high)	5.0	\N	\N
04610	5	1	stick	113	\N	\N
04611	1	1	tbsp	14.2	\N	\N
04611	2	1	cup	227	\N	\N
04612	1	1	tbsp	14.3	\N	\N
04612	2	1	cup	229	\N	\N
04612	3	1	tsp	4.8	1	\N
04613	1	1	tbsp	14.0	\N	\N
04613	2	1	cup	229	\N	\N
04613	3	1	tsp	4.8	\N	\N
04614	1	1	tbsp	14.3	\N	\N
04614	2	1	cup	229	\N	\N
04614	3	1	tsp	4.8	1	\N
04615	1	1	tbsp	12.8	\N	\N
04615	2	1	cup	205	\N	\N
04617	1	1	tbsp	14.2	\N	\N
04617	2	1	cup	227	\N	\N
04617	3	1	pat (1"" sq, 1/3"" high)	5.0	\N	\N
04617	4	1	stick	113	\N	\N
04618	1	1	tbsp	14.2	\N	\N
04618	2	1	cup	227	\N	\N
04620	1	1	tbsp	14.0	\N	\N
04624	1	1	tbsp	15.0	\N	\N
04626	1	1	tablespoon	14.0	\N	\N
04627	1	1	tablespoon	14.0	\N	\N
04628	1	1	tbsp	14.0	1	\N
04629	1	1	tbsp (1 NLEA serving)	14.0	\N	\N
04630	1	1	tbsp	14.0	\N	\N
04631	1	1	tbsp	14.6	\N	\N
04631	2	1	cup	233	\N	\N
04633	1	1	tbsp	15.0	\N	\N
04633	2	1	cup	240	\N	\N
04634	1	1	tbsp	12.8	\N	\N
04634	2	1	cup	205	\N	\N
04635	1	1	tbsp	16	\N	\N
04635	2	1	cup	256	\N	\N
04636	1	1	tbsp	14.0	\N	\N
04636	2	1	cup	231	\N	\N
04638	1	1	tablespoon	14.0	\N	\N
04639	1	1	tablespoon	15.0	\N	\N
04639	2	1	serving	30	\N	\N
04640	1	1	tablespoon	15.0	\N	\N
04640	2	1	serving (2 tbsp)	30	\N	\N
04641	1	1	tablespoon	15.0	\N	\N
04642	1	1	tablespoon	13.6	\N	\N
04642	2	1	teaspoon	4.5	\N	\N
04642	3	1	cup	218	\N	\N
04643	1	1	tablespoon	13.6	\N	\N
04643	2	1	cup	218	\N	\N
04644	1	1	tablespoon	13.6	\N	\N
04644	2	1	teaspoon	4.5	\N	\N
04644	3	1	cup	218	\N	\N
04645	1	1	tablespoon	13.6	\N	\N
04645	2	1	teaspoon	4.5	\N	\N
04645	3	1	cup	218	\N	\N
04646	1	1	tbsp	13.6	\N	\N
04646	2	1	cup	218	\N	\N
04646	3	1	tsp	4.5	\N	\N
04648	1	1	tbsp	13.6	\N	\N
04648	2	1	cup	218	\N	\N
04648	3	1	tsp	4.5	\N	\N
04649	1	1	tbsp	13.6	\N	\N
04649	2	1	cup	218	\N	\N
04649	3	1	tsp	4.5	\N	\N
04650	1	1	tbsp	13.6	\N	\N
04650	2	1	cup	218	\N	\N
04650	3	1	tsp	4.5	\N	\N
04651	1	1	tbsp	13.6	\N	\N
04651	2	1	cup	218	\N	\N
04651	3	1	tsp	4.5	\N	\N
04652	1	1	tbsp	13.6	\N	\N
04652	2	1	cup	218	\N	\N
04652	3	1	tsp	4.5	\N	\N
04653	1	1	tbsp	13.6	\N	\N
04653	2	1	cup	218	\N	\N
04653	3	1	tsp	4.5	\N	\N
04654	1	1	tbsp	13.6	\N	\N
04654	2	1	cup	218	\N	\N
04654	3	1	tsp	4.5	\N	\N
04655	1	1	tbsp	14.0	1	\N
04656	1	1	tbsp	13.6	\N	\N
04656	2	1	cup	218	\N	\N
04656	3	1	tsp	4.5	\N	\N
04657	1	1	tbsp	13.6	\N	\N
04657	2	1	cup	218	\N	\N
04657	3	1	tsp	4.5	\N	\N
04658	1	1	tbsp	13.6	\N	\N
04658	2	1	cup	218	\N	\N
04658	3	1	tsp	4.5	\N	\N
04659	1	1	tbsp	13.6	\N	\N
04659	2	1	cup	218	\N	\N
04659	3	1	tsp	4.5	\N	\N
04660	1	1	tbsp	13.6	\N	\N
04660	2	1	cup	218	\N	\N
04660	3	1	tsp	4.5	\N	\N
04661	1	1	tbsp	13.6	\N	\N
04661	2	1	cup	218	\N	\N
04661	3	1	tsp	4.5	\N	\N
04662	1	1	tbsp	13.6	\N	\N
04662	2	1	cup	218	\N	\N
04662	3	1	tsp	4.5	\N	\N
04663	1	1	tbsp	13.6	\N	\N
04663	2	1	cup	218	\N	\N
04663	3	1	tsp	4.5	\N	\N
04664	1	1	tbsp	13.6	\N	\N
04664	2	1	cup	218	\N	\N
04664	3	1	tsp	4.5	\N	\N
04665	1	1	tbsp	14.0	1	\N
04666	1	1	tbsp	12.8	\N	\N
04666	2	1	cup	205	\N	\N
04667	1	1	tbsp	12.8	\N	\N
04667	2	1	cup	205	\N	\N
04668	1	1	tbsp	14.0	1	\N
04668	2	1	cup	227	\N	\N
04668	3	1	tsp	4.7	\N	\N
04669	1	1	tablespoon	13.6	\N	\N
04669	2	1	cup	218	\N	\N
04669	3	1	teaspoon	4.5	\N	\N
04670	1	1	tbsp	13.6	\N	\N
04670	2	1	cup	218	\N	\N
04670	3	1	tsp	4.5	\N	\N
04673	1	1	tablespoon	14.0	\N	\N
04674	1	1	tbsp	14.0	\N	\N
04675	1	1	tablespoon	14.0	\N	\N
04676	1	1	tablespoon	14.0	\N	\N
04677	1	1	tablespoon	14.0	\N	\N
04678	1	1	tbsp	14.0	1	\N
04679	1	1	spray , about 1/3 second (1 NLEA serving)	0.3	1	\N
04683	1	1	tbsp (1 NLEA serving)	14.0	6	0
04684	1	1	tablespoon (1 NLEA serving)	14.0	\N	\N
04685	1	1	tbsp (1 NLEA serving)	14.0	\N	\N
04685	2	1	cup	214	3	5.338
04686	1	2	tbsp (1 serving)	30	2	\N
04687	1	1	tablespoon (1 NLEA serving)	14.0	\N	\N
04688	1	1	serving (approximately 10 sprays)	8.0	\N	\N
04689	1	1	tbsp (1 NLEA serving)	14.0	\N	\N
04690	1	1	tbsp	14.9	16	1.399
04691	1	1	tablespoon	14.0	\N	\N
04691	2	1	cup	227	\N	\N
04691	3	1	teaspoon	4.0	\N	\N
04692	1	1	tbsp	14.0	1	\N
04693	1	1	tbsp	14.0	1	\N
04694	1	1	tbsp	14.0	1	\N
04694	2	1	cup	229	\N	\N
04694	3	1	teaspoon	4.8	\N	\N
04695	1	1	tbsp	14.0	1	\N
04695	2	1	cup	229	\N	\N
04695	3	1	teaspoon	4.8	\N	\N
04696	1	1	tbsp	14.0	1	\N
04696	2	1	cup	229	\N	\N
04696	3	1	teaspoon	4.8	\N	\N
04697	1	1	tbsp	14.0	1	\N
04698	1	1	tablespoon	14.0	\N	\N
04698	2	1	cup	218	\N	\N
04698	3	1	teaspoon	4.5	\N	\N
04699	1	1	tablespoon	14.0	\N	\N
04699	2	1	cup	218	\N	\N
04699	3	1	teaspoon	4.5	\N	\N
04700	1	1	tablespoon	13.6	\N	\N
04700	2	1	cup	218	\N	\N
04700	3	1	teaspoon	4.5	\N	\N
04701	1	1	tablespoon	13.6	\N	\N
04701	2	1	cup	218	\N	\N
04701	3	1	teaspoon	4.5	\N	\N
04702	1	1	tablespoon	13.6	\N	\N
04702	2	1	cup	218	\N	\N
04702	3	1	teaspoon	4.5	\N	\N
04703	1	2	tbsp	30	3	0
04704	1	2	tbsp	33	1	\N
04705	1	2	tbsp (1 NLEA serving)	34	2	\N
04706	1	2	tbsp (1 NLEA serving)	30	1	\N
04707	1	1	tablespoon	13.7	\N	\N
04707	2	1	cup	219	1	\N
04708	1	1	tbsp	15.0	1	\N
04708	2	1	cup	232	24	4.973
05000	1	3	oz	85	\N	\N
05000	2	1	breast	384	48	76.654
05001	1	3	oz	85	\N	\N
05001	2	1	chicken	1046	\N	\N
05002	1	3	oz	85	\N	\N
05002	2	1	unit (yield from 1 lb ready-to-cook chicken)	308	\N	\N
05002	3	1	chicken	1028	\N	\N
05003	1	3	oz	85	\N	\N
05003	2	1	unit (yield from 1 lb ready-to-cook chicken)	212	\N	\N
05003	3	1	chicken	708	\N	\N
05004	1	3	oz	85	\N	\N
05004	2	1	unit (yield from 1 lb ready-to-cook chicken)	205	\N	\N
05004	3	1	chicken	682	\N	\N
05005	1	3	oz	85	\N	\N
05005	2	1	unit (yield from 1 lb ready-to-cook chicken)	225	\N	\N
05005	3	1	chicken	751	\N	\N
05006	1	3	oz	85	\N	\N
05006	2	1	unit (yield from 1 lb ready-to-cook chicken)	276	\N	\N
05006	3	0.5	chicken, bone removed	460	\N	\N
05007	1	3	oz	85	\N	\N
05007	2	1	unit (yield from 1 lb ready-to-cook chicken)	280	\N	\N
05007	3	0.5	chicken, bone removed	466	\N	\N
05008	1	3	oz	85	\N	\N
05008	2	1	unit (yield from 1 lb ready-to-cook chicken)	188	\N	\N
05008	3	0.5	chicken, bone removed	314	\N	\N
05009	1	1	cup, chopped or diced	140	\N	\N
05009	2	1	unit (yield from 1 lb ready-to-cook chicken)	178	\N	\N
05009	3	0.5	chicken, bone removed	299	\N	\N
05010	1	1	cup, chopped or diced	140	\N	\N
05010	2	1	unit (yield from 1 lb ready-to-cook chicken)	200	\N	\N
05010	3	0.5	chicken, bone removed	334	\N	\N
05011	1	3	oz	85	\N	\N
05011	2	1	unit (yield from 1 lb ready-to-cook chicken)	197	\N	\N
05011	3	0.5	chicken, bone and skin removed	329	\N	\N
05012	1	1	cup, chopped or diced	140	\N	\N
05012	2	1	unit (yield from 1 lb ready-to-cook chicken)	155	\N	\N
05012	3	0.5	chicken, bone and skin removed	258	\N	\N
05013	1	1	cup, chopped or diced	140	\N	\N
05013	2	1	tbsp	8.7	\N	\N
05013	3	1	unit (yield from 1 lb ready-to-cook chicken)	146	\N	\N
05014	1	1	cup, chopped or diced	140	\N	\N
05014	2	1	tbsp	8.7	\N	\N
05014	3	1	unit (yield from 1 lb ready-to-cook chicken)	157	\N	\N
05015	1	1	unit (yield from 1 lb ready-to-cook chicken)	47	\N	\N
05015	2	0.5	chicken, skin only	79	\N	\N
05016	1	1	unit (yield from 1 lb ready-to-cook chicken)	114	\N	\N
05016	2	0.5	chicken, skin only	190	\N	\N
05017	1	1	unit (yield from 1 lb ready-to-cook chicken)	33	\N	\N
05017	2	0.5	chicken, skin only	56	\N	\N
05018	1	1	unit (yield from 1 lb ready-to-cook chicken)	34	\N	\N
05018	2	0.5	chicken, skin only	56	\N	\N
05019	1	1	unit (yield from 1 lb ready-to-cook chicken)	44	\N	\N
05019	2	0.5	chicken, skin only	72	\N	\N
05020	1	1	unit (yield from 1 lb ready-to-cook chicken)	23	\N	\N
05020	2	1	giblets	75	\N	\N
05021	1	1	cup, chopped or diced	145	\N	\N
05070	1	1	cup, chopped or diced	140	\N	\N
05021	2	1	unit (yield from 1 lb ready-to-cook chicken)	13.0	\N	\N
05022	1	1	cup chopped or dice	145	\N	\N
05023	1	1	oz	28.35	\N	\N
05023	2	1	lb	453.0	\N	\N
05024	1	1	cup chopped or dice	145	\N	\N
05025	1	1	heart	6.1	\N	\N
05025	2	1	unit (yield from 1 lb ready-to-cook chicken)	1.8	\N	\N
05026	1	1	cup, chopped or diced	145	\N	\N
05026	2	1	unit (yield from 1 lb ready-to-cook chicken)	1.0	\N	\N
05027	1	1	liver	44	\N	\N
05028	1	1	liver	44	\N	\N
05029	1	1	unit (yield from 1 lb ready-to-cook chicken)	116	\N	\N
05029	2	0.5	chicken, bone removed	194	\N	\N
05030	1	1	unit (yield from 1 lb ready-to-cook chicken)	113	\N	\N
05030	2	0.5	chicken, bone removed	188	\N	\N
05031	1	1	unit (yield from 1 lb ready-to-cook chicken)	78	\N	\N
05031	2	0.5	chicken, bone removed	130	\N	\N
05032	1	1	unit (yield from 1 lb ready-to-cook chicken)	79	\N	\N
05032	2	0.5	chicken, bone removed	132	\N	\N
05033	1	1	unit (yield from 1 lb ready-to-cook chicken)	90	\N	\N
05033	2	0.5	chicken, bone removed	150	\N	\N
05034	1	3	oz	85	\N	\N
05034	2	1	unit (yield from 1 lb ready-to-cook chicken)	160	\N	\N
05034	3	0.5	chicken, bone removed	266	\N	\N
05035	1	3	oz	85	\N	\N
05035	2	1	unit (yield from 1 lb ready-to-cook chicken)	167	\N	\N
05035	3	0.5	chicken, bone removed	278	\N	\N
05036	1	1	unit (yield from 1 lb ready-to-cook chicken)	110	\N	\N
05036	2	0.5	chicken, bone removed	184	\N	\N
05037	1	1	unit (yield from 1 lb ready-to-cook chicken)	101	\N	\N
05037	2	0.5	chicken, bone removed	167	\N	\N
05038	1	1	unit (yield from 1 lb ready-to-cook chicken)	110	\N	\N
05038	2	0.5	chicken, bone removed	184	\N	\N
05039	1	1	unit (yield from 1 lb ready-to-cook chicken)	88	\N	\N
05039	2	0.5	chicken, bone and skin removed	147	\N	\N
05040	1	1	cup	140	\N	\N
05040	2	1	unit (yield from 1 lb ready-to-cook chicken)	64	\N	\N
05041	1	1	cup, chopped or diced	140	\N	\N
05041	2	1	unit (yield from 1 lb ready-to-cook chicken)	64	\N	\N
05041	3	0.5	chicken, bone and skin removed	107	\N	\N
05042	1	1	cup, chopped or diced	140	\N	\N
05042	2	1	unit (yield from 1 lb ready-to-cook chicken)	71	\N	\N
05042	3	0.5	chicken, bone and skin removed	119	\N	\N
05043	1	1	unit (yield from 1 lb ready-to-cook chicken)	109	\N	\N
05043	2	0.5	chicken, bone and skin removed	182	\N	\N
05044	1	1	cup	140	\N	\N
05044	2	1	unit (yield from 1 lb ready-to-cook chicken)	91	\N	\N
05045	1	1	cup, chopped or diced	140	\N	\N
05045	2	1	unit (yield from 1 lb ready-to-cook chicken)	81	\N	\N
05045	3	0.5	chicken, bone and skin removed	136	\N	\N
05046	1	1	cup, chopped or diced	140	\N	\N
05046	2	1	unit (yield from 1 lb ready-to-cook chicken)	86	\N	\N
05046	3	0.5	chicken, bone and skin removed	143	\N	\N
05047	1	1	tbsp	12.8	\N	\N
05047	2	1	unit (yield from 1 lb ready-to-cook chicken)	32	\N	\N
05047	3	0.5	chicken, separable fat	52	\N	\N
05048	1	1	unit (yield from 1 lb ready-to-cook chicken)	59	\N	\N
05048	2	0.5	back, bone removed	99	\N	\N
05049	1	1	unit (yield from 1 lb ready-to-cook chicken)	72	\N	\N
05049	2	0.5	back, bone removed	120	\N	\N
05050	1	1	unit (yield from 1 lb ready-to-cook chicken)	44	\N	\N
05050	2	0.5	back, bone removed	72	\N	\N
05051	1	1	unit (yield from 1 lb ready-to-cook chicken)	32	\N	\N
05051	2	0.5	back, bone removed	53	\N	\N
05052	1	3	oz	85	\N	\N
05052	2	1	unit (yield from 1 lb ready-to-cook chicken)	36	\N	\N
05052	3	1	cup, chopped or diced	160	\N	\N
05053	1	1	unit (yield from 1 lb ready-to-cook chicken)	31	\N	\N
05053	2	0.5	back, bone and skin removed	51	\N	\N
05054	1	1	unit (yield from 1 lb ready-to-cook chicken)	35	\N	\N
05054	2	0.5	back, bone and skin removed	58	\N	\N
05055	1	1	unit (yield from 1 lb ready-to-cook chicken)	24	\N	\N
05055	2	0.5	back, bone and skin removed	40	\N	\N
05056	1	1	unit (yield from 1 lb ready-to-cook chicken)	26	\N	\N
05056	2	0.5	back, bone and skin removed	42	\N	\N
05057	1	0.5	breast, bone removed (yield from 1 lb ready-to-cook chicken)	87	\N	\N
05057	2	0.5	breast, bone removed	145	\N	\N
05058	1	1	unit (yield from 1 lb ready-to-cook chicken)	84	\N	\N
05058	2	0.5	breast, bone removed	140	\N	\N
05059	1	1	unit (yield from 1 lb ready-to-cook chicken)	59	\N	\N
05059	2	0.5	breast, bone removed	98	\N	\N
05060	1	1	cup, chopped or diced	140	\N	\N
05060	2	1	unit (yield from 1 lb ready-to-cook chicken)	58	\N	\N
05060	3	0.5	breast, bone removed	98	\N	\N
05061	1	1	cup, chopped or diced	140	\N	\N
05061	2	1	unit (yield from 1 lb ready-to-cook chicken)	66	\N	\N
05061	3	0.5	breast, bone removed	110	\N	\N
05062	1	3	oz	85	\N	\N
05062	2	1	piece	272	13	81.254
05062	3	1	package	926	13	570.981
05063	1	1	unit (yield from 1 lb ready-to-cook chicken)	52	\N	\N
05063	2	0.5	breast, bone and skin removed	86	\N	\N
05064	1	1	cup, chopped or diced	140	\N	\N
05064	2	1	unit (yield from 1 lb ready-to-cook chicken)	52	\N	\N
05064	3	0.5	breast, bone and skin removed	86	\N	\N
05065	1	1	cup, chopped or diced	140	\N	\N
05065	2	1	unit (yield from 1 lb ready-to-cook chicken)	57	\N	\N
05065	3	0.5	breast, bone and skin removed	95	\N	\N
05066	1	1	drumstick with skin	133	50	22.217
05066	2	1	drumstick	130	25	\N
05067	1	1	unit (yield from 1 lb ready-to-cook chicken)	43	\N	\N
05067	2	1	drumstick, bone removed	72	\N	\N
05068	1	1	unit (yield from 1 lb ready-to-cook chicken)	29	\N	\N
05068	2	1	drumstick, bone removed	49	\N	\N
05069	1	1	drumstick with skin (yield from 1 lb ready-to-cook chicken)	105	50	18.415
05069	2	1	drumstick without skin	96	25	\N
05070	2	1	unit (yield from 1 lb ready-to-cook chicken)	34	\N	\N
05070	3	1	drumstick, bone removed	57	\N	\N
05071	1	1	drumstick  with skin	130	25	\N
05071	2	1	drumstick without skin	122	50	19.32
05072	1	1	unit (yield from 1 lb ready-to-cook chicken)	25	\N	\N
05072	2	1	drumstick, bone and skin removed	42	\N	\N
05073	1	1	drumstick without skin	96	25	\N
05073	2	1	drumstick with skin	105	50	18.415
05074	1	3	oz	85	\N	\N
05074	2	1	drumstick, bone and skin removed	46	\N	\N
05074	3	1	cup, chopped or diced	160	\N	\N
05074	4	1	unit (yield from 1 lb ready-to-cook chicken)	28	\N	\N
05075	1	3	oz	85	\N	\N
05075	2	1	leg, with skin (Sum of drumstick+thigh+back)	344	\N	\N
05075	3	1	drumstick with skin	111	\N	\N
05075	4	1	thigh with skin	185	\N	\N
05075	5	1	back with skin	49	\N	\N
05076	1	1	unit (yield from 1 lb ready-to-cook chicken)	95	\N	\N
05076	2	1	leg, bone removed	158	\N	\N
05077	1	1	unit (yield from 1 lb ready-to-cook chicken)	67	\N	\N
05077	2	1	leg, bone removed	112	\N	\N
05078	1	3	oz	85	\N	\N
05078	2	1	leg, with skin (Sum of drumstick+thigh+back)	258	\N	\N
05078	3	1	thigh with skin	133	\N	\N
05078	4	1	drumstick with skin	91	\N	\N
05078	5	1	back with skin	35	\N	\N
05079	1	1	cup, chopped or diced	140	\N	\N
05079	2	1	unit (yield from 1 lb ready-to-cook chicken)	75	\N	\N
05079	3	1	leg, bone removed	125	\N	\N
05080	1	3	oz	85	\N	\N
05080	2	1	leg, bone and skin removed (Sum of drumstick+thigh+back meat only)	265	\N	\N
05080	3	1	thigh bone and skin removed	147	\N	\N
05080	4	1	drumstick bone and skin removed	88	\N	\N
05080	5	1	back bone and skin removed	30	\N	\N
05081	1	1	unit (yield from 1 lb ready-to-cook chicken)	56	\N	\N
05081	2	1	leg, bone and skin removed	94	\N	\N
05082	1	3	oz	85	\N	\N
05082	2	1	leg (Sum of drumstick+thigh+back meat only)	199	\N	\N
05082	3	1	drumstick bone and skin	105	\N	\N
05082	4	1	thigh bone and skin	72	\N	\N
05082	5	1	back bone and skin	22	\N	\N
05083	1	3	oz	85	\N	\N
05083	2	1	cup, chopped or diced	160	\N	\N
05083	3	1	unit (yield from 1 lb ready-to-cook chicken)	60	\N	\N
05083	4	1	leg, bone and skin removed	101	\N	\N
05084	1	1	unit (yield from 1 lb ready-to-cook chicken)	15.0	\N	\N
05084	2	1	neck, bone removed	50	\N	\N
05085	1	1	unit (yield from 1 lb ready-to-cook chicken)	16	\N	\N
05085	2	1	neck, bone removed	52	\N	\N
05086	1	1	unit (yield from 1 lb ready-to-cook chicken)	11.0	\N	\N
05086	2	1	neck, bone removed	36	\N	\N
05087	1	1	unit (yield from 1 lb ready-to-cook chicken)	11.0	\N	\N
05087	2	1	neck, bone removed	38	\N	\N
05088	1	1	unit (yield from 1 lb ready-to-cook chicken)	6.0	\N	\N
05088	2	1	neck, bone and skin removed	20	\N	\N
05089	1	1	unit (yield from 1 lb ready-to-cook chicken)	7.0	\N	\N
05089	2	1	neck, bone and skin removed	22	\N	\N
05090	1	1	unit (yield from 1 lb ready-to-cook chicken)	5.0	\N	\N
05090	2	1	neck, bone and skin removed	18	\N	\N
05091	1	1	thigh with skin	193	23	\N
05091	2	1	oz	28.35	6	0
05092	1	1	unit (yield from 1 lb ready-to-cook chicken)	52	\N	\N
05092	2	1	thigh, bone removed	86	\N	\N
05093	1	1	unit (yield from 1 lb ready-to-cook chicken)	38	\N	\N
05093	2	1	thigh, bone removed	62	\N	\N
05094	1	1	thigh with skin	137	28	\N
05094	2	1	thigh without skin	116	45	22.921
05095	1	1	unit (yield from 1 lb ready-to-cook chicken)	41	\N	\N
05095	2	1	thigh, bone removed	68	\N	\N
05096	1	1	thigh without skin	149	45	27.195
05096	2	3	oz	85	\N	\N
05097	1	1	unit (yield from 1 lb ready-to-cook chicken)	31	\N	\N
05097	2	1	thigh, bone and skin removed	52	\N	\N
05098	1	1	thigh without skin	116	45	22.921
05098	2	1	thigh with skin	137	28	\N
05099	1	1	cup, chopped or diced	140	\N	\N
05099	2	1	unit (yield from 1 lb ready-to-cook chicken)	33	\N	\N
05099	3	1	thigh, bone and skin removed	55	\N	\N
05100	1	1	piece	107	11	14.622
05100	2	1	package	1150	11	458.261
05101	1	1	unit (yield from 1 lb ready-to-cook chicken)	29	\N	\N
05101	2	1	wing, bone removed	49	\N	\N
05102	1	1	unit (yield from 1 lb ready-to-cook chicken)	19	\N	\N
05102	2	1	wing, bone removed	32	\N	\N
05103	1	1	piece	85	155	\N
05104	1	1	cup, chopped or diced	140	\N	\N
05104	2	1	unit (yield from 1 lb ready-to-cook chicken)	24	\N	\N
05104	3	1	wing, bone removed	40	\N	\N
05105	1	1	wing, bone and skin removed (yield from 1 lb ready-to-cook chicken)	17	\N	\N
05105	2	1	wing, bone and skin removed	29	\N	\N
05106	1	1	unit (yield from 1 lb ready-to-cook chicken)	12.0	\N	\N
05106	2	1	wing, bone and skin removed	20	\N	\N
05107	1	1	unit (yield from 1 lb ready-to-cook chicken)	13.0	\N	\N
05107	2	1	wing, bone and skin removed	21	\N	\N
05108	1	1	cup, chopped or diced	140	\N	\N
05108	2	1	unit (yield from 1 lb ready-to-cook chicken)	14.0	\N	\N
05108	3	1	wing, bone and skin removed	24	\N	\N
05109	1	3	oz	85	\N	\N
05109	2	1	chicken	1509	\N	\N
05110	1	3	oz	85	\N	\N
05110	2	1	unit (yield from 1 lb ready-to-cook chicken)	235	\N	\N
05110	3	1	chicken	1072	\N	\N
05111	1	3	oz	85	\N	\N
05111	2	1	breast	635	6	150.228
05111	3	1	bird	4405	6	925.702
05112	1	3	oz	85	\N	\N
05112	2	1	unit (yield from 1 lb ready-to-cook chicken)	210	\N	\N
05112	3	0.5	chicken, bone removed	480	\N	\N
05113	1	3	oz	85	\N	\N
05113	2	1	unit (yield from 1 lb ready-to-cook chicken)	209	\N	\N
05113	3	0.5	chicken, bone and skin removed	477	\N	\N
05114	1	1	cup, chopped or diced	140	\N	\N
05114	2	1	unit (yield from 1 lb ready-to-cook chicken)	171	\N	\N
05115	1	1	unit (yield from 1 lb ready-to-cook chicken)	25	\N	\N
05115	2	1	giblets	113	\N	\N
05116	1	1	cup, chopped or diced	145	\N	\N
05116	2	1	unit (yield from 1 lb ready-to-cook chicken)	15.0	\N	\N
05117	1	1	unit (yield from 1 lb ready-to-cook chicken)	99	\N	\N
05117	2	0.5	chicken, bone and skin removed	220	\N	\N
05118	1	1	cup, chopped or diced	140	\N	\N
05118	2	1	unit (yield from 1 lb ready-to-cook chicken)	78	\N	\N
05119	1	1	unit (yield from 1 lb ready-to-cook chicken)	113	\N	\N
05119	2	0.5	chicken, bone and skin removed	258	\N	\N
05120	1	1	cup, chopped or diced	140	\N	\N
05120	2	1	unit (yield from 1 lb ready-to-cook chicken)	94	\N	\N
05121	1	3	oz	85	\N	\N
05121	2	1	chicken	905	\N	\N
05122	1	3	oz	85	\N	\N
05122	2	1	cup, chopped or diced	160	\N	\N
05122	3	1	unit (yield from 1 lb ready-to-cook chicken)	202	\N	\N
05122	4	1	chicken, bone removed	593	\N	\N
05123	1	3	oz	85	\N	\N
05123	2	1	unit (yield from 1 lb ready-to-cook chicken)	271	\N	\N
05123	3	0.5	chicken, bone removed	398	\N	\N
05124	1	3	oz	85	\N	\N
05124	2	1	unit (yield from 1 lb ready-to-cook chicken)	178	\N	\N
05124	3	0.5	chicken, bone removed	261	\N	\N
05125	1	3	oz	85	\N	\N
05125	2	1	unit (yield from 1 lb ready-to-cook chicken)	194	\N	\N
05125	3	0.5	chicken, bone and skin removed	284	\N	\N
05126	1	1	cup, chopped or diced	140	\N	\N
05126	2	1	unit (yield from 1 lb ready-to-cook chicken)	137	\N	\N
05127	1	1	unit (yield from 1 lb ready-to-cook chicken)	28	\N	\N
05127	2	1	giblets	81	\N	\N
05128	1	1	cup, chopped or diced	145	\N	\N
05128	2	1	unit (yield from 1 lb ready-to-cook chicken)	17	\N	\N
05129	1	1	unit (yield from 1 lb ready-to-cook chicken)	89	\N	\N
05129	2	0.5	chicken, bone and skin removed	130	\N	\N
05130	1	1	cup, chopped or diced	140	\N	\N
05130	2	1	unit (yield from 1 lb ready-to-cook chicken)	64	\N	\N
05131	1	1	unit (yield from 1 lb ready-to-cook chicken)	105	\N	\N
05131	2	0.5	chicken, bone and skin removed	154	\N	\N
05132	1	1	cup, chopped or diced	140	\N	\N
05132	2	1	unit (yield from 1 lb ready-to-cook chicken)	73	\N	\N
05133	1	3	oz	85	\N	\N
05133	2	1	capon	2152	\N	\N
05134	1	3	oz	85	\N	\N
05134	2	1	capon	1418	\N	\N
05134	3	1	unit (yield from 1 lb ready-to cook capon)	218	\N	\N
05135	1	3	oz	85	\N	\N
05135	2	1	unit (yield from 1 lb ready-to cook capon)	297	\N	\N
05135	3	0.5	capon, bone removed	964	\N	\N
05136	1	3	oz	85	\N	\N
05136	2	1	unit (yield from 1 lb ready-to cook capon)	196	\N	\N
05136	3	0.5	capon, bone removed	637	\N	\N
05137	1	1	giblets	115	\N	\N
05137	2	1	unit (yield from 1 lb ready-to cook capon)	18	\N	\N
05138	1	1	cup, chopped or diced	145	\N	\N
05138	2	1	unit (yield from 1 lb ready-to cook capon)	11.0	\N	\N
05139	1	3	oz	85	\N	\N
05139	2	1	unit (yield from 1 lb ready-to-cook duck)	287	\N	\N
05139	3	0.5	duck	634	\N	\N
05140	1	1	cup, chopped or diced	140	\N	\N
05140	2	1	unit (yield from 1 lb ready-to-cook duck)	173	\N	\N
05140	3	0.5	duck	382	\N	\N
05141	1	1	unit (yield from 1 lb ready-to-cook duck)	137	\N	\N
05141	2	0.5	duck	303	\N	\N
05142	1	1	cup, chopped or diced	140	\N	\N
05142	2	1	unit (yield from 1 lb ready-to-cook duck)	100	\N	\N
05142	3	0.5	duck	221	\N	\N
05143	1	1	liver	44	\N	\N
05143	2	1	unit (yield from 1 lb ready-to-cook duck)	10.0	\N	\N
05144	1	3	oz	85	\N	\N
05144	2	1	unit (yield from 1 lb ready-to-cook duck)	239	\N	\N
05144	3	0.5	duck	270	\N	\N
05145	1	1	unit (yield from 1 lb ready-to-cook duck)	73	\N	\N
05145	2	0.5	breast, bone and skin removed	83	\N	\N
05146	1	3	oz	85	\N	\N
05146	2	1	unit (yield from 1 lb ready-to-cook goose)	320	\N	\N
05146	3	0.5	goose	1319	\N	\N
05147	1	1	cup, chopped or diced	140	\N	\N
05147	2	1	unit (yield from 1 lb ready-to-cook goose)	188	\N	\N
05147	3	0.5	goose	774	\N	\N
05148	1	3	oz	85	\N	\N
05148	2	1	unit (yield from 1 lb ready-to-cook goose)	185	\N	\N
05148	3	0.5	goose	766	\N	\N
05149	1	1	unit (yield from 1 lb ready-to-cook goose)	143	\N	\N
05149	2	0.5	goose	591	\N	\N
05150	1	1	liver	94	\N	\N
05150	2	1	unit (yield from 1 lb ready-to-cook goose)	11.0	\N	\N
05151	1	3	oz	85	\N	\N
05151	2	1	unit (yield from 1 lb ready-to-cook guinea)	359	\N	\N
05151	3	0.5	guinea	345	\N	\N
05152	1	3	oz	85	\N	\N
05152	2	1	unit (yield from 1 lb ready-to-cook guinea)	275	\N	\N
05152	3	0.5	guinea	264	\N	\N
05153	1	3	oz	85	\N	\N
05153	2	1	unit (yield from 1 lb ready-to-eat pheasant)	371	\N	\N
05153	3	0.5	pheasant	400	\N	\N
05154	1	3	oz	85	\N	\N
05154	2	1	unit (yield from 1 lb ready-to-eat pheasant)	326	\N	\N
05154	3	0.5	pheasant	352	\N	\N
05155	1	3	oz	85	\N	\N
05155	2	1	unit (yield from 1 lb ready-to-eat pheasant)	169	\N	\N
05155	3	0.5	breast, bone and skin removed	182	\N	\N
05156	1	1	unit (yield from 1 lb ready-to-eat pheasant)	99	\N	\N
05156	2	1	leg, bone and skin removed	107	\N	\N
05157	1	1	quail	109	\N	\N
05157	2	1	unit (yield from 1 lb ready-to cook quail)	405	\N	\N
05158	1	1	quail	92	\N	\N
05158	2	1	unit (yield from 1 lb ready-to cook quail)	342	\N	\N
05159	1	3	oz	85	\N	\N
05159	2	1	unit (yield from 1 lb ready-to cook quail)	208	\N	\N
05159	3	1	breast	56	\N	\N
05160	1	3	oz	85	\N	\N
05160	2	1	unit (yield from 1 lb ready-to-cook squab)	297	\N	\N
05160	3	1	squab	199	\N	\N
05161	1	1	unit (yield from 1 lb ready-to-cook squab)	251	\N	\N
05161	2	1	squab	168	\N	\N
05162	1	1	breast, bone removed	101	\N	\N
05162	2	1	unit (yield from 1 lb ready-to-cook squab)	151	\N	\N
05165	1	3	oz	85	1	\N
05165	2	1	bird	5002	8	1142.284
05166	1	3	oz	85	1	\N
05166	2	1	bird	3812	8	950.883
05167	1	3	oz	85	1	\N
05167	2	1	bird	5002	8	1142.284
05168	1	3	oz	85	1	\N
05168	2	1	bird	3812	8	950.883
05169	1	1	oz	28.35	\N	\N
05169	2	1	lb	453.0	\N	\N
05170	1	1	serving	85	\N	\N
05171	1	3	oz	85	18	12.66
05171	2	1	giblets	157	16	52.179
05172	1	1	giblets	95	18	29.595
05173	1	1	raw gizzard	63	8	26.34
05174	1	1	gizzard cooked	45	8	17.724
05175	1	1	piece	24	18	12.66
05176	1	1	heart	20	7	11.33
05177	1	1	raw liver	78	8	46.34
05178	1	1	liver cooked	53	8	31.32
05179	1	1	oz	28.35	\N	\N
05179	2	1	lb	453.0	\N	\N
05180	1	1	serving	85	\N	\N
05181	1	3	oz	85	\N	\N
05181	2	1	lb	453.0	\N	\N
05182	1	1	serving	85	\N	\N
05183	1	1	oz	28.35	\N	\N
05183	2	1	lb	453.0	\N	\N
05184	1	1	serving	85	\N	\N
05185	1	1	serving	85	\N	\N
05186	1	1	serving	85	\N	\N
05187	1	1	serving	85	\N	\N
05188	1	1	serving	85	\N	\N
05190	1	1	cup, chopped or diced	140	\N	\N
05190	2	0.5	back, bone removed	262	\N	\N
05190	3	1	unit (yield from 1 lb ready-to-cook turkey)	34	\N	\N
05191	1	1	unit (yield from 1 lb ready-to-cook turkey)	146	\N	\N
05191	2	0.5	breast, bone removed	1132	\N	\N
05192	1	1	unit (yield from 1 lb ready-to-cook turkey)	112	\N	\N
05192	2	0.5	breast, bone removed	864	\N	\N
05193	1	1	unit (yield from 1 lb ready-to-cook turkey)	105	\N	\N
05193	2	1	leg, bone removed	816	\N	\N
05194	1	1	unit (yield from 1 lb ready-to-cook turkey)	71	\N	\N
05194	2	1	leg, bone removed	546	\N	\N
05195	1	1	unit (yield from 1 lb ready-to-cook turkey)	33	\N	\N
05195	2	1	wing, bone removed	256	\N	\N
05196	1	1	unit (yield from 1 lb ready-to-cook turkey)	24	\N	\N
05196	2	1	wing, bone removed	186	\N	\N
05200	1	3	oz	85	\N	\N
05200	2	0.5	turkey, bone removed	808	\N	\N
05200	3	1	unit (yield from 1 lb ready-to-cook turkey)	229	\N	\N
05215	1	4	oz	114	\N	\N
05215	2	1	back	1124	7	362.91
05216	1	3	oz	85	\N	\N
05216	2	1	back	911	8	216.52
05219	1	4	oz	114	1	\N
05219	2	1	breast	1769	8	576.76
05220	1	3	oz	85	1	\N
05220	2	1	breast	1413	8	459.96
05227	1	3	oz	85	\N	\N
05227	2	1	wing	346	16	26.88
05228	1	3	oz	85	\N	\N
05228	2	1	wing	213	15	21.05
05236	1	1	unit (yield from 1 lb ready-to-cook turkey)	31	\N	\N
05236	2	0.5	turkey, skin only	196	\N	\N
05277	1	1	can (5 oz)	142	\N	\N
05282	1	1	tbsp	13.0	\N	\N
05282	2	1	oz	28.35	\N	\N
05284	1	1	cup, drained	135	\N	\N
05284	2	1	can (5 oz)	142	\N	\N
05284	3	1	can (5 oz) yields	125	\N	\N
05285	1	1	oz	28.35	\N	\N
05285	2	0.5	lb	227	\N	\N
05286	1	3	oz	85	\N	\N
05286	2	1	package (net weight, 5 oz)	142	\N	\N
05293	1	3	oz	85	\N	\N
05293	2	0.5	breast, bone removed	864	\N	\N
05294	1	3	oz	85	\N	\N
05294	2	1	thigh, bone removed	314	\N	\N
05295	1	3	oz	85	\N	\N
05295	2	1	box (net weight, 2.5 lb)	1134	\N	\N
05300	1	1	stick (2.25 oz)	64	\N	\N
05301	1	0.5	lb	227	\N	\N
05302	1	0.5	lb	227	\N	\N
05303	1	0.5	lb	227	\N	\N
05304	1	0.5	lb	227	\N	\N
05305	1	1	lb	453.6	\N	\N
05305	2	1	patty, 4 oz	114	\N	\N
05306	1	1	patty (4 oz, raw) (yield after cooking)	82	\N	\N
05306	2	1	unit, yield from 1 lb raw	330	\N	\N
05307	1	3	oz	85	\N	\N
05307	2	0.5	bird	168	\N	\N
05308	1	3	oz	85	\N	\N
05308	2	0.5	bird	129	\N	\N
05308	3	1	bird whole	257	\N	\N
05309	1	3	oz	85	\N	\N
05309	2	0.5	bird	120	\N	\N
05309	3	1	bird whole	239	\N	\N
05310	1	3	oz	85	\N	\N
05310	2	0.5	bird	110	\N	\N
05310	3	1	bird whole	220	\N	\N
05311	1	1	oz	28	\N	\N
05311	2	1	cup	205	\N	\N
05311	3	1	can (5 oz) yields	125	\N	\N
05312	1	1	piece	29	18	5.211
05312	2	1	serving	86	9	9.245
05313	1	1	serving	74	9	12.986
05314	1	3	oz	85	\N	\N
05314	2	1	piece	263	11	83.914
05314	3	0.5	breast	118	\N	\N
05315	1	1	unit (yield from 1 lb ready-to-cook duck)	56	\N	\N
05315	2	3	oz	85	\N	\N
05315	3	0.5	breast, bone removed	120	\N	\N
05316	1	3	oz	85	\N	\N
05316	2	0.5	breast, bone and skin removed	95	\N	\N
05316	3	1	cup, chopped or diced	174	\N	\N
05316	4	1	unit (yield from 1 lb ready-to-cook duck)	44	\N	\N
05317	1	1	leg, bone removed (yield after cooking)	92	\N	\N
05317	2	1	unit (yield from 1 lb ready-to-cook duck)	43	\N	\N
05317	3	3	oz	85	\N	\N
05318	1	3	oz	85	\N	\N
05318	2	1	cup chopped or diced, cooked	174	\N	\N
05318	3	1	unit (yield from 1 lb ready-to-cook duck)	35	\N	\N
05318	4	1	leg, bone and skin removed	75	\N	\N
05319	1	1	drumstick	71	96	13.471
05320	1	1	serving	96	30	24.073
05323	1	1	patty	60	\N	\N
05324	1	1	patty	60	\N	\N
05326	1	1	piece	15.0	\N	\N
05326	2	4	pieces	62	\N	\N
05327	1	1	piece	15.0	\N	\N
05327	2	4	pieces	62	\N	\N
05332	1	4	oz crumbled	112	\N	\N
05333	1	3	oz crumbled	85	\N	\N
05334	1	1	thigh	95	96	19.425
05335	1	1	oz	28.35	\N	\N
05335	2	1	lb	453.6	\N	\N
05336	1	1	cup drained	135	\N	\N
05336	2	1	can (5 oz)	142	\N	\N
05337	1	1	cup drained	135	\N	\N
05337	2	1	can (5 oz)	142	\N	\N
05338	1	1	cup drained	135	\N	\N
05338	2	1	can (5 oz)	142	\N	\N
05339	1	1	wing	51	96	12.015
05341	1	1	serving (3 oz)	85	\N	\N
05341	2	1	back	102	\N	\N
05341	3	1	oz	28.35	\N	\N
05342	1	3	oz	85	\N	\N
05342	2	1	breast breast with skin and bone	483	48	\N
05342	3	1	oz	28.35	\N	\N
05343	1	1	drumstick	53	\N	\N
05343	2	1	serving (3oz)	85	\N	\N
05343	3	1	oz	28.35	\N	\N
05344	1	1	oz	28.35	\N	\N
05345	1	1	thigh	89	\N	\N
05345	2	1	serving (3 oz)	85	\N	\N
05345	3	1	oz	28.35	\N	\N
05346	1	1	wing	53	\N	\N
05346	2	1	serving (3 oz)	85	\N	\N
05346	3	1	oz	28.35	\N	\N
05347	1	1	back	102	\N	\N
05347	2	1	serving (3 oz)	85	\N	\N
05347	3	1	oz	28.35	\N	\N
05348	1	1	serving (3 oz)	85	\N	\N
05348	2	1	oz	28.35	\N	\N
05348	3	1	breast	343	\N	\N
05349	1	1	drumstick	53	\N	\N
05349	2	1	serving (3 oz)	85	\N	\N
05349	3	1	oz	28.35	\N	\N
05351	1	1	thigh	89	\N	\N
05351	2	1	serving	85	\N	\N
05352	1	1	wing	53	\N	\N
05352	2	1	serving (3 oz)	85	\N	\N
05352	3	1	oz	28.35	\N	\N
05353	1	1	strip	9.4	21	2.597
05354	1	3	oz	85	\N	\N
05354	2	1	cup	183	6	22.58
05356	1	1	serving	85	\N	\N
05357	1	3	oz	85	\N	\N
05357	2	1	back	182	\N	\N
05358	1	3	oz	85	\N	\N
05358	2	1	breast	384	\N	\N
05359	1	1	drumstick	71	\N	\N
05361	1	1	thigh	95	\N	\N
05362	1	1	wing	51	\N	\N
05363	1	4	oz	113	\N	\N
05363	2	1	breast	219	6	12.111
05363	3	1	bird	627	6	47.422
05600	1	1	oz	28.35	\N	\N
05600	2	1	serving	28	\N	\N
05621	1	1	patty	117	6	16.337
05622	1	1	patty (yield from 135.8 g raw meat)	109	6	42.202
05622	2	1	serving ( 3 oz )	85	\N	\N
05623	1	1	serving ( 3 oz )	85	\N	\N
05623	2	1	fan fillet	513	23	65.33
05624	1	1	serving ( 3 oz )	85	\N	\N
05624	2	1	steak	394	3	49.561
05625	1	3	oz	85	\N	\N
05625	2	1	flat fillet	354	23	43.54
05626	1	3	oz	85	\N	\N
05626	2	1	full rump	695	23	43.54
05627	1	1	serving ( 3 oz )	85	\N	\N
05627	2	1	full rump cooked ( yield from 695 g raw meat )	496	23	31.09
05628	1	3	oz	85	\N	\N
05628	2	1	inside drum	572	23	87.077
05629	1	1	serving ( 3 oz )	85	\N	\N
05629	2	1	inside drum cooked ( yield from 572 g raw meat )	416	23	63.38
05630	1	3	oz	85	\N	\N
05630	2	1	outside drum	422	23	65.331
05631	1	3	oz	85	\N	\N
05631	2	1	steak	300	23	21.79
05632	1	1	serving ( 3 oz )	85	\N	\N
05632	2	1	steak	244	3	77.631
05641	1	1	patty	109	6	1.656
05641	2	4	patty	435	6	6.625
05642	1	1	patty	93	6	1.695
05642	2	1	serving ( 3 oz )	85	\N	\N
05643	1	1	serving ( cooked from 4oz raw)	85	\N	\N
05643	2	1	oz	28.35	\N	\N
05644	1	1	serving ( cooked from 4 oz raw )	85	\N	\N
05644	2	1	oz	28.35	\N	\N
05645	1	1	serving ( 3 oz )	85	\N	\N
05646	1	1	serving (cooked from 4 oz raw)	85	\N	\N
05646	2	1	oz	28.35	\N	\N
05647	1	1	serving ( 3 oz )	85	\N	\N
05648	1	1	serving (cooked from 4 oz raw)	85	\N	\N
05648	2	1	oz	28.35	\N	\N
05649	1	1	serving (cooked from 4 oz raw)	85	\N	\N
05649	2	1	oz	28.35	\N	\N
05650	1	1	serving ( 3 oz )	85	\N	\N
05651	1	1	serving ( cooked from 4 oz raw)	85	\N	\N
05651	2	1	oz	28.35	\N	\N
05652	1	1	serving ( 3 oz )	85	\N	\N
05653	1	1	serving (cooked from 4 oz raw)	85	\N	\N
05653	2	1	oz	28.35	\N	\N
05653	3	1	lb	453.0	\N	\N
05654	1	1	serving (cooked from 4 oz raw)	85	\N	\N
05654	2	1	lb	456.0	\N	\N
05654	3	1	oz	28.35	\N	\N
05655	1	1	serving ( cooked from 4 oz raw)	85	\N	\N
05655	2	1	oz	28.35	\N	\N
05655	3	1	lb	453.0	\N	\N
05656	1	1	serving ( 3 oz )	85	\N	\N
05657	1	1	serving (cooked from 4 oz raw)	85	\N	\N
05657	2	1	oz	28.35	\N	\N
05657	3	1	lb	453.0	\N	\N
05658	1	1	serving ( 3 oz )	85	\N	\N
05661	1	1	liver	44	\N	\N
05661	2	1	oz	28.35	\N	\N
05662	1	1	patty (cooked from 4 oz raw)	85	\N	\N
05662	2	1	oz	28.35	\N	\N
05662	3	1	lb	453.0	\N	\N
05663	1	3	oz	85	\N	\N
05664	1	1	patty	85	\N	\N
05664	2	1	oz	28.35	\N	\N
05665	1	1	oz	28.35	\N	\N
05665	2	1	lb	453.0	\N	\N
05665	3	1	serving (cooked from 4 oz)	85	\N	\N
05666	1	3	oz	85	\N	\N
05667	1	3	oz	85	\N	\N
05668	1	1	patty (cooked from 4 oz raw)	85	\N	\N
05668	2	1	oz	28.35	\N	\N
05668	3	1	lb	453.0	\N	\N
05669	1	3	oz	85	\N	\N
05670	1	3	oz	85	\N	\N
05671	1	1	drumstick without skin	95	60	16.56
05671	2	1	drumstick with skin	105	60	18.385
05672	1	1	thigh without skin	111	45	22.251
05672	2	1	thigh with skin	129	45	25.18
05673	1	1	oz	28.35	\N	\N
05673	2	1	lb	453.0	\N	\N
05674	1	1	oz	28.35	\N	\N
05674	2	1	lb	453.0	\N	\N
05675	1	1	oz	28.35	\N	\N
05675	2	1	lb	453.0	\N	\N
05676	1	1	drumstick without skin	95	60	16.56
05676	2	1	drumstick with skin	105	60	18.385
05677	1	1	thigh without skin	111	45	22.251
05677	2	1	thigh with skin	129	45	25.18
05678	1	1	drumstick with skin	143	10	29.469
05678	2	1	drumstick without skin	136	29	\N
05679	1	1	drumstick without skin	91	30	\N
05679	2	1	drumstick with skin	129	10	23.648
05680	1	1	drumstick without skin	95	10	20.442
05680	2	1	drumstick with skin	106	10	22.463
05681	1	3	oz	85	\N	\N
05681	2	1	thigh without skin	132	15	31.264
05681	3	1	thigh with skin	158	15	39.359
05682	1	3	oz	85	\N	\N
05682	2	1	thigh without skin	148	15	24.13
05682	3	1	thigh with skin	191	15	34.245
05683	1	1	thigh with skin	130	15	31.242
05683	2	1	thigh without skin	112	15	26.334
05684	1	1	oz	28.35	\N	\N
05685	1	1	oz	28.35	\N	\N
05686	1	1	oz	28.35	\N	\N
05687	1	1	drumstick with skin	106	10	22.463
05687	2	1	drumstick without skin	95	10	20.442
05688	1	1	drumstick with skin	143	10	29.469
05688	2	1	drumstick without skin	130	10	24.86
05689	1	1	drumstick with skin	129	10	23.648
05689	2	1	drumstick without skin	91	30	\N
05690	1	3	oz	85	\N	\N
05690	2	1	thigh without skin	132	15	31.264
05690	3	1	thigh with skin	158	15	39.359
05691	1	3	oz	85	\N	\N
05691	2	1	thigh without skin	148	15	24.13
05691	3	1	thigh	181	22	\N
05692	1	1	thigh with skin	130	15	31.242
05692	2	1	thigh without skin	112	15	26.334
05693	1	3	oz	85	\N	\N
05693	2	1	back	182	48	34.31
05694	1	4	oz	114	\N	\N
05695	1	3	oz	85	\N	\N
05696	1	4	oz	114	\N	\N
05697	1	3	oz	85	\N	\N
05698	1	1	oz	28.35	\N	\N
05699	1	1	oz	28.35	\N	\N
05700	1	4	oz	114	\N	\N
05700	2	1	lb	453.0	\N	\N
05701	1	3	oz	85	\N	\N
05702	1	4	oz	114	\N	\N
05702	2	1	lb	453.0	\N	\N
05703	1	3	oz	85	\N	\N
05703	2	1	lb	453.0	\N	\N
05704	1	3	oz	85	1	\N
05704	2	1	bird	5717	11	1080.565
05705	1	3	oz	28	1	\N
05705	2	1	bird	4147	11	597.099
05706	1	3	oz	85	1	\N
05706	2	1	bird	5717	11	1080.565
05707	1	3	oz	85	1	\N
05707	2	1	bird	4147	11	597.099
05707	3	1	lb	453.0	1	\N
05708	1	1	breast	1171	4	269.718
05708	2	3	oz	85	4	0
05709	1	3	oz	85	4	0
05709	2	1	breast	852	4	209.04
05710	1	3	oz	85	4	0
05710	2	1	breast	1150	4	244.183
05711	1	1	breast	863	4	116.235
05711	2	3	oz	85	4	0
05712	1	3	oz	28	8	0
05712	2	1	wing	518	21	\N
05713	1	3	oz	85	8	0
05713	2	1	wing	375	31	\N
05714	1	1	oz	28.35	12	0
05715	1	1	oz	28.35	12	0
05716	1	3	oz	85	12	0
05716	2	1	drumstick	356	33	\N
05717	1	3	oz	85	5	0
05717	2	1	thigh	454	10	\N
05718	1	3	oz	85	1	\N
05718	2	1	breast	1654	11	336.64
05719	1	4	oz	114	\N	\N
05719	2	1	back	1245	11	251.39
05720	1	3	oz	85	\N	\N
05720	2	1	back	949	11	121.52
05721	1	4	oz	114	1	\N
05721	2	1	breast	2110	11	451.88
05721	3	1	lb	453.0	1	\N
05722	1	3	oz	85	5	0
05722	2	1	thigh	348	10	\N
05723	1	3	oz	28	12	0
05723	2	1	drumstick	275	35	\N
05724	1	4	oz	114	\N	\N
05724	2	1	drumstick	359	22	56.46
05725	1	3	oz	85	\N	\N
05725	2	1	drumstick	217	22	34.88
05726	1	3	oz	85	1	\N
05726	2	1	thigh	424	22	94
05727	1	3	oz	85	4	0
05727	2	1	breast	1171	4	269.718
05728	1	3	oz	85	\N	\N
05728	2	1	thigh	327	22	48.27
05729	1	3	oz	85	\N	\N
05729	2	1	wing	358	22	40.25
05730	1	3	oz	85	\N	\N
05730	2	1	wing	219	22	25.11
05732	1	3	oz	85	4	0
05732	2	1	breast	1150	4	244.183
05733	1	3	oz	85	4	0
05733	2	1	breast	863	4	116.235
05734	1	3	oz	85	8	0
05734	2	1	wing	518	21	\N
05735	1	3	oz	85	8	0
05735	2	1	wing	375	31	\N
05736	1	3	oz	85	12	0
05736	2	1	drumstick	356	33	\N
05737	1	3	oz	85	12	0
05737	2	1	drumstick	275	35	\N
05738	1	3	oz	85	\N	\N
05738	2	1	drumstick	337	16	40.36
05739	1	3	oz	85	\N	\N
05739	2	1	drumstick	206	16	43.03
05740	1	3	oz	85	\N	\N
05740	2	1	thigh	367	16	79.35
05741	1	3	oz	85	\N	\N
05741	2	1	thigh	319	16	86.76
05742	1	3	oz	85	5	0
05742	2	1	thigh	454	10	\N
05743	1	3	oz	85	12	0
05743	2	1	thigh	348	10	\N
05744	1	4	oz	114	\N	\N
05744	2	1	back	1245	11	251.39
05745	1	3	oz	85	\N	\N
05745	2	1	back	949	11	121.52
05746	1	3	oz	85	\N	\N
05746	2	1	piece	181	55	\N
05747	1	3	oz	85	\N	\N
05747	2	1	piece	196	74	\N
05748	1	3	oz	85	\N	\N
05748	2	1	piece	195	54	\N
05749	1	3	oz	85	\N	\N
05749	2	1	piece	192	59	\N
06001	1	0.5	cup (4 fl oz)	126	\N	\N
06001	2	1	can (10.75 oz)	305	\N	\N
06002	1	1	cup (8 fl oz)	257	\N	\N
06002	2	1	can (11 oz), undiluted	312	\N	\N
06003	1	1	serving 1/2 cup	126	1	\N
06004	1	0.5	cup	130	\N	\N
06004	2	1	can 11.5 oz	326	\N	\N
06006	1	1	cup (8 fl oz)	263	\N	\N
06006	2	1	can (11.25 oz)	319	\N	\N
06007	1	1	cup (8 fl oz)	243	\N	\N
06007	2	1	can (19.25 oz)	546	\N	\N
06008	1	1	cup	240	\N	\N
06008	2	1	can 14.5 oz	435	\N	\N
06008	3	1	container 32 oz	960	\N	\N
06009	1	0.5	cup	125	\N	\N
06009	2	1	can (10.75 oz)	305	\N	\N
06010	1	0.5	cup	126	\N	\N
06010	2	1	can (10.75 oz)	305	\N	\N
06011	1	0.5	cup	124	1	\N
06013	1	0.5	cup (4 fl oz)	126	\N	\N
06013	2	1	can (10.75 oz)	305	\N	\N
06014	1	1	serving 1/2 cup	124	1	\N
06015	1	1	cup	245	\N	\N
06016	1	0.5	cup (4 fl oz)	126	\N	\N
06016	2	1	can (10.75 oz)	305	\N	\N
06017	1	0.5	cup (4 fl oz)	126	\N	\N
06017	2	1	can (10.75 oz)	305	\N	\N
06018	1	1	can	530	18	7.046
06018	2	1	cup	243	18	3.734
06019	1	0.5	cup	124	24	6.049
06022	1	1	cup	240	\N	\N
06022	2	1	can 19 oz	539	\N	\N
06023	1	0.5	cup	126	\N	\N
06024	1	1	cup	255	16	11.763
06025	1	0.5	cup	121	\N	\N
06025	2	1	can (10.7 oz)	303	\N	\N
06026	1	1	cup (8 fl oz)	263	\N	\N
06026	2	1	can (11.25 oz)	319	\N	\N
06027	1	1	cup (8 fl oz)	240	\N	\N
06027	2	1	can (19 oz)	539	\N	\N
06028	1	0.5	cup (4 fl oz)	126	\N	\N
06028	2	1	can (10.75 oz)	305	\N	\N
06029	1	0.5	cup	126	1	\N
06030	1	0.5	cup	126	1	\N
06030	2	1	can (10.7 oz)	303	\N	\N
06032	1	0.5	cup	124	1	\N
06032	2	1	can (10.5 oz)	310	\N	\N
06037	1	1	cup (8 fl oz)	248	\N	\N
06037	2	1	can (20 oz)	567	\N	\N
06038	1	0.5	cup condensed	124	1	\N
06039	1	1	cup	240	\N	\N
06039	2	1	can (19 oz)	539	\N	\N
06040	1	0.5	cup (4 fl oz)	123	\N	\N
06040	2	1	can (10.5 oz)	298	\N	\N
06041	1	1	serving 1/2 cup	126	1	\N
06042	1	0.5	cup (4 fl oz)	126	\N	\N
06042	2	1	can (10.75 oz)	305	\N	\N
06043	1	0.5	cup	126	23	4.295
06044	1	0.5	cup (4 fl oz)	126	\N	\N
06044	2	1	can (10.75 oz)	305	\N	\N
06045	1	0.5	cup (4 fl oz)	123	\N	\N
06045	2	1	can (10.5 oz)	298	\N	\N
06046	1	0.5	cup	126	\N	\N
06046	2	1	can (10.75 oz)	305	\N	\N
06047	1	1	serving 1/2 cup	126	1	\N
06048	1	0.5	cup (4 fl oz)	123	\N	\N
06048	2	1	can (10.5 oz)	298	\N	\N
06049	1	0.5	cup	128	\N	\N
06049	2	1	can (11.2 oz)	319	\N	\N
06050	1	1	cup	240	\N	\N
06050	2	1	can (19 oz)	539	\N	\N
06051	1	0.5	cup (4 fl oz)	135	\N	\N
06051	2	1	can (11.5 oz)	326	\N	\N
06053	1	0.5	cup	124	1	\N
06054	1	0.5	cup	126	1	\N
06056	1	0.5	cup	126	\N	\N
06056	2	1	can	305	\N	\N
06057	1	1	serving 1/2 cup	124	1	\N
06058	1	1	serving 1/2 cup	126	1	\N
06061	1	1	cup (8 fl oz)	251	\N	\N
06061	2	1	can (10.75 oz)	305	\N	\N
06062	1	0.5	cup	123	12	7.441
06063	1	0.5	cup (4 fl oz)	129	\N	\N
06063	2	1	can (11 oz), undiluted	312	\N	\N
06064	1	1	cup (8 fl oz)	236	\N	\N
06064	2	1	can (18.75 oz)	532	\N	\N
06067	1	1	cup	230	20	8.753
06068	1	0.5	cup	126	\N	\N
06068	2	1	can (10.5 oz)	298	\N	\N
06070	1	1	cup	245	1	\N
06070	2	1	can (19 oz)	539	\N	\N
06071	1	0.5	cup	126	\N	\N
06071	2	1	can (10.75 oz)	305	\N	\N
06072	1	0.5	cup	123	\N	\N
06072	2	1	can (10.5 oz)	298	\N	\N
06075	1	1	cube	3.6	\N	\N
06075	2	1	packet	6.0	\N	\N
06076	1	1	cube	3.6	\N	\N
06080	1	1	cube	4.0	\N	\N
06080	2	1	teaspoon	2.0	\N	\N
06081	1	1	cube	4.8	\N	\N
06082	1	1	serving 1/2 cup	126	1	\N
06084	1	1	serving 1/2 cup	126	1	\N
06091	1	1	serving 1/2 cup	124	1	\N
06094	1	1	serving 1 tbsp	7.5	1	\N
06094	2	1	packet	39	\N	\N
06097	1	1	serving 1/2 cup	124	1	\N
06101	1	1	packet	18	\N	\N
06112	1	1	tbsp	18	\N	\N
06112	2	1	fl oz	36.0	\N	\N
06112	3	1	cup	288	\N	\N
06114	1	0.25	cup	59	\N	\N
06114	2	1	can	298	\N	\N
06115	1	1	tsp	3.0	\N	\N
06116	1	1	cup	233	\N	\N
06116	2	1	can	291	\N	\N
06117	1	1	serving 1/2 cup	128	1	\N
06118	1	1	tbsp	6.0	\N	\N
06119	1	0.25	cup	57	\N	\N
06119	2	1	cup	228	8	2
06119	3	1	jar 10.5 oz	273	27	\N
06119	4	1	jar 12 oz	324	36	\N
06120	1	1	tbsp	8.0	\N	\N
06120	2	1	serving	8.0	\N	\N
06121	1	1	cup	238	\N	\N
06121	2	1	can	298	\N	\N
06122	1	1	cup (8 fl oz)	21	\N	\N
06123	1	1	cup (8 fl oz)	24	\N	\N
06124	1	1	serving	6.7	\N	\N
06125	1	1	cup	238	\N	\N
06125	2	1	tbsp	14.9	\N	\N
06125	3	1	tsp	5.0	\N	\N
06125	4	1	can	298	\N	\N
06126	1	1	serving	7.0	\N	\N
06127	1	1	cup (8 fl oz)	25	\N	\N
06128	1	1	packet	74	\N	\N
06128	2	1	packet (6 fl oz)	11.1	\N	\N
06142	1	0.5	cup	103	\N	\N
06145	1	1	serving 1/2 cup	126	1	\N
06146	1	1	serving 1/2 cup	126	1	\N
06147	1	0.5	cup (4 fl oz)	126	\N	\N
06147	2	1	can (10.75 oz)	305	\N	\N
06149	1	0.5	cup	124	\N	\N
06150	1	1	tbsp	17	54	1.204
06150	2	0.5	cup	143	54	6.154
06150	3	1	cup	279	54	13.399
06151	1	1	tbsp	19	\N	\N
06151	2	1	cup	305	\N	\N
06152	1	0.25	cup	63	\N	\N
06158	1	0.5	cup (4 fl oz)	129	\N	\N
06158	2	1	can (11 oz), undiluted	312	\N	\N
06159	1	1	cup	148	12	4.496
06159	2	1	can	294	12	3.502
06164	1	2	tbsp	36	24	1.646
06164	2	0.5	cup	130	\N	\N
06164	3	1	cup	259	\N	\N
06165	1	1	cup	250	\N	\N
06165	2	0.5	cup	125	\N	\N
06166	1	1	cup	250	\N	\N
06166	2	0.5	cup	125	\N	\N
06167	1	1	cup	250	\N	\N
06167	2	0.5	cup	125	\N	\N
06168	1	1	tsp	4.7	\N	\N
06168	2	0.25	tsp	1.2	\N	\N
06169	1	1	tsp	4.7	\N	\N
06169	2	0.25	tsp	1.2	\N	\N
06170	1	1	cup	240	\N	\N
06172	1	1	cup	240	\N	\N
06174	1	1	cup	233	\N	\N
06175	1	1	tbsp	16	\N	\N
06176	1	1	tbsp	18	\N	\N
06177	1	1	cup	245	\N	\N
06179	1	1	tbsp	18	\N	\N
06180	1	1	cup	216	\N	\N
06182	1	1	cup	251	\N	\N
06183	1	1	cup	240	\N	\N
06188	1	1	cup	219	35	4.409
06188	2	1	can (14.5 oz)	407	21	8.308
06188	3	1	carton (32 oz)	923	23	12.407
06189	1	2	Tbsp	36	\N	\N
06190	1	1	cup	245	\N	\N
06192	1	1	cup	253	\N	\N
06193	1	1	cup	245	\N	\N
06194	1	1	cup	249	28	9.102
06195	1	0.5	cup condensed	124	1	\N
06201	1	1	cup (8 fl oz)	248	\N	\N
06201	2	1	can (10.75 oz), prepared	602	\N	\N
06208	1	1	cup	245	\N	\N
06209	1	0.5	cup condensed	124	1	\N
06210	1	1	cup (8 fl oz)	248	\N	\N
06210	2	1	can (10.75 oz), prepared	602	\N	\N
06211	1	1	cup	251	\N	\N
06211	2	1	can (11 oz), prepared	609	\N	\N
06212	1	0.5	cup condensed	126	1	\N
06213	1	1	serving 1/2 cup	124	1	\N
06214	1	0.5	cup condensed	124	1	\N
06215	1	0.5	cup condensed	124	1	\N
06216	1	1	cup (8 fl oz)	248	\N	\N
06216	2	1	fl oz	31.0	\N	\N
06216	3	1	can (10.75 oz), prepared	602	\N	\N
06217	1	0.5	cup	126	\N	\N
06218	1	0.5	cup condensed	124	1	\N
06219	1	0.5	cup condensed	124	1	\N
06220	1	1	serving 1/2 cup	130	1	\N
06221	1	1	serving 1/2 cup	130	1	\N
06222	1	1	serving 1/2 cup	130	1	\N
06223	1	1	serving 1/2 cup	130	1	\N
06224	1	1	serving 1/2 cup	130	1	\N
06225	1	1	serving 1/2 cup	130	1	\N
06226	1	1	serving 1/2 cup	125	1	\N
06228	1	1	serving 1/2 cup	130	1	\N
06229	1	1	serving 1/2 cup	130	1	\N
06230	1	1	serving 1 cup	252	\N	\N
06230	2	1	fl oz	31.5	\N	\N
06231	1	1	serving 1/2 cup	125	1	\N
06232	1	1	serving 1/2 cup	125	1	\N
06233	1	1	serving 1/2 cup	125	1	\N
06234	1	1	serving 1/2 cup	125	1	\N
06235	1	1	serving 1/2 cup	130	1	\N
06236	1	1	serving 1/2 cup	130	1	\N
06237	1	1	serving 1/2 cup	125	1	\N
06239	1	1	serving 1/2 cup	125	1	\N
06240	1	1	serving 1/2 cup	130	1	\N
06241	1	1	serving 1 cup	245	1	\N
06242	1	1	serving 1 cup	245	1	\N
06243	1	1	serving 1 cup	252	\N	\N
06243	2	1	fl oz	31.5	\N	\N
06244	1	1	serving 1 cup	245	1	\N
06245	1	1	serving 1 cup	245	1	\N
06246	1	1	cup (8 fl oz)	248	\N	\N
06246	2	1	can (10.75 oz), prepared	602	\N	\N
06248	1	1	cup (8 fl oz)	245	\N	\N
06248	2	1	can (10.5 oz), prepared	595	\N	\N
06249	1	1	cup (8 fl oz)	254	\N	\N
06249	2	1	can (11.25 oz), prepared	616	\N	\N
06250	1	1	serving 1 cup	245	1	\N
06251	1	1	serving 1 cup	245	1	\N
06252	1	1	serving 1 cup	245	1	\N
06253	1	1	cup (8 fl oz)	248	\N	\N
06253	2	1	can (10.75 oz), prepared	602	\N	\N
06256	1	1	cup (8 fl oz)	253	\N	\N
06256	2	1	fl oz	31.6	\N	\N
06307	1	1	tbsp	16	12	0.455
06307	2	0.5	cup	146	12	3.297
06307	3	1	cup	283	12	8.151
06309	1	0.5	cup condensed	126	1	\N
06311	1	1	serving 1/2 cup	126	1	\N
06312	1	1	serving 1/2 cup	124	1	\N
06314	1	1	serving 1 cup	243	1	\N
06315	1	1	serving 1 cup	240	2	\N
06316	1	1	serving 1 cup	246	1	\N
06317	1	0.25	cup	59	1	\N
06318	1	0.25	cup	59	1	\N
06319	1	0.25	cup	59	1	\N
06320	1	0.25	cup	59	1	\N
06321	1	0.25	cup	59	1	\N
06322	1	0.25	cup	59	1	\N
06323	1	0.25	cup	60	1	\N
06324	1	0.25	cup	59	1	\N
06325	1	0.25	cup	60	1	\N
06326	1	0.25	cup	59	1	\N
06327	1	0.25	cup	59	1	\N
06328	1	0.25	cup	59	1	\N
06329	1	0.25	cup	59	1	\N
06330	1	0.25	cup	59	1	\N
06331	1	0.25	cup	59	1	\N
06332	1	0.25	cup	60	1	\N
06333	1	1	serving 1/2 cup	124	1	\N
06334	1	1	serving 1/2 cup	124	1	\N
06336	1	0.5	cup condensed	124	1	\N
06337	1	0.5	cup condensed	124	1	\N
06338	1	0.5	cup condensed	129	12	2.267
06339	1	0.5	cup condensed	124	1	\N
06340	1	1	serving 1/2 cup	124	1	\N
06341	1	0.5	cup condensed	124	1	\N
06342	1	1	serving 1/ 2 cup	124	1	\N
06343	1	1	serving 1/2 cup	124	1	\N
06349	1	1	serving 1/2 cup	126	1	\N
06350	1	1	serving 1/ 2 cup	126	1	\N
06351	1	1	serving 1/2 cup	126	1	\N
06353	1	1	serving 1/2 cup	124	1	\N
06354	1	1	serving 1/2 cup	126	1	\N
06355	1	1	serving 1/2 cup	124	1	\N
06357	1	1	serving 1/2 cup	126	1	\N
06358	1	1	cup (8 fl oz)	251	\N	\N
06358	2	1	can (11 oz), prepared	609	\N	\N
06359	1	1	serving 1 cup	252	\N	\N
06359	2	1	fl oz	31.5	\N	\N
06361	1	1	serving 1/2 cup	128	1	\N
06363	1	0.5	cup condensed	126	1	\N
06364	1	1	serving 1/2 cup	126	1	\N
06365	1	1	serving 1/2 cup	126	1	\N
06366	1	1	serving 1/2 cup	126	1	\N
06367	1	1	serving 1/2 cup	126	1	\N
06373	1	1	serving 1/2 cup	126	1	\N
06374	1	1	serving 1/2 cup	126	1	\N
06375	1	0.5	cup condensed	126	1	\N
06377	1	0.5	cup condensed	124	1	\N
06379	1	1	serving 1/2 cup	126	1	\N
06380	1	1	serving 1/2 cup	128	1	\N
06383	1	1	cup	245	1	\N
06384	1	1	cup	245	1	\N
06387	1	1	cup	245	1	\N
06388	1	1	cup	245	1	\N
06389	1	1	cup	245	1	\N
06391	1	1	cup	245	1	\N
06392	1	1	cup	245	1	\N
06393	1	1	cup	245	1	\N
06395	1	1	cup	243	11	2.691
06395	2	1	can	526	11	5.025
06396	1	1	cup	245	1	\N
06398	1	1	cup	245	1	\N
06399	1	1	cup	245	1	\N
06400	1	1	cup	245	1	\N
06401	1	1	cup (8 fl oz)	244	\N	\N
06401	2	1	can (10.75 oz), prepared	593	\N	\N
06402	1	1	cup	247	\N	\N
06402	2	1	can (11 oz), prepared	600	\N	\N
06403	1	1	cup	245	1	\N
06404	1	1	serving 1 cup	266	\N	\N
06404	2	1	fl oz	33.3	\N	\N
06405	1	1	cup	245	1	\N
06406	1	1	cup (8 fl oz)	250	\N	\N
06406	2	1	can (11.25 oz), prepared	607	\N	\N
06408	1	1	cup	245	1	\N
06409	1	1	cup (8 fl oz)	244	\N	\N
06409	2	1	can (10.75 oz), prepared	593	\N	\N
06410	1	1	cup	248	\N	\N
06410	2	1	can (10.75 oz), prepared	593	\N	\N
06411	1	1	cup (8 fl oz)	247	\N	\N
06411	2	1	can (11 oz), prepared	600	\N	\N
06413	1	1	cup (8 fl oz)	244	\N	\N
06413	2	1	can (10.75 oz), prepared	593	\N	\N
06414	1	1	cup	245	1	\N
06415	1	1	cup	206	5	7.759
06415	2	1	can	527	21	6.183
06416	1	1	cup	244	\N	\N
06416	2	1	fl oz	30.5	\N	\N
06416	3	1	can (10.75 oz), prepared	593	\N	\N
06417	1	1	cup	244	\N	\N
06417	2	1	can (10.75 oz), prepared	593	\N	\N
06418	1	1	serving	245	1	\N
06419	1	1	serving 1 cup	248	\N	\N
06423	1	1	serving 1 cup	243	\N	\N
06426	1	1	cup	261	\N	\N
06426	2	1	fl oz	32.6	\N	\N
06428	1	1	serving 1 cup	249	\N	\N
06428	2	1	fl oz	31.1	\N	\N
06429	1	1	cup	245	1	\N
06430	1	1	serving 1 cup	248	\N	\N
06430	2	1	fl oz	31.0	\N	\N
06431	1	1	cup	251	12	9.511
06431	2	1	can	519	12	6.135
06432	1	1	cup (8 fl oz)	241	\N	\N
06432	2	1	can (10.5 oz), prepared	586	\N	\N
06433	1	1	cup	245	1	\N
06434	1	1	cup	247	9	1.994
06434	2	1	can	529	9	7.726
06437	1	1	cup	245	1	\N
06438	1	1	serving	245	1	\N
06439	1	1	cup	245	1	\N
06440	1	1	cup (8 fl oz)	241	\N	\N
06440	2	1	can (10.5 oz), prepared	586	\N	\N
06441	1	1	cup	245	1	\N
06442	1	1	cup (8 fl oz)	244	\N	\N
06442	2	1	can (10.75 oz), prepared	593	\N	\N
06443	1	1	serving 1 cup	248	\N	\N
06443	2	1	fl oz	31.0	\N	\N
06444	1	1	cup (8 fl oz)	244	\N	\N
06444	2	1	can (10.75 oz), prepared	593	\N	\N
06446	1	1	cup (8 fl oz)	244	\N	\N
06446	2	1	can (10.75 oz), prepared	593	\N	\N
06447	1	1	cup	245	1	\N
06448	1	1	cup (8 fl oz)	241	\N	\N
06448	2	1	can (10.5 oz), prepared	586	\N	\N
06449	1	1	serving 1 cup	259	\N	\N
06449	2	1	fl oz	32.4	\N	\N
06451	1	1	cup (8 fl oz)	253	\N	\N
06451	2	1	can (11.5 oz), prepared	614	\N	\N
06453	1	1	cup (8 fl oz)	244	\N	\N
06453	2	1	can (10.75 oz), prepared	593	\N	\N
06454	1	1	cup	245	1	\N
06456	1	1	cup	244	\N	\N
06456	2	1	can (10.75 oz), prepared	593	\N	\N
06457	1	1	cup	245	1	\N
06459	1	1	cup	245	1	\N
06461	1	1	cup	244	\N	\N
06461	2	1	can (10.75 oz), prepared	593	\N	\N
06462	1	1	cup	245	1	\N
06463	1	1	cup	247	\N	\N
06463	2	1	can (11 oz), prepared	600	\N	\N
06465	1	1	cup	244	\N	\N
06465	2	1	fl oz	30.5	\N	\N
06465	3	1	can (10.75 oz), prepared	593	\N	\N
06466	1	1	cup (8 fl oz)	241	\N	\N
06466	2	1	fl oz	30.1	\N	\N
06466	3	1	can (10.5 oz), prepared	586	\N	\N
06468	1	1	cup	241	\N	\N
06468	2	1	can (10.5 oz), prepared	586	\N	\N
06470	1	1	serving 1 container	298	1	\N
06471	1	1	cup (8 fl oz)	244	\N	\N
06471	2	1	can (10.75 oz), prepared	593	\N	\N
06472	1	1	cup (8 fl oz)	241	\N	\N
06472	2	1	can (10.5 oz), prepared	586	\N	\N
06475	1	1	serving 1 cup	240	\N	\N
06475	2	1	fl oz	29.9	\N	\N
06476	1	1	serving 1 cup	240	\N	\N
06476	2	1	fl oz	29.9	\N	\N
06480	1	1	cup 8 fl oz	241	\N	\N
06480	2	1	fl oz	30.1	\N	\N
06481	1	1	cup (8 fl oz)	243	\N	\N
06481	2	1	cube (6 fl oz prepared)	182	\N	\N
06482	1	1	serving 1 container	305	1	\N
06483	1	1	cup 8 fl oz	261	\N	\N
06483	2	1	fl oz	32.6	\N	\N
06487	1	1	serving 1 container	298	1	\N
06494	1	1	serving 1 cup	230	\N	\N
06494	2	1	fl oz	28.7	\N	\N
06497	1	1	cup	245	1	\N
06497	2	1	serving	245	1	\N
06498	1	1	cup 8 fl oz	265	\N	\N
06502	1	1	cup	245	1	\N
06502	2	1	serving	245	1	\N
06503	1	1	cup	245	1	\N
06503	2	1	serving	245	1	\N
06504	1	1	cup	245	1	\N
06504	2	1	serving	245	1	\N
06505	1	1	cup	245	1	\N
06505	2	1	serving	245	1	\N
06509	2	1	serving	245	1	\N
06528	1	1	cup	245	\N	\N
06529	1	1	cup	245	1	\N
06537	1	1	cup	245	1	\N
06541	1	1	cup	245	1	\N
06543	1	1	cup	245	1	\N
06544	1	1	cup	245	1	\N
06545	1	1	cup	256	7	7.522
06545	2	1	can	519	7	3.198
06546	1	1	cup	245	1	\N
06547	1	1	cup (8 fl oz)	244	\N	\N
06547	2	1	can (10.75 oz), prepared	593	\N	\N
06548	1	1	cup	245	1	\N
06549	1	1	cup (8 fl oz)	244	\N	\N
06549	2	1	can (10.75 oz), prepared	593	\N	\N
06558	1	1	cup (8 fl oz)	247	\N	\N
06558	2	1	can (11 oz), prepared	600	\N	\N
06559	1	1	serving 1 cup	248	\N	\N
06559	2	1	fl oz	31.0	\N	\N
06580	1	1	cup	245	1	\N
06583	1	1	package without flavor packet	81	45	3.072
06583	2	1	packet	5.8	45	0.517
06584	1	1	serving 1/2 cup	121	\N	\N
06584	2	1	can 10.7 oz (10.75 oz)	303	\N	\N
06585	1	1	container	305	1	\N
06586	1	1	container	305	1	\N
06587	1	1	container	305	1	\N
06588	1	1	container	305	1	\N
06589	1	1	container	305	1	\N
06590	1	1	container	305	1	\N
06592	1	1	container	305	1	\N
06594	1	1	container	305	1	\N
06595	1	1	container	305	1	\N
06596	1	1	container	305	1	\N
06597	1	1	serving	32	1	\N
06597	2	2	tbsp	32	1	\N
06598	1	1	serving	32	1	\N
06598	2	2	tbsp	32	1	\N
06599	1	0.25	cup	60	1	\N
06599	2	1	serving	60	1	\N
06600	1	1	serving	16	1	\N
06600	2	2	tbsp	16	1	\N
06601	1	1	serving	32	1	\N
06601	2	2	tbsp	32	1	\N
06602	1	1	serving	32	1	\N
06602	2	2	tbsp	32	1	\N
06603	1	1	serving	32	1	\N
06603	2	2	tbsp	32	1	\N
06604	1	1	tbsp	16	1	\N
06604	2	1	serving	16	1	\N
06605	1	1	serving	32	1	\N
06605	2	2	tbsp	32	1	\N
06609	1	1	cup	235	1	\N
06609	2	1	serving	235	1	\N
06611	1	1	cup	213	5	3.114
06611	2	1	can 14.5 oz	413	10	5.272
06611	3	1	carton 32 oz	925	15	14.306
06615	1	1	cup	220	5	2.588
06615	2	1	carton 32 oz	928	20	5.829
06617	1	1	cup	245	1	\N
06618	1	1	tbsp	17	5	0.344
06619	1	10	oz 1 pouch	283	1	\N
06620	1	10	oz 1 pouch	283	1	\N
06621	1	10	oz 1 pouch	283	1	\N
06622	1	10	oz 1 pouch	283	1	\N
06623	1	10	oz 1 pouch	283	1	\N
06624	1	10	oz 1 pouch	283	1	\N
06625	1	10	oz 1 pouch	283	1	\N
06626	1	0.25	cup	63	6	1.293
06627	1	0.25	cup	61	22	1.962
06628	1	0.25	cup	63	6	1.293
06629	1	0.25	cup	62	11	1.926
06630	1	0.25	cup	60	6	2.499
06631	1	1	tsp	6.5	16	0.672
06632	1	1	tsp	6.9	5	0.277
06633	1	1	tsp	6.2	9	0.754
06700	1	1	cup	221	40	2.952
06700	2	1	can	390	8	4.302
06700	3	1	carton (32 oz)	926	28	5.929
06725	1	1	serving	240	\N	\N
06725	2	1	package yields	539	\N	\N
06726	1	1	serving	240	\N	\N
06726	2	1	package yields	539	\N	\N
06728	1	1	serving	240	\N	\N
06728	2	1	package yields	539	\N	\N
06729	1	1	serving	240	\N	\N
06729	2	1	package yields	539	\N	\N
06730	1	1	serving	243	\N	\N
06730	2	1	package yields	539	\N	\N
06731	1	1	serving 1/2 cup	128	\N	\N
06733	1	1	serving	127	\N	\N
06733	2	1	package yields	312	\N	\N
06734	1	1	serving	125	\N	\N
06734	2	1	package yields	298	\N	\N
06736	1	1	serving	126	\N	\N
06736	2	1	package yields	305	\N	\N
06738	1	1	serving	135	\N	\N
06738	2	1	package yields	326	\N	\N
06739	1	1	serving	136	\N	\N
06739	2	1	package yields	298	\N	\N
06740	1	1	serving	240	\N	\N
06740	2	1	package yields	454	\N	\N
06742	1	1	serving	292	\N	\N
06742	2	1	package yields	292	\N	\N
06748	1	1	cup	210	5	7.19
06748	2	1	can	526	18	7.842
06749	1	1	cup	250	15	4.641
06749	2	1	can	528	15	7.164
06930	1	0.25	cup	63	\N	\N
06931	1	1	serving 1/2 cup	132	36	10.729
06932	1	1	serving 1/2 cup	130	1	\N
06955	1	0.5	cup	124	\N	\N
06956	1	1	serving 1/2 cup	121	\N	\N
06956	2	1	can 10.7 oz	303	\N	\N
06957	1	1	serving	6.7	\N	\N
06957	2	1	package	454	\N	\N
06958	1	1	serving	6.7	\N	\N
06958	2	1	package (16 oz)	454	\N	\N
06959	1	1	serving	6.7	\N	\N
06959	2	1	package (16 oz)	454	\N	\N
06961	1	1	tbsp	15	\N	\N
06961	2	1	cup	245	\N	\N
06962	1	1	tbsp	15	\N	\N
06962	2	1	cup	245	\N	\N
06963	1	1	cup	244	\N	\N
06963	2	1	fl oz	30.5	\N	\N
06964	1	1	serving 1 cup	248	\N	\N
06964	2	1	fl oz	31.0	\N	\N
06965	1	1	cup	259	\N	\N
06965	2	1	fl oz	32.4	\N	\N
06966	1	1	serving 1 cup	248	\N	\N
06966	2	1	fl oz	31.0	\N	\N
06967	1	1	cup	253	\N	\N
06968	1	1	cup	244	\N	\N
06968	2	1	can (10.75 oz)	305	\N	\N
06969	1	1	serving 1/3 cup	39	\N	\N
06970	1	1	cup	240	\N	\N
06971	1	1	tbsp	17	\N	\N
06971	2	1	cup	275	\N	\N
06972	1	1	packet	6.0	\N	\N
06972	2	1	cup	273	\N	\N
06974	1	1	cup	241	\N	\N
06976	1	1	serving 1/2 cup	128	1	\N
06976	2	1	cup	257	1	\N
06977	1	1	cup	236	\N	\N
06978	1	1	cup	251	\N	\N
06980	1	1	cup	240	\N	\N
06981	1	1	tsp	2.6	\N	\N
06981	2	1	cube	3.6	\N	\N
06982	1	1	package without flavor packet	82	23	2.649
06982	2	1	packet	5.6	23	0.59
06983	1	1	package without flavor packet	81	22	3.43
06983	2	1	packet	6.0	22	0.309
06984	1	1	serving 1 cup 8 oz	227	1	\N
06985	1	1	serving 1/4 cup 2 oz	57	1	\N
06986	1	0.5	cup condensed	126	1	\N
06987	1	1	serving 1/2 cup	124	1	\N
06988	1	0.5	cup condensed	124	1	\N
06989	1	0.5	cup condensed	126	1	\N
06990	1	1	serving 1/2 cup	120	1	\N
06991	1	1	serving 1/2 cup	124	1	\N
06992	1	1	serving 1/2 cup	126	1	\N
06994	1	1	serving 1/2 cup	130	1	\N
06995	1	1	serving 1/2 cup	130	1	\N
06996	1	0.25	cup	59	1	\N
06997	1	0.25	cup	59	1	\N
06998	1	0.25	cup	59	1	\N
06999	1	0.25	cup	56	1	\N
06999	2	1	cup	226	4	0.492
06999	3	1	can 10.5 oz	273	27	\N
07001	1	1	oz	28.35	\N	\N
07001	2	1	slice (5-7/8"" x 3-1/2"" x 1/16"")	23	\N	\N
07002	1	2	oz	56	1	\N
07003	1	1	slice (4"" dia x 1/8"" thick)	23	\N	\N
07003	2	1	slice (2-3/4"" dia x 1/16"")	6.0	\N	\N
07004	1	1	slice	23	\N	\N
07004	2	1	oz	28.35	\N	\N
07005	1	4	slices	100	1	\N
07006	1	1	sausage	91	1	\N
07007	1	1	slice	30	63	4.827
07007	2	1	serving	28	2	\N
07008	1	3.527	oz	100	2	\N
07010	1	1	slice, medium (4-1/2"" dia x 1/8"" thick) (1 oz)	28	\N	\N
07010	2	1	slice (4"" dia x 1/8"" thick)	23	\N	\N
07011	1	0.99	oz 1 serving	28	\N	0
07011	2	1	serving	28	\N	\N
07011	3	1	package	454	\N	\N
07013	1	1	link cooked	85	1	\N
07014	1	1	oz	28.35	\N	\N
07014	2	1	slice (2-1/2"" dia x 1/4"" thick)	18	\N	\N
07015	1	1	link	70	\N	\N
07016	1	2.33	links	100	1	\N
07018	1	1	serving (1 serving)	56	\N	\N
07019	1	1	oz	28.35	\N	\N
07019	2	1	link (4"" long)	60	\N	\N
07020	1	1	slice (1 oz) (4"" x 4"" x 3/32"" thick)	28	\N	\N
07020	2	2	slices	57	\N	\N
07021	1	1	slice	38	\N	\N
07022	1	1	frankfurter	50	35	5.748
07022	2	1	package	446	35	26.463
07024	1	3	oz	85	\N	\N
07024	2	1	link	45	22	9.062
07025	1	1	oz	28.35	\N	\N
07025	2	1	frankfurter	45	\N	\N
07026	1	1	oz	28.35	\N	\N
07026	2	1	slice (4-1/4"" x 4-1/4"" x 1/16"")	21	\N	\N
07027	1	1	slice (1 oz) (4"" x 4"" x 3/32"" thick)	28	\N	\N
07027	2	1	slice (4-1/4"" x 4-1/4"" x 1/16"")	21	\N	\N
07028	1	1	slice	23	20	6.218
07029	1	56	grams 1 serving	56	\N	\N
07029	2	1	slice	28	\N	\N
07030	1	1	oz	28.35	\N	\N
07030	2	1	slice (4-1/4"" x 4-1/4"" x 1/16"")	21	\N	\N
07031	1	1	tbsp	15.0	\N	\N
07031	2	1	oz	28.35	\N	\N
07032	1	1	slice (1 oz) (4"" x 4"" x 3/32"" thick)	28	\N	\N
07032	2	2	slices	57	\N	\N
07033	1	1	tbsp	15.0	\N	\N
07033	2	1	oz	28.35	\N	\N
07034	1	1	slice (1 oz) (4"" x 4"" x 3/32"" thick)	28	\N	\N
07034	2	45	g	45	1	\N
07036	1	1	link, 4/lb	113	\N	\N
07036	2	1	link, 5/lb	91	\N	\N
07038	1	1	link	72	\N	\N
07038	2	1	oz	28.35	\N	\N
07039	1	1	serving 2 slices	57	\N	\N
07039	2	1	oz	28.35	\N	\N
07039	3	2	oz	57	1	\N
07040	1	1	oz	28.35	\N	\N
07040	2	1	slice	38	\N	\N
07041	1	1	slice (2-1/2"" dia x 1/4"" thick)	18	\N	\N
07041	2	1	oz	28.35	\N	\N
07043	1	1	slice oval	9.3	24	1.316
07043	2	1	slice rectangle	13.8	12	1.843
07044	1	1	serving	45	6	3.447
07044	2	1	can	830	6	3.01
07045	1	1	oz	28.35	\N	\N
07045	2	1	slice (4-1/4"" x 4-1/4"" x 1/16"")	21	\N	\N
07046	1	1	slice	28	1	\N
07046	2	1	slice NFS	28	1	\N
07046	3	1	cup wafer slices or shaved	81	1	\N
07046	4	1	cubic inch	14.0	1	\N
07046	5	2	oz	57	1	\N
07050	1	1	oz	28.35	\N	\N
07050	2	1	slice (15 per 8 oz package)	15.0	\N	\N
07051	1	1	slice (1 oz) (4"" x 4"" x 3/32"" thick)	28	\N	\N
07051	2	2	slices	57	\N	\N
07052	1	2	slices	57	\N	\N
07052	2	1	package (8 oz)	227	\N	\N
07053	1	1	tbsp	13.0	\N	\N
07053	2	1	oz	28.35	\N	\N
07054	1	1	tbsp	13.0	\N	\N
07054	2	1	oz	28.35	\N	\N
07055	1	1	tbsp	13.0	\N	\N
07055	2	1	oz	28.35	\N	\N
07056	1	3.52	slices	100	1	\N
07057	1	3	oz	85	\N	\N
07057	2	1	piece	2.0	689	0.249
07057	3	1	oz	28	\N	\N
07058	1	1	slice	38	6	0
07058	2	2	slices	57	\N	\N
07059	1	3	oz	85	\N	\N
07059	2	1	sausage (10"" long x 1-1/4"" dia)	227	\N	\N
07060	1	1	slice (1 oz) (4"" x 4"" x 3/32"" thick)	28	\N	\N
07060	2	2	slices	57	\N	\N
07061	1	1	oz	28.35	\N	\N
07061	2	1	slice (4-1/4"" x 4-1/4"" x 1/16"")	21	\N	\N
07062	1	1	slice (1 oz) (4"" x 4"" x 3/32"" thick)	28	\N	\N
07062	2	2	slices	57	\N	\N
07063	1	1	link	25	90	\N
07064	1	1	patty	27	90	\N
07064	2	1	link	23	240	\N
07064	3	1	serving	48	\N	\N
07065	1	1	link (raw dimensions: 4"" long x 7/8"" dia), cooked	13.0	\N	\N
07065	2	1	patty, cooked (raw dimensions: 3-7/8"" dia x 1/4"" thick)	27	\N	\N
07066	1	1	cup	128	\N	\N
07067	1	1	tbsp	13.0	\N	\N
07067	2	1	oz	28.35	\N	\N
07068	1	1	slice	26	2	\N
07068	2	1	oz	28.35	1	\N
07069	1	1	slice round	12.3	40	12.725
07070	1	1	serving	28	1	\N
07071	1	1	package (4 oz)	113	\N	\N
07071	2	1	slice (3-1/8"" dia x 1/16"" thick)	10.0	\N	\N
07072	1	1	slice	9.8	54	6.874
07072	2	1	oz	28	1	\N
07072	3	3	slices 1 serving	27	1	\N
07073	1	1	tbsp	15.0	\N	\N
07073	2	1	oz	28.35	\N	\N
07074	1	1	link (4"" long x 1-1/8"" dia)	68	\N	\N
07074	2	1	link, little (2"" long x 3/4"" dia)	16	\N	\N
07075	1	3	oz	85	1	\N
07077	1	1	link (4"" long x 1-1/8"" dia)	68	\N	\N
07077	2	1	link,  little (2"" long x 3/4"" dia)	16	\N	\N
07078	1	2	oz 1 serving	56	4	0
07081	1	1	slice	15	24	8.397
07083	1	1	sausage (7/8"" dia x 2"" long)	16	\N	\N
07083	2	7	sausages (drained contents from can, net wt 4 oz)	113	\N	\N
07088	1	1	slice (4"" dia x 1/8"" thick)	23	\N	\N
07088	2	1	oz	28.35	\N	\N
07089	1	1	link, 4/lb	83	\N	\N
07089	2	1	link, 5/lb	67	\N	\N
07090	1	1	slice (4"" dia x 1/8"" thick)	23	\N	\N
07090	2	1	oz	28.35	\N	\N
07091	1	1	slice (4"" dia x 1/8"" thick)	23	\N	\N
07091	2	1	oz	28.35	\N	\N
07201	1	1	serving (1 slice)	28	\N	\N
07207	1	3	oz	85	\N	\N
07207	2	1	serving (1 slice)	28	\N	\N
07209	1	1	serving (4 slices)	52	\N	\N
07212	1	1	serving (1 slice)	28	\N	\N
07230	1	1	serving 3 slices	27	\N	\N
07230	2	1	slice	9.0	\N	\N
07236	1	1	link	9.0	\N	\N
07236	2	1	serving	57	\N	\N
07241	1	1	serving	45	\N	\N
07254	1	1	serving	14.0	\N	\N
07254	2	1	slice 12 oz pkg	16	1329	\N
07254	3	1	slice 6 oz pkg	9.8	160	\N
07278	1	1	serving	30	\N	\N
07900	1	3	oz	85	\N	\N
07900	2	1	lb 16 oz	453.6	\N	\N
07901	1	1	oz	28.35	\N	\N
07901	2	1	link	48	\N	\N
07905	1	1	frank 1 NLEA serving	57	1	\N
07906	1	2	oz 1 NLEA serving	56	1	\N
07907	1	1	link	28	\N	\N
07908	1	2	oz 1 NLEA serving	56	1	\N
07909	1	2	oz (1 serving)	56	\N	\N
07910	1	1	serving 2.96 oz	84	\N	\N
07911	1	0.25	cup	55	1	\N
07912	1	1	serving .25 cup	57	\N	\N
07913	1	3.527	oz	100	\N	\N
07914	1	1	link 3 oz	84	\N	\N
07915	1	1	serving 5 pieces	55	\N	\N
07915	2	5	pieces	55	\N	\N
07916	1	1	serving 2.67 oz	76	\N	\N
07917	1	12	oz serving 2.7 oz	77	\N	\N
07918	1	1	oz	28.35	\N	\N
07919	1	2	oz, 2 links	56	\N	\N
07920	1	1	serving 2.7 oz	77	\N	\N
07921	1	1	oz	28	\N	\N
07922	1	1	serving 2.33 oz	66	\N	\N
07923	1	1	serving 2.96 oz	84	\N	\N
07924	1	1	serving 2.33 oz	66	\N	\N
07925	1	1	serving 6 slices	57	\N	\N
07926	1	1	oz	28	\N	\N
07927	1	1	serving 2 oz	56	\N	\N
07928	1	1	link	84	\N	\N
07929	1	2	oz	56	\N	\N
07930	1	1	serving 2 oz	56	\N	\N
07931	1	1	serving 2 oz	56	\N	\N
07932	1	1	serving 2 slices	42	\N	\N
07933	1	1	serving 2 slices	42	\N	\N
07934	1	1	serving 2 oz	56	\N	\N
07935	1	1	serving 2 oz	56	\N	\N
07936	1	1	serving 2 oz	56	\N	\N
07937	1	1	oz	28.35	1	\N
07938	1	1.94	oz (1 serving)	55	\N	\N
07939	1	1	link	76	\N	\N
07940	1	1	slice	38	\N	\N
07941	1	1	serving 5 slices	28	\N	\N
07942	1	1	serving 2 oz	56	\N	\N
07943	1	1	slice	28	\N	\N
07944	1	1.69	oz (1 serving)	48	1	\N
07945	1	1	frankfurter	48	23	4.516
07945	2	1	package	451	23	1.532
07949	1	1	serving (1 hot dog)	52	\N	\N
07950	1	1	serving (1 hot dog)	52	\N	\N
07951	1	1	cubic inch	17	1	\N
07951	2	1	oz cooked	25	1	\N
07951	3	2	oz	56	3	0
07952	1	1	serving	28	2	\N
07952	2	1	slice	28	2	\N
07953	1	1	patty	30	95	\N
07953	2	1	link	21	360	\N
07953	3	1	serving	48	\N	\N
07954	1	1	serving	48	\N	\N
07955	1	1	serving	57	\N	\N
07956	1	1	serving	43	\N	\N
07957	1	1	serving	57	\N	\N
07958	1	1	serving	57	\N	\N
07959	1	1	serving	28	3	0
07959	2	1	slice	28	3	0
07960	1	1	serving	28	1	\N
07960	2	1	slice	28	1	\N
07961	1	1	slice	12.0	60	3.149
07962	1	1	frankfurter	51	180	\N
07963	1	1	frankfurter	50	300	\N
07964	1	1	frankfurter	48	300	\N
07965	1	3	oz	85	\N	\N
07965	2	1	package	343	21	\N
07966	1	3	oz	85	\N	\N
07966	2	1	package	343	\N	\N
07967	1	1	link	23	110	\N
07967	2	1	patty	37	35	\N
07968	1	3	oz	85	\N	\N
07968	2	1	link	367	100	\N
07969	1	1	link	370	96	\N
07970	1	3	oz	85	\N	\N
07970	2	1	link	396	57	\N
07971	1	1	slice	33	19	6.646
07972	1	3	oz	85	\N	\N
07972	2	3	pieces	56	23	19.305
07973	1	1	slice	8.1	1587	\N
07973	2	1	raw pr g	15	1627	\N
07974	1	1	serving	15.0	1	\N
07978	1	3	oz	85	\N	\N
07979	1	3	oz	85	\N	\N
07979	2	1	serving	56	1	\N
08001	1	0.5	cup (1 NLEA serving)	31	\N	\N
08002	1	1	cup (1 NLEA serving for adults)	30	1	\N
08002	2	0.67	cup (1 serving for children under 4 years)	20	\N	\N
08003	1	1	cup (1 NLEA serving)	28	2	\N
08005	1	0.333	cup (1 NLEA serving)	30	\N	\N
08010	1	0.75	cup (1 NLEA serving)	27	1	\N
08011	1	0.75	cup (1 NLEA serving)	26	1	\N
08012	1	0.75	cup (1 NLEA serving)	27	\N	\N
08013	1	1	cup (1 NLEA serving)	28	1	\N
08014	1	0.75	cup (1 NLEA serving)	31	\N	\N
08015	1	0.75	cup (1 NLEA serving)	29	1	\N
08017	1	0.75	cup (1 NLEA serving)	26	1	\N
08018	1	0.75	cup (1 NLEA serving)	27	\N	\N
08019	1	1	cup (1 NLEA serving)	31	1	\N
08020	1	1	cup (1 NLEA serving)	28	\N	\N
08023	1	0.75	cup (1 NLEA serving)	49	1	\N
08025	1	1.25	cup (1 NLEA serving)	33	\N	\N
08025	2	1	cup	28	3	2.722
08028	1	0.75	cup (1 NLEA serving)	29	\N	\N
08029	1	0.75	cup (1 NLEA serving)	30	\N	\N
08030	1	1	cup (1 NLEA serving)	29	1	\N
08031	1	7	biscuit (1 NLEA serving)	58	1	\N
08032	1	0.75	cup (1 NLEA serving)	30	\N	\N
08034	1	0.75	cup (1 NLEA serving)	27	1	\N
08035	1	0.75	cup (1 NLEA serving)	31	1	\N
08037	1	1	cup	122	\N	\N
08037	2	1	oz	28.35	\N	\N
08038	1	0.5	cup (1 NLEA serving)	58	1	\N
08039	1	0.75	cup (1 NLEA serving)	29	1	\N
08045	1	0.75	cup (1 NLEA serving)	28	1	\N
08046	1	1.5	cup (1 NLEA serving)	32	\N	\N
08047	1	1.5	cup (1 NLEA serving)	31	\N	\N
08048	1	1.25	cup (1 NLEA serving)	30	\N	\N
08049	1	0.75	cup (1 NLEA serving)	32	\N	\N
08049	2	0.5	cup	21	\N	\N
08050	1	0.75	cup (1 NLEA serving)	27	\N	\N
08054	1	0.5	cup (1 NLEA serving)	48	1	\N
08057	1	0.75	cup (1 NLEA serving)	32	\N	\N
08058	1	1	cup (1 NLEA serving)	30	\N	\N
08059	1	1	cup (1 NLEA serving)	27	\N	\N
08060	1	1	cup ( 1 NLEA serving)	59	\N	\N
08061	1	1	cup (1 NLEA serving)	59	\N	\N
08064	1	1	cup (1 NLEA serving)	27	1	\N
08065	1	1.25	cup (1 NLEA serving)	33	\N	\N
08065	2	1	cup	29	27	2.914
08066	1	0.75	cup (1 NLEA serving)	14.0	1	\N
08067	1	1	cup (1 NLEA serving)	31	\N	\N
08068	1	1	cup (1 NLEA serving)	30	1	\N
08069	1	0.75	cup ( 1 NLEA serving)	30	\N	\N
08069	2	1	cup	42	26	3.017
08071	1	0.75	cup (1 NLEA serving)	27	\N	\N
08073	1	0.75	cup (1 NLEA serving)	27	\N	\N
08074	1	1	cup (1 NLEA serving)	28	3	0.929
08077	1	0.75	cup (1 NLEA serving)	30	\N	\N
08078	1	1	cup (1 NLEA serving)	32	1	\N
08081	1	1	cup (1 NLEA serving)	59	1	\N
08082	1	0.75	cup (1 NLEA serving)	47	1	\N
08083	1	1	cup (1 NLEA serving)	31	\N	\N
08084	1	1	oz	28.35	\N	\N
08084	2	1	cup	113	\N	\N
08085	1	2	tbsp (1 NLEA serving)	14.0	1	\N
08087	1	1	cup (1 NLEA serving)	29	1	\N
08089	1	0.75	cup (1 NLEA serving)	27	\N	\N
08090	1	1	tbsp	9.7	\N	\N
08090	2	1	cup	156	\N	\N
08091	1	1	cup	257	12	13.413
08091	2	1	tbsp	16	\N	\N
08092	1	1	packet	29	4	0.252
08092	2	1	tbsp	7.0	4	0.1
08093	1	1	cup	219	8	43.148
08094	1	1	packet (1 NLEA serving)	28	1	\N
08096	1	1	packet (1 NLEA serving)	28	\N	\N
08100	1	0.25	cup (1 NLEA serving)	45	\N	\N
08101	1	1	cup	244	\N	\N
08101	2	1	tbsp	15	\N	\N
08101	3	0.75	cup	183	\N	\N
08102	1	1	tbsp	10.6	\N	\N
08102	2	3	tbsp (1 NLEA serving)	33	1	\N
08102	3	1	cup	173	\N	\N
08103	1	1	cup (1 serving)	251	\N	\N
08103	2	1	tbsp	16	\N	\N
08104	1	1	tbsp	11.0	\N	\N
08104	2	1	cup	176	\N	\N
08105	1	1	cup	240	26	9.402
08105	2	1	tbsp	14.9	\N	\N
08105	3	0.75	cup	179	\N	\N
08106	1	1	tbsp	11.5	\N	\N
08106	2	1	cup	178	\N	\N
08107	1	1	cup	241	\N	\N
08107	2	1	tbsp	15	\N	\N
08107	3	0.75	cup	181	\N	\N
08113	1	1	cup	240	26	9.402
08113	2	1	tbsp	15.0	\N	\N
08116	1	3	tbsp (1 NLEA serving)	35	1	\N
08120	1	1	cup	81	\N	\N
08120	2	0.333	cup	27	\N	\N
08121	1	1	cup	234	\N	\N
08121	2	1	tbsp	14.6	\N	\N
08121	3	0.75	cup	175	\N	\N
08122	1	1	packet	28	\N	\N
08123	1	1	cup, cooked	234	\N	\N
08123	2	1	cup, dry, yields	501	\N	\N
08123	3	1	oz, dry, yields	177	\N	\N
08123	4	1	packet, dry, yields	177	\N	\N
08124	1	1	packet (1 NLEA serving)	43	\N	\N
08128	1	1	packet	45	14	1.743
08129	1	1	cup	240	\N	\N
08129	2	1	tbsp	15.0	\N	\N
08129	3	1	packet, prepared	161	\N	\N
08130	1	1	packet	43	\N	\N
08132	1	1	packet	44	15	1.75
08133	1	1	cup	240	\N	\N
08133	2	1	tbsp	15.0	\N	\N
08133	3	1	packet, prepared	158	\N	\N
08138	1	1	cup	30	\N	\N
08142	1	0.33	cup (1 NLEA serving)	40	\N	\N
08142	2	1	cup	141	\N	\N
08142	3	0.25	cup	35	\N	\N
08143	1	1	cup	243	\N	\N
08143	2	0.75	cup	182	\N	\N
08144	1	1	cup	94	\N	\N
08144	2	0.333	cup	31	\N	\N
08145	1	1	cup	242	\N	\N
08145	2	0.75	cup	182	\N	\N
08146	1	1	cup (1 NLEA serving)	15.0	1	\N
08147	1	2	biscuits (1 NLEA serving)	47	1	\N
08148	1	1	cup (1 NLEA serving)	49	\N	\N
08156	1	1	cup	14.0	\N	\N
08156	2	0.5	oz	14.2	\N	\N
08157	1	1	cup	12.0	\N	\N
08157	2	0.5	oz	14.2	\N	\N
08159	1	1	cup	170	2	\N
08160	1	1	tbsp	9.7	\N	\N
08160	2	1	cup	156	\N	\N
08161	1	1	cup	257	\N	\N
08161	2	1	tablespoon	16	\N	\N
08164	1	1	cup	233	4	2.336
08165	1	1	cup	233	\N	\N
08168	1	1	cup	244	\N	\N
08168	2	0.75	cup	183	\N	\N
08169	1	1	cup (1 serving)	251	\N	\N
08172	1	1	tbsp	10.9	\N	\N
08172	2	1	cup	176	\N	\N
08173	1	1	cup	233	\N	\N
08177	1	3	tbsp (1 NLEA serving)	35	1	\N
08180	1	1	cup	234	\N	\N
08180	2	0.75	cup	175	\N	\N
08182	1	1	cup	243	\N	\N
08182	2	0.75	cup	182	\N	\N
08183	1	1	cup	242	\N	\N
08183	2	0.75	cup	182	\N	\N
08189	1	0.5	cup (1 NLEA serving)	49	\N	\N
08191	1	1	cup (1 NLEA serving)	52	\N	\N
08192	1	1.25	cup (1 NLEA serving)	55	\N	\N
08194	1	0.75	cup (1 NLEA serving)	29	\N	\N
08200	1	0.5	cup (1 NLEA serving)	40	\N	\N
08202	1	1	cup (1 NLEA serving)	60	1	\N
08204	1	1	cup	30	\N	\N
08206	1	0.75	cup (1 NLEA serving)	30	\N	\N
08210	1	0.75	cup (1 NLEA serving)	32	\N	\N
08211	1	0.75	cup (1 NLEA serving)	27	\N	\N
08214	1	1	cup (1 NLEA serving)	56	\N	\N
08215	1	1	cup (1 NLEA serving)	56	1	\N
08216	1	1.25	cup (1 NLEA serving)	57	\N	\N
08218	1	0.5	cup (1 NLEA serving)	51	\N	\N
08220	1	0.666	cup (1 NLEA serving)	55	1	\N
08221	1	1	packet (1 NLEA serving)	28	\N	\N
08225	1	1	packet	35	\N	\N
08228	1	1	packet	37	\N	\N
08231	1	0.5	cup (1 NLEA serving)	40	\N	\N
08239	1	0.75	cup (1 NLEA serving)	27	1	\N
08243	1	1	cup (1 NLEA serving)	57	1	\N
08244	1	0.5	cup (1 NLEA serving)	30	1	\N
08245	1	1	cup (1 NLEA serving)	62	\N	\N
08247	1	1	cup (1 NLEA serving)	53	\N	\N
08259	1	1	cup (1 NLEA serving)	29	\N	\N
08261	1	0.75	cup (1 NLEA serving)	49	1	\N
08262	1	1	cup (1 NLEA serving)	55	\N	\N
08263	1	0.75	cup (1 NLEA serving)	30	1	\N
08267	1	0.75	cup (1 NLEA serving)	27	1	\N
08268	1	1	cup (1 NLEA serving)	33	1	\N
08270	1	0.75	cup (1 NLEA serving)	27	\N	\N
08271	1	0.75	cup (1 NLEA serving)	27	\N	\N
08272	1	0.75	cup (1 NLEA serving)	31	\N	\N
08273	1	1	cup (1 NLEA serving)	33	\N	\N
08274	1	1.25	cup (1 NLEA serving)	33	1	\N
08277	1	0.667	cup (1 NLEA serving)	55	\N	\N
08284	1	0.667	cup (1 NLEA serving)	60	\N	\N
08286	1	0.67	cup (1 NLEA serving)	55	\N	\N
08288	1	0.75	cup (1 NLEA serving)	30	\N	\N
08290	1	0.75	cup (1 NLEA serving)	31	\N	\N
08305	1	1	cup (1 NLEA serving)	30	\N	\N
08309	1	0.75	cup (1 NLEA serving)	30	\N	\N
08314	1	0.25	cup	37	\N	\N
08316	1	0.25	cup (1 NLEA serving)	41	\N	\N
08318	1	1	cup (1 NLEA serving)	50	\N	\N
08319	1	21	biscuits (1 NLEA serving)	54	1	\N
08346	1	0.75	cup (1 NLEA serving)	30	\N	\N
08347	1	0.75	cup (1 NLEA serving)	30	\N	\N
08348	1	1.25	cup (1 NLEA serving)	33	1	\N
08349	1	1	cup (1 NLEA serving)	32	\N	\N
08351	1	1	cup (1 NLEA serving)	33	\N	\N
08352	1	0.75	cup (1 NLEA serving)	32	\N	\N
08353	1	1	cup (1 NLEA serving)	60	\N	\N
08354	1	0.75	cup (1 NLEA serving)	28	\N	\N
08355	1	1	cup (1 NLEA serving)	33	\N	\N
08363	1	0.25	cup (1 NLEA serving)	16	\N	\N
08365	1	3	biscuits (1 NLEA serving)	63	1	\N
08366	1	2	tbsp (1 NLEA serving)	14.0	1	\N
08370	1	1	bowl (3/4 cup) (1 NLEA serving)	21	1	\N
08376	1	1	cup (1 NLEA serving)	29	1	\N
08380	1	1	cup (1 NLEA serving)	53	1	\N
08383	1	1	cup (1 NLEA serving)	31	1	\N
08384	1	30	biscuits (1 NLEA serving)	55	1	\N
08386	1	0.75	Cup (1 NLEA serving)	53	1	\N
08387	1	0.75	cup (1 NLEA serving)	33	1	\N
08388	1	1	cup (1 NLEA serving)	19	1	\N
08389	1	1	cup (1 NLEA serving)	30	1	\N
08390	1	1	cup (1 NLEA serving)	53	1	\N
08393	1	1	cup (1 NLEA serving)	52	1	\N
08402	1	0.5	cup	40	\N	\N
08409	1	0.75	cup (1 NLEA serving)	31	1	\N
08410	1	1	packet (1 NLEA serving)	43	1	\N
08411	1	1	packet (1 NLEA serving)	50	\N	\N
08417	1	1	packet (1 NLEA serving)	41	\N	\N
08435	1	0.75	cup (1 NLEA serving)	55	\N	\N
08436	1	1	packet (1 NLEA serving)	43	1	\N
08444	1	1	packet (1 NLEA serving)	28	\N	\N
08449	1	1	packet (1 NLEA serving)	28	\N	\N
08450	1	1	packet (1 NLEA serving)	28	\N	\N
08451	1	0.5	cup	40	1	\N
08452	1	0.5	cup	40	1	\N
08453	1	0.75	Cup (1 NLEA serving)	29	1	\N
08459	1	25	biscuits (1 NLEA serving)	55	1	\N
08462	1	29	biscuits (1 NLEA serving)	54	1	\N
08463	1	1	cup (1 NLEA serving)	55	1	\N
08469	1	0.75	cup (1 NLEA serving)	30	1	\N
08471	1	0.75	cup (1 NLEA serving)	32	1	\N
08476	1	1.333	cup	29	1	\N
08478	1	0.75	cup (1 NLEA serving)	27	\N	\N
08478	2	1	cup	37	3	3.724
08481	1	0.75	cup (1 NLEA serving)	30	1	\N
08484	1	1	cup (1 NLEA serving)	59	1	\N
08487	1	0.75	cup (1 NLEA serving)	30	1	\N
08488	1	3	tbsp (1 NLEA serving)	35	1	\N
08489	1	0.25	cup (1 NLEA serving)	45	1	\N
08491	1	1	cup (1 NLEA serving)	30	1	\N
08493	1	1	cup (1 NLEA serving)	33	1	\N
08494	1	0.75	cup (1 NLEA serving)	30	1	\N
08495	1	0.75	cup (1 NLEA serving)	29	1	\N
08500	1	1	cup (1 NLEA serving)	55	1	\N
08501	1	0.75	cup	27	1	\N
08504	1	1	serving (NLEA serving size = 0.75 cup)	29	\N	\N
08504	2	1	cup	42	3	1.097
08505	1	1	cup (NLEA serving)	30	1	\N
08506	1	1	cup (1 NLEA serving)	28	1	\N
08507	1	1	cup (1 NLEA serving)	29	\N	\N
08508	1	1	cup	29	6	1.367
08508	2	1	serving (NLEA serving = 1 cup)	29	1	\N
08509	1	1	cup (1 NLEA serving)	28	6	1.864
08510	1	1	bar	25	2	\N
08511	1	1	serving (3 T dry cereal plus 1 cup water)	268	\N	\N
08512	1	1	serving (3 T dry cereal plus 1 cup water)	268	\N	\N
08513	1	0.75	cup (1 NLEA serving)	28	1	\N
08531	1	0.75	cup (1 NLEA serving)	32	1	\N
08537	1	1	cup (1 NLEA serving)	50	1	\N
08538	1	1	cup (1 NLEA serving)	55	1	\N
08539	1	28	biscuits (1 NLEA serving)	55	1	\N
08542	1	25	biscuits (1 NLEA serving)	55	1	\N
08543	1	0.75	cup (1 NLEA serving)	30	1	\N
08544	1	0.75	cup (1 NLEA serving)	48	1	\N
08546	1	1	bar	22	1	\N
08549	1	0.75	cup (1 NLEA serving)	32	1	\N
08550	1	0.75	cup (1 NLEA serving)	26	\N	\N
08553	1	0.75	cup (1 NLEA serving)	30	1	\N
08554	1	0.75	cup (1 NLEA serving)	52	1	\N
08560	1	0.67	Cup (1 NLEA serving)	53	1	\N
08561	1	1	packet (1 NLEA serving)	40	1	\N
08562	1	1	packet (1 NLEA serving)	40	1	\N
08567	1	0.5	cup (1 NLEA serving)	58	1	\N
08568	1	1	packet (1 NLEA serving)	43	1	\N
08569	1	1	packet (1 NLEA serving)	43	1	\N
08571	1	0.75	cup (1 NLEA serving)	55	1	\N
08573	1	3	tablespoon (1 NLEA serving)	33	\N	\N
08573	2	1	tbsp	13.8	4	2.123
08573	3	1	cup	174	4	5.429
08574	1	1	cup	244	3	10.9
08575	1	1	cup	231	4	5.182
08576	1	3	tablespoon (1 serving)	33	\N	\N
08576	2	1	tbsp	13.7	4	0.37
08576	3	1	cup	194	4	10.069
08577	1	1	cup	245	6	15.074
08578	1	1	cup	237	6	1.129
08579	1	1	bowl (3/4 cup) (1 NLEA serving)	28	1	\N
08580	1	1	tbsp	8.9	8	0.089
08580	2	1	cup	128	2	\N
08582	1	0.75	cup (1 NLEA serving)	27	1	\N
08583	1	0.75	cup (1 NLEA serving)	27	1	\N
08584	1	0.75	cup (1 NLEA serving)	31	1	\N
08586	1	1	cup	28	1	\N
08587	1	0.5	cup (1 NLEA serving)	52	1	\N
08588	1	1	cup (1 NLEA serving)	30	1	\N
08589	1	0.75	cup (1 NLEA serving)	51	1	\N
08590	1	0.75	cup (1 NLEA serving)	33	1	\N
08591	1	27	biscuits (1 NLEA serving)	55	1	\N
08592	1	0.75	cup (1 NLEA serving)	28	1	\N
08593	1	0.75	cup (1 NLEA serving)	27	1	\N
08594	1	0.75	cup (1 NLEA serving)	32	1	\N
08595	1	0.75	cup (1 NLEA serving)	30	1	\N
08596	1	1	cup (1 NLEA serving)	50	1	\N
08598	1	1	cup (1 NLEA serving)	52	1	\N
08599	1	1	cup (1 NLEA serving)	55	1	\N
08602	1	0.75	cup (1 NLEA serving)	30	1	\N
08603	1	0.75	cup (1 NLEA serving)	30	1	\N
08608	1	0.75	cup (1 NLEA serving)	30	1	\N
08610	1	0.75	cup (1 NLEA serving)	30	1	\N
08613	1	0.666	cup (1 NLEA serving)	29	1	\N
08615	1	0.75	cup (1 NLEA serving)	31	1	\N
08617	1	25	biscuits (1 NLEA serving)	55	1	\N
08625	1	0.75	cup (1 NLEA serving)	26	1	\N
08627	1	0.5	cup (1 NLEA serving)	49	1	\N
08628	1	0.75	cup (1 NLEA serving)	32	1	\N
08629	1	1	cup (1 NLEA serving)	32	1	\N
08631	1	1	cup (1 NLEA serving)	56	1	\N
08632	1	1	cup (1 NLEA serving)	56	1	\N
08633	1	1	cup (1 NLEA serving)	56	1	\N
08634	1	0.75	cup (1 NLEA serving)	31	1	\N
08635	1	1	cup (1 NLEA serving)	30	1	\N
08637	1	0.75	cup (1 NLEA serving)	27	\N	\N
08639	1	1	packet (1 NLEA serving)	34	1	\N
08640	1	1	packet	41	1	\N
08641	1	1	packet	33	2	\N
08642	1	1	packet (1 NLEA serving)	31	1	\N
08643	1	1.25	cup (1 NLEA serving)	33	\N	\N
08647	1	0.75	cup (1 NLEA serving)	27	1	\N
08648	1	0.75	cup (1 NLEA serving)	27	1	\N
08649	1	0.75	cup (1 NLEA serving)	51	1	\N
08651	1	0.75	cup (1 NLEA serving)	30	\N	\N
08652	1	0.75	cup (1 NLEA serving)	31	1	\N
08653	1	1	cup (1 NLEA serving)	30	1	\N
08655	1	0.75	cup (1 NLEA serving)	29	1	\N
08656	1	0.75	cup (1 NLEA serving)	30	1	\N
08657	1	0.75	cup (1 NLEA serving)	27	1	\N
08658	1	0.75	cup (1 NLEA serving)	30	1	\N
08659	1	0.75	cup (1 NLEA serving)	30	1	\N
08660	1	1	cup (1 NLEA serving)	28	1	\N
08661	1	1	cup (1 NLEA serving)	28	1	\N
08662	1	0.75	cup (1 NLEA serving)	31	1	\N
08663	1	29	biscuits (1 NLEA serving)	55	1	\N
08665	1	0.75	cup (1 NLEA serving)	30	1	\N
08666	1	1	cup (1 NLEA serving)	32	\N	\N
08668	1	1	cup (1 NLEA serving)	55	\N	\N
08669	1	0.75	cup (1 NLEA serving)	30	\N	\N
08670	1	0.75	cup (1 NLEA serving)	30	\N	\N
08671	1	0.75	cup (1 NLEA serving)	27	\N	\N
08672	1	0.75	cup (1 NLEA serving)	30	1	\N
08673	1	1	cup (1 NLEA serving)	55	1	\N
08674	1	0.75	cup (1 NLEA serving)	30	1	\N
08675	1	0.75	cup (1 NLEA serving)	30	1	\N
08676	1	1	cup (1 NLEA serving)	30	1	\N
08677	1	24	biscuits (1 NLEA serving)	55	1	\N
08678	1	0.75	cup (1 NLEA serving)	31	\N	\N
08679	1	0.75	cup (1 NLEA serving)	30	1	\N
08680	1	1	packet	43	23	0.981
08681	1	0.75	cup (1 NLEA serving)	27	1	\N
08682	1	0.75	cup (1 NLEA serving)	28	1	\N
08683	1	1	cup (1 NLEA serving)	53	1	\N
08684	1	1	cup (1 NLEA serving)	30	1	\N
08685	1	0.75	cup (1 NLEA serving)	28	1	\N
08686	1	1	packet (1 NLEA serving)	45	1	\N
08687	1	1	packet (1 NLEA serving)	45	1	\N
08688	1	1	packet (1 NLEA serving)	45	1	\N
08689	1	1	package (1 NLEA serving)	70	1	\N
08690	1	1	package (1 NLEA serving)	75	1	\N
08691	1	1	package (1 NLEA serving)	70	1	\N
08692	1	1	package (1 NLEA serving)	75	1	\N
08693	1	1	package (1 NLEA serving)	73	1	\N
08694	1	1	packet (1 NLEA serving)	45	1	\N
08695	1	1	Cup (1 NLEA serving)	56	1	\N
08696	1	1.25	cup (1 NLEA serving)	58	1	\N
08697	1	0.75	Cup (1 NLEA serving)	50	\N	\N
08699	1	0.75	Cup (1 NLEA serving)	31	\N	\N
08700	1	1	Cup (1 NLEA serving)	53	\N	\N
08701	1	1	Cup (1 NLEA serving)	31	\N	\N
08702	1	1	Container (1 NLEA serving)	52	\N	\N
08703	1	1	Container (1 NLEA serving)	52	\N	\N
08704	1	1	Container (1 NLEA serving)	52	\N	\N
08705	1	1	Cup (1 NLEA serving)	51	\N	\N
08706	1	1	Cup (1 NLEA serving)	32	\N	\N
08707	1	0.67	Cup (1 NLEA serving)	28	\N	\N
08708	1	24	Biscuits (1 NLEA serving)	55	\N	\N
08709	1	1	cup (1 NLEA serving)	55	\N	\N
08710	1	1	Cup (1 NLEA serving)	49	\N	\N
08711	1	0.75	Cup (1 NLEA serving)	31	\N	\N
08712	1	1.25	Cups (1 NLEA serving)	59	\N	\N
09001	1	1	cup	98	\N	\N
09001	2	1	fruit without refuse	4.8	\N	\N
09002	1	1	cup	242	\N	\N
09002	2	1	fl oz	30.2	\N	\N
09003	1	1	cup, quartered or chopped	125	\N	\N
09003	2	1	cup slices	109	60	6.953
09003	3	1	large (3-1/4"" dia)	223	113	32.277
09003	4	1	medium (3"" dia)	182	113	20.572
09003	5	1	small (2-3/4"" dia)	149	113	17.362
09003	6	1	extra small (2-1/2"" dia)	101	\N	\N
09003	7	1	NLEA serving	242	\N	\N
09004	1	1	cup slices	110	\N	\N
09004	2	1	large (3-1/4"" dia)	216	20	29.845
09004	3	1	medium (3"" dia)	161	19	20.523
09004	4	1	small (2-3/4"" dia)	132	19	14.449
09005	1	1	cup slices	171	1	\N
09006	1	1	cup slices	170	\N	\N
09007	1	1	cup slices	204	\N	\N
09008	1	1	cup slices	204	\N	\N
09009	1	1	cup	60	\N	\N
09010	1	1	cup	193	\N	\N
09011	1	1	cup	86	\N	\N
09011	2	1	ring	6.4	\N	\N
09012	1	1	cup	255	\N	\N
09013	1	1	cup	280	\N	\N
09014	1	1	cup slices	173	\N	\N
09015	1	1	cup slices	206	\N	\N
09016	1	1	cup	248	\N	\N
09016	2	1	fl oz	31.0	\N	\N
09016	3	1	drink box (8.45 fl oz)	262	\N	\N
09017	1	1	can (6 fl oz)	211	\N	\N
09018	1	1	cup	239	\N	\N
09018	2	1	fl oz	29.9	\N	\N
09019	1	1	cup	244	81	\N
09020	1	1	cup	246	72	\N
09021	1	1	cup, halves	155	\N	\N
09021	2	1	cup, sliced	165	\N	\N
09021	3	1	apricot	35	\N	\N
09022	1	1	cup, halves	243	\N	\N
09022	2	1	apricot half with liquid	36	\N	\N
09023	1	1	cup, whole, without pits	227	\N	\N
09024	1	1	cup, halves	244	\N	\N
09024	2	1	apricot half with liquid	36	\N	\N
09025	1	1	cup, halves	247	\N	\N
09026	1	1	cup, halves	253	\N	\N
09026	2	1	apricot half with liquid	40	\N	\N
09027	1	1	cup, halves	258	\N	\N
09027	2	1	cup, whole	240	\N	\N
09027	3	1	apricot half with liquid	40	\N	\N
09028	1	1	cup, whole, without pits	258	\N	\N
09029	1	1	cup, whole, without pits	246	\N	\N
09030	1	1	cup	119	\N	\N
09031	1	1	cup	249	\N	\N
09032	1	1	cup, halves	130	\N	\N
09032	2	1	half	3.5	\N	\N
09033	1	1	cup, halves	250	\N	\N
09034	1	1	cup, halves	270	\N	\N
09035	1	1	cup	242	\N	\N
09036	1	1	cup	251	\N	\N
09036	2	1	fl oz	31.4	\N	\N
09037	1	1	cup, cubes	150	\N	\N
09037	2	1	cup, pureed	230	\N	\N
09037	3	1	cup, sliced	146	\N	\N
09037	4	1	avocado, NS as to Florida or California	201	\N	\N
09038	1	1	cup, pureed	230	\N	\N
09038	2	1	fruit, without skin and seed	136	22	30.829
09038	3	1	NLEA serving	30	\N	\N
09039	1	1	cup, pureed	230	\N	\N
09039	2	1	fruit without skin and seeds	304	\N	\N
09040	1	1	cup, mashed	225	\N	\N
09040	2	1	cup, sliced	150	\N	\N
09040	3	1	extra small (less than 6"" long)	81	\N	\N
09040	4	1	small (6"" to 6-7/8"" long)	101	\N	\N
09040	5	1	medium (7"" to 7-7/8"" long)	118	\N	\N
09040	6	1	large (8"" to 8-7/8"" long)	136	\N	\N
09040	7	1	extra large (9"" or longer)	152	\N	\N
09040	8	1	NLEA serving	126	\N	\N
09041	1	1	cup	100	\N	\N
09041	2	1	tbsp	6.2	\N	\N
09042	1	1	cup	144	\N	\N
09043	1	1	cup	250	\N	\N
09044	1	0.25	cup	40	2	\N
09046	1	1	cup	256	\N	\N
09048	1	1	cup, unthawed	151	\N	\N
09048	2	1	package (18 oz)	510	\N	\N
09050	1	1	cup	148	12	9.108
09050	2	50	berries	68	\N	\N
09052	1	1	cup	256	\N	\N
09053	1	1	cup, frozen	140	1	\N
09054	1	1	cup, unthawed	155	\N	\N
09054	2	1	package (20 oz)	567	\N	\N
09055	1	1	cup, thawed	230	\N	\N
09055	2	1	package (10 oz)	284	\N	\N
09056	1	1	cup	256	\N	\N
09057	1	1	cup, unthawed	132	\N	\N
09057	2	1	package (10 oz)	284	\N	\N
09059	1	1	cup	220	\N	\N
09059	2	0.25	fruit, small	96	\N	\N
09060	1	1	cup, cubes	132	10	5.919
09060	2	1	cup, sliced	108	10	7.956
09060	3	1	large (4-1/2"" long)	124	2	\N
09060	4	1	medium (3-5/8"" long)	91	5	4.373
09060	5	1	small (3-1/8"" long)	70	2	\N
09061	1	1	cup slices	150	\N	\N
09061	2	1	fruit without skin and seeds	20	\N	\N
09062	1	1	cup, pieces	160	18	12.676
09062	2	1	fruit without skin and seeds	235	17	77.514
09063	1	1	cup, without pits	155	\N	\N
09063	2	1	cup, with pits, yields	103	\N	\N
09064	1	1	cup	244	\N	\N
09065	1	1	cup	252	\N	\N
09066	1	1	cup	256	\N	\N
09067	1	1	cup	261	\N	\N
09068	1	1	cup, unthawed	155	\N	\N
09068	2	1	package (18 oz)	510	\N	\N
09070	1	1	cup, with pits, yields	138	20	7.641
09070	2	1	cup, without pits	154	20	13.63
09070	3	1	cherry	8.2	40	1.817
09070	4	1	NLEA serving	140	\N	\N
09071	1	1	cup, pitted	248	\N	\N
09072	1	1	cup, pitted	250	\N	\N
09073	1	1	cup, pitted	252	\N	\N
09074	1	1	cup	253	\N	\N
09075	1	1	cup, pitted	261	\N	\N
09076	1	1	cup, thawed	259	\N	\N
09076	2	1	package (10 oz)	284	\N	\N
09077	1	1	cup slices	110	\N	\N
09078	1	1	cup, chopped	110	\N	\N
09078	2	1	cup, whole	100	12	5.689
09079	1	0.25	cup	40	3	0
09081	1	1	cup	277	\N	\N
09081	2	1	slice (1/2"" thick, approx 8 slices per can)	57	\N	\N
09082	1	1	cup	275	\N	\N
09083	1	1	cup	112	\N	\N
09084	1	1	cup	112	\N	\N
09085	1	1	cup	144	\N	\N
09087	1	1	cup, chopped	147	18	22.079
09087	2	1	date, pitted	7.1	80	1.433
09088	1	1	cup	145	\N	\N
09089	1	1	large (2-1/2"" dia)	64	\N	\N
09089	2	1	medium (2-1/4"" dia)	50	\N	\N
09089	3	1	small (1-1/2"" dia)	40	\N	\N
09090	1	1	cup	248	\N	\N
09090	2	1	fig with liquid	27	\N	\N
09091	1	1	cup	252	\N	\N
09091	2	1	fig with liquid	28	\N	\N
09092	1	1	cup	259	\N	\N
09092	2	1	fig with liquid	28	\N	\N
09093	1	1	cup	261	\N	\N
09094	1	1	cup	149	24	20.722
09094	2	1	fig	8.4	80	2.53
09095	1	1	cup	259	\N	\N
09096	1	1	cup	237	\N	\N
09097	1	1	cup	237	\N	\N
09098	1	0.5	cup	123	\N	\N
09099	1	1	cup	242	\N	\N
09100	1	1	cup	248	\N	\N
09101	1	0.5	cup	130	\N	\N
09101	2	1	cup	260	\N	\N
09102	1	1	cup	245	\N	\N
09103	1	1	cup	249	\N	\N
09104	1	1	cup	252	\N	\N
09105	1	1	cup	255	\N	\N
09106	1	1	cup	259	\N	\N
09107	1	1	cup	150	\N	\N
09109	1	1	cup	252	\N	\N
09110	1	5	tbsp	28	1	\N
09111	1	1	cup sections, with juice	230	\N	\N
09111	2	0.5	large (approx 4-1/2"" dia)	166	\N	\N
09111	3	0.5	medium (approx 4"" dia)	128	\N	\N
09111	4	0.5	small (approx 3-1/2"" dia)	100	\N	\N
09112	1	1	cup sections, with juice	230	\N	\N
09112	2	0.5	fruit (3-3/4"" dia)	123	\N	\N
09112	3	1	NLEA serving	154	\N	\N
09113	1	1	cup sections, with juice	230	\N	\N
09113	2	0.5	fruit (3-3/4"" dia)	123	\N	\N
09114	1	1	cup sections, with juice	230	\N	\N
09114	2	0.5	fruit (3-3/4"" dia)	123	\N	\N
09116	1	1	cup sections, with juice	230	\N	\N
09116	2	0.5	fruit (3-3/4"" dia)	118	\N	\N
09117	1	1	cup sections, with juice	230	\N	\N
09117	2	0.5	fruit (3-3/4"" dia)	118	\N	\N
09118	1	1	cup sections, with juice	230	\N	\N
09118	2	0.5	fruit (3-3/4"" dia)	118	\N	\N
09119	1	1	cup	244	\N	\N
09120	1	1	cup	249	\N	\N
09121	1	1	cup	254	\N	\N
09123	1	1	cup	247	\N	\N
09123	2	1	fl oz	30.9	\N	\N
09124	1	1	cup	250	\N	\N
09124	2	1	fl oz	31.2	\N	\N
09125	1	1	can (6 fl oz)	207	\N	\N
09126	1	1	cup	247	\N	\N
09126	2	1	fl oz	30.9	\N	\N
09127	1	8	fl oz	240	1	\N
09128	1	1	cup	247	\N	\N
09128	2	1	fl oz	30.9	\N	\N
09128	3	1	fruit yields	196	\N	\N
09129	1	1	grape	6.0	\N	\N
09130	1	1	cup	253	\N	\N
09130	2	1	fl oz	31.6	\N	\N
09131	1	1	cup	92	\N	\N
09131	2	1	grape	2.4	\N	\N
09132	1	1	cup	151	24	9.73
09132	2	10	grapes	49	24	5.581
09132	3	1	NLEA serving	126	\N	\N
09133	1	1	cup	245	\N	\N
09134	1	1	cup	256	\N	\N
09135	1	1	cup	253	\N	\N
09135	2	1	fl oz	31.6	\N	\N
09138	1	1	cup	140	\N	\N
09139	1	1	cup	165	\N	\N
09139	2	1	fruit, without refuse	55	\N	\N
09140	1	1	cup	244	\N	\N
09140	2	1	fruit without refuse	6.0	\N	\N
09143	1	1	cup	238	\N	\N
09144	1	1	cup, sliced	165	\N	\N
09144	2	1	cup 1"" pieces	151	2	\N
09145	1	1	cup	135	\N	\N
09145	2	3	fruit	9.0	\N	\N
09148	1	1	cup, sliced	180	24	18.404
09148	2	1	fruit (2"" dia)	69	75	10.268
09148	3	1	NLEA serving	148	\N	\N
09149	1	1	fruit without refuse	19	\N	\N
09150	1	1	cup, sections	212	\N	\N
09150	2	1	fruit (2-1/8"" dia)	58	\N	\N
09150	3	1	fruit (2-3/8"" dia)	84	\N	\N
09150	4	1	wedge or slice (1/8 of one 2-1/8"" dia lemon)	7.0	\N	\N
09150	5	1	NLEA serving	58	\N	\N
09152	1	1	cup	244	\N	\N
09152	2	1	fl oz	30.5	\N	\N
09152	3	1	lemon yields	48	70	\N
09152	4	1	wedge yields	5.9	\N	\N
09153	1	1	tbsp	15	\N	\N
09153	2	1	tsp	5.0	\N	\N
09153	3	1	fl oz	30.5	\N	\N
09153	4	1	cup	244	\N	\N
09154	1	1	cup	244	\N	\N
09154	2	1	fl oz	30.5	\N	\N
09156	1	1	tbsp	6.0	\N	\N
09156	2	1	tsp	2.0	\N	\N
09159	1	1	fruit (2"" dia)	67	\N	\N
09159	2	1	NLEA serving	67	\N	\N
09160	1	1	cup	242	4	13.114
09160	2	1	fl oz	30.8	\N	\N
09160	3	1	lime yields	44	12	11.031
09161	1	1	cup	246	\N	\N
09161	2	1	fl oz	30.8	\N	\N
09163	1	0.25	cup	40	1	\N
09164	1	1	cup	190	\N	\N
09164	2	1	fruit without refuse	9.6	\N	\N
09165	1	1	fruit	2.5	\N	\N
09167	1	1	cup, unthawed	147	\N	\N
09172	1	1	fruit without refuse	3.2	\N	\N
09173	1	1	fruit	1.7	16	0.29
09174	1	1	cup, cubed	149	\N	\N
09174	2	1	large	20	\N	\N
09174	3	1	medium	16	\N	\N
09174	4	1	small	13.6	\N	\N
09175	1	1	fruit without refuse	846	\N	\N
09176	1	1	cup pieces	165	3	9.3
09176	2	1	fruit without refuse	336	12	143.606
09177	1	1	cup, drained	196	\N	\N
09177	2	1	cup	216	\N	\N
09181	1	1	cup, balls	177	\N	\N
09181	2	1	cup, cubes	160	\N	\N
09181	3	1	cup, diced	156	\N	\N
09181	4	1	melon, large (about 6-1/2"" dia)	814	\N	\N
09181	5	1	wedge, large (1/8 of large melon)	102	\N	\N
09181	6	1	melon, medium (about 5"" dia)	552	\N	\N
09181	7	1	wedge, medium (1/8 of medium melon)	69	\N	\N
09181	8	1	melon, small (about 4-1/4"" dia)	441	\N	\N
09181	9	1	wedge, small (1/8 of small melon)	55	\N	\N
09181	10	10	cantaloupe balls	138	\N	\N
09181	11	1	NLEA serving	134	\N	\N
09183	1	1	cup, cubes	170	\N	\N
09183	2	1	melon	1640	\N	\N
09183	3	0.1	fruit	164	\N	\N
09184	1	1	cup, diced (approx 20 pieces per cup)	170	\N	\N
09184	2	1	cup, balls	177	\N	\N
09184	3	1	melon (5-1/4"" dia)	1000	\N	\N
09184	4	1	melon (6"" - 7"" dia)	1280	\N	\N
09184	5	1	wedge (1/8 of 5-1/4"" dia melon)	125	\N	\N
09184	6	1	wedge (1/8 of 6"" to 7"" dia melon)	160	\N	\N
09184	7	10	honeydew balls	138	\N	\N
09184	8	1	NLEA serving	134	\N	\N
09185	1	1	cup, unthawed	173	\N	\N
09190	1	1	cup	140	\N	\N
09190	2	10	fruit	15.0	\N	\N
09191	1	1	cup slices	143	24	11.993
09191	2	1	small (2-1/3"" dia)	129	31	10.069
09191	3	1	medium (2-1/2"" dia)	142	24	12.534
09191	4	1	large (2-3/4"" dia)	156	25	16.652
09191	5	1	NLEA serving	140	\N	\N
09192	1	1	cup	140	\N	\N
09192	2	10	fruit	11.0	\N	\N
09193	1	1	tbsp	8.4	\N	\N
09193	2	1	large	4.4	\N	\N
09193	3	1	small	3.2	\N	\N
09194	1	1	super colossal	15	\N	\N
09194	2	1	jumbo	8.3	\N	\N
09195	1	1	olive	2.7	30	0.249
09200	1	1	cup, sections	180	\N	\N
09200	2	1	large (3-1/16"" dia)	184	\N	\N
09200	3	1	small (2-3/8"" dia)	96	\N	\N
09200	4	1	fruit (2-5/8"" dia)	131	\N	\N
09201	1	1	cup sections, without membranes	180	\N	\N
09201	2	1	fruit (2-5/8"" dia)	121	\N	\N
09202	1	1	cup sections, without membranes	165	\N	\N
09202	2	1	fruit (2-7/8"" dia)	140	\N	\N
09202	3	1	NLEA serving	154	\N	\N
09203	1	1	cup sections, without membranes	185	\N	\N
09203	2	1	fruit (2-5/8"" dia)	141	\N	\N
09203	3	1	fruit (2-11/16"" dia)	151	\N	\N
09205	1	1	cup	170	\N	\N
09205	2	1	fruit without seeds	159	\N	\N
09206	1	1	cup	248	\N	\N
09206	2	1	fl oz	31.0	\N	\N
09206	3	1	fruit yields	86	\N	\N
09207	1	1	cup	249	\N	\N
09207	2	1	fl oz	31.1	\N	\N
09207	3	1	drink box (8.45 fl oz)	263	\N	\N
09209	1	1	cup	249	\N	\N
09209	2	1	fl oz	31.1	\N	\N
09210	1	1	cup	249	\N	\N
09210	2	1	fl oz	31.1	\N	\N
09211	1	1	cup	249	\N	\N
09211	2	1	fl oz	31.1	\N	\N
09212	1	1	cup	249	\N	\N
09212	2	1	fl oz	31.1	\N	\N
09213	1	1	cup	262	26	12.117
09213	2	1	fl oz	33.0	26	2.264
09214	1	1	cup	262	26	12.117
09214	2	1	fl oz	33.0	26	2.264
09215	1	1	cup	249	\N	\N
09215	2	1	fl oz	31.1	\N	\N
09216	1	1	tbsp	6.0	\N	\N
09216	2	1	tsp	2.0	\N	\N
09217	1	1	cup	247	\N	\N
09217	2	1	fl oz	30.9	\N	\N
09218	1	1	cup, sections	195	\N	\N
09218	2	1	small (2-1/4"" dia)	76	4	7.253
09218	3	1	medium (2-1/2"" dia)	88	4	7.74
09218	4	1	large (2-3/4"" dia)	120	4	26.241
09218	5	1	NLEA serving	109	\N	\N
09219	1	1	cup	249	\N	\N
09220	1	1	cup	252	\N	\N
09221	1	1	cup	247	\N	\N
09221	2	1	fl oz	30.9	\N	\N
09223	1	1	cup	249	\N	\N
09223	2	1	fl oz	31.1	\N	\N
09226	1	1	cup 1"" pieces	145	3	4.041
09226	2	1	cup, mashed	230	\N	\N
09226	3	1	fruit, small	157	\N	34.323
09226	4	1	fruit, large	781	\N	\N
09228	1	1	piece	39	6	12.012
09229	1	1	cup	250	\N	\N
09229	2	1	fl oz	31.2	\N	\N
09231	1	1	cup	236	\N	\N
09231	2	1	fruit without refuse	18	\N	\N
09232	1	1	cup	247	\N	\N
09232	2	1	fl oz	30.9	\N	\N
09233	1	1	cup	247	\N	\N
09233	2	1	fl oz	30.9	\N	\N
09236	1	1	cup slices	154	24	19.842
09236	2	1	small (2-1/2"" dia)	130	20	7.057
09236	3	1	medium (2-2/3"" dia)	150	20	8.066
09236	4	1	large (2-3/4"" dia)	175	20	13.707
09236	5	1	extra large (3"" dia)	224	20	19.294
09236	6	1	NLEA serving	147	\N	\N
09237	1	1	cup, halves or slices	244	\N	\N
09237	2	1	half, with liquid	98	\N	\N
09238	1	1	cup	250	\N	\N
09238	2	1	cup, halves or slices	248	\N	\N
09238	3	1	half, with liquid	98	\N	\N
09239	1	1	cup, halves or slices	247	\N	\N
09240	1	1	cup, halves or slices	251	\N	\N
09240	2	1	half, with liquid	98	\N	\N
09241	1	1	cup	262	\N	\N
09241	2	1	half, with liquid	98	\N	\N
09242	1	1	cup, halves or slices	262	\N	\N
09243	1	1	cup, whole	242	\N	\N
09244	1	1	cup	116	\N	\N
09245	1	1	cup	242	\N	\N
09246	1	1	cup, halves	160	\N	\N
09246	2	1	half	13.0	\N	\N
09247	1	1	cup	258	\N	\N
09248	1	1	cup	270	\N	\N
09250	1	1	cup, thawed	250	\N	\N
09250	2	10	slices	155	\N	\N
09250	3	1	package (10 oz)	284	\N	\N
09251	1	1	cup	249	\N	\N
09251	2	1	fl oz	31.1	\N	\N
09252	1	1	cup, slices	140	96	13.35
09252	2	1	cup, cubes	161	6	19.789
09252	3	1	small	148	64	15.731
09252	4	1	medium	178	65	12.076
09252	5	1	large	230	125	29.273
09252	6	1	NLEA serving	166	\N	\N
09253	1	1	cup, halves	244	\N	\N
09253	2	1	half, with liquid	76	\N	\N
09254	1	1	cup, halves	248	\N	\N
09254	2	1	half, with liquid	76	\N	\N
09255	1	1	cup, halves	247	\N	\N
09255	2	1	half, with liquid	76	\N	\N
09256	1	1	cup, halves	251	\N	\N
09256	2	1	half, with liquid	76	\N	\N
09257	1	1	cup	266	\N	\N
09257	2	1	half, with liquid	76	\N	\N
09258	1	1	cup, halves	266	\N	\N
09258	2	1	half, with liquid	79	\N	\N
09259	1	1	cup, halves	180	\N	\N
09259	2	1	half	18	\N	\N
09259	3	10	halves	175	\N	\N
09260	1	1	cup, halves	255	\N	\N
09261	1	1	cup, halves	280	\N	\N
09262	1	1	cup	250	\N	\N
09262	2	1	fl oz	31.2	\N	\N
09263	1	1	fruit (2-1/2"" dia)	168	\N	\N
09264	1	1	fruit without refuse	34	\N	\N
09265	1	1	fruit without refuse	25	\N	\N
09266	1	1	cup, chunks	165	34	19.149
09266	2	1	fruit	905	26	165.33
09266	3	1	slice (4-2/3"" dia x 3/4"" thick)	166	11	45.494
09266	4	1	slice (3-1/2"" dia x 3/4"" thick)	84	\N	\N
09266	5	1	slice, thin (3-1/2"" dia x 1/2"" thick)	56	\N	\N
09267	1	1	cup, crushed, sliced, or chunks	246	\N	\N
09267	2	1	slice or ring (3"" dia) with liquid	47	\N	\N
09268	1	1	cup, crushed, sliced, or chunks	249	\N	\N
09268	2	1	slice or ring (3"" dia) with liquid	47	\N	\N
09269	1	1	cup, crushed, sliced, or chunks	252	\N	\N
09269	2	1	slice or ring (3"" dia) with liquid	48	\N	\N
09270	1	1	cup, crushed, sliced, or chunks	254	\N	\N
09270	2	1	slice or ring (3"" dia) with liquid	49	\N	\N
09271	1	1	cup, crushed, sliced, or chunks	260	\N	\N
09272	1	1	cup, chunks	245	\N	\N
09273	1	1	cup	250	\N	\N
09273	2	1	fl oz	31.3	\N	\N
09274	1	1	can (6 fl oz)	216	\N	\N
09275	1	1	cup	250	\N	\N
09275	2	1	fl oz	31.2	\N	\N
09276	1	1	cup	173	\N	\N
09276	2	1	fruit without refuse	7.0	\N	\N
09277	1	1	cup, sliced	148	\N	\N
09277	2	1	medium	179	\N	\N
09278	1	1	cup, mashed	200	\N	\N
09278	2	1	cup slices	154	\N	\N
09279	1	1	cup, sliced	165	\N	\N
09279	2	1	fruit (2-1/8"" dia)	66	\N	\N
09279	3	1	NLEA serving	151	\N	\N
09281	1	1	cup, pitted	249	\N	\N
09281	2	1	plum with liquid	46	\N	\N
09282	1	1	cup, pitted	252	\N	\N
09282	2	1	plum with liquid	46	\N	\N
09283	1	1	cup, pitted	252	\N	\N
09283	2	1	plum with liquid	46	\N	\N
09284	1	1	cup, pitted	258	\N	\N
09284	2	1	plum with liquid	46	\N	\N
09285	1	1	cup, pitted	261	\N	\N
09286	1	0.5	cup arils (seed/juice sacs)	87	\N	\N
09286	2	1	pomegranate (4"" dia)	282	\N	\N
09287	1	1	cup	149	\N	\N
09287	2	1	fruit without refuse	103	\N	\N
09288	1	1	cup	234	\N	\N
09288	2	5	prunes with liquid	86	\N	\N
09289	1	1	cup	132	\N	\N
09290	1	1	cup	280	\N	\N
09291	1	1	cup, pitted	174	24	15.624
09291	2	1	prune, pitted	9.5	80	2.327
09292	1	1	cup, pitted	248	\N	\N
09293	1	1	cup, pitted	248	\N	\N
09294	1	1	cup	256	\N	\N
09294	2	1	fl oz	32.0	\N	\N
09295	1	1	cup, sections	190	\N	\N
09295	2	1	fruit without refuse	609	\N	\N
09296	1	1	fruit without refuse	92	\N	\N
09297	1	1	cup, packed	165	\N	\N
09297	2	1	cup (not packed)	145	\N	\N
09298	1	1	cup, packed	165	\N	\N
09298	2	1	cup (not packed)	145	\N	\N
09298	3	1	miniature box (.5 oz)	14.0	\N	\N
09298	4	1	small box (1.5 oz)	43	\N	\N
09298	5	50	raisins	26	\N	\N
09298	6	1	oz (60 raisins)	28.35	1	\N
09299	1	1	cup, packed	165	\N	\N
09299	2	1	cup (not packed)	145	\N	\N
09301	1	1	cup, drained	150	\N	\N
09301	2	1	cup	214	\N	\N
09301	3	1	fruit	9.0	\N	\N
09302	1	1	cup	123	\N	\N
09302	2	1	pint as purchased, yields	312	\N	\N
09302	3	10	raspberries	19	\N	\N
09304	1	1	cup	256	\N	\N
09306	1	1	cup, thawed	250	\N	\N
09306	2	1	package (10 oz)	284	\N	\N
09307	1	1	cup, diced	122	\N	\N
09307	2	1	stalk	51	\N	\N
09309	1	1	cup, diced	137	\N	\N
09310	1	1	cup	240	\N	\N
09311	1	1	cup, without refuse	57	\N	\N
09313	1	1	cup, pulp	241	\N	\N
09313	2	1	sapodilla	170	\N	\N
09314	1	1	cup 1"" pieces	175	3	7.238
09314	2	1	fruit without refuse	558	9	245.609
09315	1	1	cup, pulp	225	\N	\N
09315	2	1	fruit (7"" x 5-1/4"" dia)	625	\N	\N
09316	1	1	cup, halves	152	\N	\N
09316	2	1	cup, pureed	232	\N	\N
09316	3	1	cup, sliced	166	\N	\N
09316	4	1	cup, whole	144	\N	\N
09316	5	1	extra large (1-5/8"" dia)	27	\N	\N
09316	6	1	large (1-3/8"" dia)	18	\N	\N
09316	7	1	medium (1-1/4"" dia)	12.0	\N	\N
09316	8	1	pint as purchased, yields	357	\N	\N
09316	9	1	small (1"" dia)	7.0	\N	\N
09316	10	1	NLEA serving	147	\N	\N
09317	1	1	cup	254	\N	\N
09318	1	1	cup, thawed	221	\N	\N
09318	2	1	cup, unthawed	149	\N	\N
09318	3	1	berry	10.6	\N	\N
09318	4	1	package (20 oz)	567	\N	\N
09319	1	1	cup, thawed	255	\N	\N
09319	2	1	package (10 oz)	284	\N	\N
09320	1	1	cup, thawed	255	\N	\N
09320	2	1	package (10 oz)	284	\N	\N
09321	1	1	cup, pulp	250	\N	\N
09321	2	1	fruit (2-7/8"" dia)	155	\N	\N
09322	1	1	cup, pulp	120	\N	\N
09322	2	1	fruit (3"" x 1"")	2.0	\N	\N
09325	1	1	cup	257	\N	\N
09326	1	1	cup, balls	154	\N	\N
09326	2	1	cup, diced	152	\N	\N
09326	3	1	melon (15"" long x 7-1/2"" dia)	4518	\N	\N
09326	4	1	wedge (approx 1/16 of melon)	286	\N	\N
09326	5	10	watermelon balls	122	\N	\N
09326	6	1	NLEA serving	280	\N	\N
09328	1	1	cherry (NLEA serving)	5.0	\N	\N
09334	1	1	cup, pureed	243	\N	\N
09334	2	1	fruit without peel	42	61	11.808
09334	3	1	cup 1/2"" chunks	205	3	22.784
09340	1	1	fruit 2-1/4"" high x 2-1/2"" dia	122	\N	\N
09340	2	1	fruit 3-3/8"" high x 3"" diameter	275	\N	\N
09351	1	1	cup	214	\N	\N
09352	1	1	cup	244	3	46.479
09353	1	1	cup	319	4	12.617
09354	1	1	cup, chunks	181	\N	\N
09354	2	1	cup, crushed	195	\N	\N
09354	3	1	cup, sliced	162	\N	\N
09354	5	1	spear	26	\N	\N
09357	1	1	cup, halves	219	\N	\N
09357	2	1	cup, whole	182	\N	\N
09362	1	1	cup	168	4	2.309
09367	1	1	cup	179	\N	\N
09370	1	1	cup	222	\N	\N
09370	2	1	half	73	\N	\N
09370	3	1	slice	12.7	\N	\N
09374	1	1	cup	201	\N	\N
09374	2	1	half	48	\N	\N
09379	1	1	cup, with pits, yields	183	\N	\N
09383	1	1	cup	189	\N	\N
09400	1	1	cup	248	\N	\N
09400	2	1	fl oz	31.0	\N	\N
09401	1	1	cup	244	81	\N
09402	1	1	cup	255	\N	\N
09403	1	1	cup	251	\N	\N
09403	2	1	fl oz	31.4	\N	\N
09404	1	1	cup	247	\N	\N
09404	2	1	fruit yields	196	\N	\N
09407	1	1	cup	249	\N	\N
09407	2	1	fl oz	31.1	\N	\N
09408	1	1	cup	250	\N	\N
09408	2	1	fl oz	31.2	\N	\N
09409	1	1	cup	250	\N	\N
09409	2	1	fl oz	31.3	\N	\N
09410	1	1	can (6 fl oz)	211	\N	\N
09411	1	1	cup	239	\N	\N
09411	2	1	fl oz	29.9	\N	\N
09412	1	1	cup, sliced	140	\N	\N
09412	2	1	small	152	16	6.171
09412	3	1	medium	177	15	10.476
09412	4	1	large	227	32	20.313
09413	1	1	small	126	16	10.429
09413	2	1	medium	157	17	7.941
09413	3	1	large	223	33	40.688
09413	4	1	cup, sliced	140	\N	\N
09414	1	1	cup, sliced	140	\N	\N
09414	2	1	small	159	19	10.463
09414	3	1	medium	179	16	3.874
09414	4	1	large	219	33	37.404
09415	1	1	cup, sliced	140	\N	\N
09415	2	1	small	172	13	16.648
09415	3	1	medium	202	14	8.864
09415	4	1	large	242	29	17.664
09416	1	1	cup	247	\N	\N
09420	1	1	cup, drained	178	\N	\N
09421	1	1	date, pitted	24	10	1.893
09422	1	1	cup, chopped or diced	243	\N	\N
09422	2	1	fruit	602	\N	\N
09423	1	2	tbsp	36	\N	\N
09427	1	0.5	cup	114	\N	\N
09428	1	0.5	cup	114	\N	\N
09429	1	1	cup, chunks	165	34	19.149
09429	2	1	slice (4-2/3"" dia x 3/4"" thick)	175	5	41.872
09429	3	1	fruit	1002	5	47.927
09429	4	1	NLEA serving	112	\N	\N
09430	1	1	cup, chunks	165	34	19.149
09430	2	1	slice (4-2/3"" dia x 3/4"" thick)	166	11	45.494
09430	3	1	fruit	905	26	165.33
09430	4	1	NLEA serving	112	\N	\N
09433	1	1	fruit	74	32	14.296
09434	1	1	cup	251	\N	\N
09435	1	1	cup	251	\N	\N
09436	1	1	cup	251	\N	\N
09437	1	1	cup	251	\N	\N
09442	1	1	cup	249	3	5.193
09442	2	1	fl oz	31.4	3	0.351
09443	1	8	fl oz	250	\N	\N
09444	1	8	fl oz	250	\N	\N
09446	1	1	cup	118	3	7.636
09446	2	10	slices (1/4"" thick)	53	2	\N
09447	1	1	cup	169	\N	\N
09448	1	3	fruit without pits	11.1	\N	\N
09449	1	1	cup without pits, thawed	112	1	\N
09449	2	3	fruit without pits, thawed	9.8	\N	\N
09450	1	1	cup thawed	120	4	9.43
09451	1	1	cup	233	6	4.248
09451	2	1	fruit (4-2/3"" long x 2-3/4"" dia)	209	3	20.621
09452	1	8	fl oz	246	1	\N
09500	1	1	cup, sliced	109	\N	\N
09500	2	1	large	260	21	31.741
09500	3	1	medium	212	21	11.659
09500	4	1	small	158	22	20.792
09501	1	1	cup, sliced	109	\N	\N
09501	2	1	large	215	24	26.951
09501	3	1	medium	169	23	14.901
09501	4	1	small	129	23	10.014
09502	1	1	cup, sliced	109	\N	\N
09502	2	1	large	206	23	19.87
09502	3	1	medium	167	23	6.801
09502	4	1	small	144	22	11.418
09503	1	1	cup, sliced	109	\N	\N
09503	2	1	large	200	22	17.973
09503	3	1	medium	172	23	9.058
09503	4	1	small	157	23	8.16
09504	1	1	cup, sliced	109	\N	\N
09504	2	1	large	236	23	24.139
09504	3	1	medium	192	23	15.101
09504	4	1	small	158	23	12.749
09506	1	1	cup	249	\N	\N
09506	2	1	fl oz	31.1	\N	\N
09507	1	8	fl oz	240	\N	\N
09508	1	1	cup	275	4	3.126
09510	1	1	cup	250	\N	\N
09510	2	1	fl oz	31.3	\N	\N
09511	1	8	fl oz	240	\N	\N
09512	1	1	cup	253	\N	\N
09512	2	1	fl oz	31.6	\N	\N
09513	1	1	cup	227	6	\N
09514	1	1	cup	252	\N	\N
09515	1	1	cup	230	9	\N
09516	1	1	cup	233	10	\N
09517	1	6	fl oz	177	1	\N
09517	2	10	fl oz	295	1	\N
09518	1	1	cup, unthawed	140	1	\N
09519	1	11.3	fl oz	335	1	\N
09520	1	1	fruit	81	100	1.187
09522	1	6.75	fl oz	200	2	\N
09522	2	8	fl oz	240	\N	\N
09523	1	1	tbsp	15	9	1.012
09523	2	1	tsp	5.2	9	0.583
09524	1	1	tbsp	15	11	0.862
09524	2	1	tsp	5.0	\N	\N
09525	1	0.25	cup	70	1	\N
09526	1	0.25	cup	70	1	\N
09528	1	8	fl oz	248	5	0.351
09530	1	1	cup	233	8	\N
09531	1	1	cup	228	16	\N
10000	1	3	oz	85	\N	\N
10001	1	1	oz	28.35	\N	\N
10001	2	1	lb	453.6	\N	\N
10002	1	1	oz	28.35	\N	\N
10002	2	1	lb	453.6	\N	\N
10003	1	1	oz	28.35	\N	\N
10003	2	1	lb	453.6	\N	\N
10004	1	1	oz	28.35	\N	\N
10004	2	1	lb	453.6	\N	\N
10005	1	1	oz	28.35	\N	\N
10005	2	1	lb	453.6	\N	\N
10006	1	1	oz	28.35	\N	\N
10006	2	4	oz	113	\N	\N
10007	1	1	oz	28.35	\N	\N
10007	2	4	oz	113	\N	\N
10008	1	1	oz	28.35	\N	\N
10008	2	1	lb	453.6	\N	\N
10009	1	1	cup, diced	135	\N	\N
10009	2	3	oz	85	\N	\N
10010	1	1	oz	28.35	\N	\N
10010	2	1	lb	453.6	\N	\N
10011	1	1	cup, diced	135	\N	\N
10011	2	3	oz	85	\N	\N
10012	1	1	oz	28.35	\N	\N
10012	2	1	lb	453.6	\N	\N
10013	1	1	cup, diced	135	\N	\N
10013	2	3	oz	85	\N	\N
10014	1	3	oz	85	\N	\N
10014	2	1	lb	453.6	\N	\N
10014	3	1	roast	3952	6	1100.684
10015	1	3	oz	85	\N	\N
10015	2	1	roast	3027	6	663.17
10016	1	3	oz	85	\N	\N
10016	2	1	lb	453.6	\N	\N
10016	3	1	roast	3868	6	1687.582
10017	1	3	oz	85	\N	\N
10017	2	1	roast	2900	6	639.245
10018	1	3	oz	85	\N	\N
10018	2	1	lb	453.6	\N	\N
10018	3	1	roast	3868	6	1687.582
10019	1	3	oz	85	\N	\N
10019	2	1	roast	2900	6	639.245
10020	1	3	oz	85	\N	\N
10020	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 151 g)	117	\N	\N
10021	1	3	oz	85	\N	\N
10021	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 151 g)	89	\N	\N
10022	1	3	oz	85	\N	\N
10022	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 151 g)	87	\N	\N
10023	1	3	oz	85	\N	\N
10023	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 151 g)	89	\N	\N
10024	1	3	oz	85	\N	\N
10024	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 151 g)	106	\N	\N
10025	1	3	oz	85	\N	\N
10025	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 151 g)	80	\N	\N
10026	1	3	oz	85	\N	\N
10026	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 151 g)	79	\N	\N
10027	1	3	oz	85	\N	\N
10027	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 151 g)	81	\N	\N
10028	1	3	oz	85	\N	\N
10028	2	1	chop	263	62	63.637
10029	1	3	oz	85	\N	\N
10029	2	1	chop	206	71	59.619
10030	1	3	oz	85	\N	\N
10030	2	1	chop	219	74	56.043
10031	1	3	oz	85	\N	\N
10031	2	1	roast	830	53	234.521
10032	1	3	oz	85	\N	\N
10032	2	1	chop	263	62	63.637
10033	1	3	oz	85	\N	\N
10033	2	1	chop	206	71	59.619
10034	1	3	oz	85	\N	\N
10034	2	1	chop	219	74	56.043
10035	1	3	oz	85	\N	\N
10035	2	1	roast	830	53	234.521
10036	1	3	oz	85	\N	\N
10036	2	1	chop without refuse (Yield from 1 raw chop, with refuse, weighing 259g)	199	131	\N
10037	1	3	oz	85	\N	\N
10037	2	1	chop	187	56	121.076
10038	1	3	oz	85	\N	\N
10038	2	1	chop without refuse (Yield from 1 cooked chop, with refuse, weighing 209g)	157	77	\N
10039	1	3	oz	85	\N	\N
10039	2	1	roast	900	31	349.432
10040	1	3	oz	85	\N	\N
10040	2	1	chop without refuse (Yield from 1 raw chop, with refuse, weighing 259g)	178	131	\N
10041	1	3	oz	85	\N	\N
10041	2	1	chop	187	56	121.076
10042	1	1	chop without refuse (Yield from 1 cooked chop, with refuse, weighing 209g)	146	77	\N
10042	2	3	oz	85	\N	\N
10043	1	3	oz	85	\N	\N
10043	2	1	roast	900	31	349.432
10044	1	1	chop without refuse (Yield from 1 raw chop, with refuse, weighing 201g)	133	198	\N
10044	2	1	lb	453.6	\N	\N
10045	1	3	oz	85	\N	\N
10045	2	1	chop	187	57	114.358
10046	1	1	chop without refuse (Yield from 1 cooked chop, with refuse, weighing 172g)	112	116	\N
10046	2	3	oz	85	\N	\N
10047	1	3	oz	85	\N	\N
10047	2	1	roast	783	31	250.749
10048	1	3	oz	85	\N	\N
10048	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 151 g)	86	\N	\N
10049	1	3	oz	85	\N	\N
10049	2	1	chop	187	57	114.358
10050	1	3	oz	85	\N	\N
10050	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 151 g)	67	\N	\N
10051	1	3	oz	85	\N	\N
10051	2	1	roast	783	31	250.749
10052	1	3	oz	85	\N	\N
10052	2	1	lb	453.6	\N	\N
10052	3	1	roast without refuse (Yield from 1 raw roast, with refuse, weighing 1817g)	1327	25	\N
10053	1	3	oz	85	\N	\N
10053	2	1	chop	180	27	74.945
10054	1	3	oz	85	\N	\N
10054	2	1	chop	195	27	76.265
10055	1	3	oz	85	\N	\N
10055	2	1	roast without refuse (Yield from 1 cooked roast, with refuse, weighing 1515g)	1046	13	\N
10056	1	3	oz	85	\N	\N
10056	2	1	lb	453.6	\N	\N
10149	2	1	slice	57	\N	\N
10056	3	1	roast without refuse (Yield from 1 raw roast, with refuse, weighing 1818g)	1217	25	\N
10057	1	3	oz	85	\N	\N
10057	2	1	chop	180	27	74.945
10058	1	3	oz	85	\N	\N
10058	2	1	chop	195	27	76.265
10059	1	3	oz (Yield from 1 cooked roast, with refuse, weighing 1515g)	85	\N	\N
10059	2	1	roast without refuse	985	13	\N
10060	1	3	oz	85	\N	\N
10060	2	1	lb	453.6	\N	\N
10060	3	1	roast	505	55	\N
10061	1	3	oz	85	\N	\N
10061	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	333	\N	\N
10061	3	1	roast	402	31	\N
10062	1	3	oz	85	\N	\N
10062	2	1	chop	185	164	\N
10063	1	1	chop	135	60	45.073
10064	1	1	chop	145	91	\N
10064	2	3	oz	85	\N	\N
10065	1	3	oz	85	\N	\N
10065	2	1	roast	848	20	\N
10066	1	3	oz	85	\N	\N
10066	2	1	chop	185	164	\N
10066	3	1	lb	453.6	\N	\N
10067	1	1	chop	135	60	45.073
10068	1	1	chop	145	91	\N
10069	1	3	oz	85	\N	\N
10070	1	1	oz	28.35	\N	\N
10070	2	1	lb	453.6	\N	\N
10071	1	1	cup, diced	135	\N	\N
10071	2	3	oz	85	\N	\N
10072	1	1	oz	28.35	\N	\N
10072	2	1	lb	453.6	\N	\N
10073	1	1	cup, diced	135	\N	\N
10073	2	3	oz	85	\N	\N
10074	1	3	oz	85	\N	\N
10074	2	1	roast	2745	7	1087.593
10075	1	3	oz	85	\N	\N
10075	2	1	roast	2252	7	941.815
10076	1	1	cup, diced	135	\N	\N
10076	2	3	oz	85	\N	\N
10077	1	3	oz	85	\N	\N
10077	2	1	roast	2745	7	1087.593
10078	1	3	oz	85	\N	\N
10078	2	1	roast	2252	7	941.815
10079	1	3	oz	85	\N	\N
10079	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	191	\N	\N
10080	1	3	oz	85	\N	\N
10080	2	1	steak without refuse (Yield from 1 raw steak, with refuse, weighing 380g)	288	116	\N
10080	3	1	lb	453.6	\N	\N
10081	1	3	oz	85	\N	\N
10081	2	1	steak without refuse (Yield from 1 cooked steak, with refuse, weighing 249g)	185	68	\N
10082	1	3	oz	85	\N	\N
10082	2	1	steak, excluding refuse (yield from 1 raw steak, with refuse, weighing 300 g)	169	\N	\N
10083	1	3	oz	85	\N	\N
10083	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	262	\N	\N
10084	1	3	oz	85	\N	\N
10084	2	1	steak without refuse (Yield from 1 raw steak, with refuse, weighing 379g)	258	116	\N
10085	1	3	oz	85	\N	\N
10085	2	1	steak	249	68	\N
10086	1	3	oz	85	\N	\N
10086	2	1	steak, excluding refuse (yield from 1 raw steak, with refuse, weighing 300 g)	147	\N	\N
10087	1	3	oz	85	\N	\N
10087	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	238	\N	\N
10088	1	3	oz	85	\N	\N
10089	1	3	oz	85	\N	\N
10089	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	177	\N	\N
10093	1	3	oz	85	\N	\N
10093	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	231	\N	\N
10094	1	4	oz	114	\N	\N
10094	2	1	chop	170	92	\N
10096	1	1	oz	28.35	\N	\N
10096	2	4	oz	113	\N	\N
10097	1	3	oz	85	\N	\N
10098	1	1	oz	28.35	\N	\N
10099	1	3	oz	85	\N	\N
10100	1	1	oz	28.35	\N	\N
10100	2	1	ear	113	\N	\N
10101	1	1	ear (yield after cooking)	111	\N	\N
10101	2	1	unit, cooked (yield from 1 lb raw meat)	422	\N	\N
10102	1	1	oz	28.35	\N	\N
10103	1	1	oz	28.35	\N	\N
10103	2	1	heart	226	\N	\N
10104	1	1	cup	145	\N	\N
10104	2	1	heart	129	\N	\N
10105	1	1	oz	28.35	\N	\N
10105	2	4	oz	113	\N	\N
10106	1	1	oz	28.35	\N	\N
10106	2	1	kidney	233	\N	\N
10107	1	1	cup	140	\N	\N
10107	2	3	oz	85	\N	\N
10109	1	1	oz	28.35	\N	\N
10109	2	4	oz	113	\N	\N
10110	1	1	oz	28.35	\N	\N
10110	2	4	oz	113	\N	\N
10111	1	3	oz	85	\N	\N
10112	1	1	oz	28.35	\N	\N
10112	2	1	lb	453.6	\N	\N
10113	1	3	oz	85	\N	\N
10114	1	1	oz	28.35	\N	\N
10114	2	1	lb	453.6	\N	\N
10115	1	1	oz	28.35	\N	\N
10115	2	4	oz	113	\N	\N
10116	1	3	oz	85	\N	\N
10117	1	1	oz	28.35	\N	\N
10117	2	4	oz	113	\N	\N
10118	1	3	oz	85	\N	\N
10119	1	1	oz	28.35	\N	\N
10119	2	4	oz	113	\N	\N
10120	1	3	oz	85	\N	\N
10120	2	1	chop	215	73	55.229
10121	1	1	oz	28.35	\N	\N
10121	2	4	oz	113	\N	\N
10122	1	3	oz	85	\N	\N
10122	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	231	\N	\N
10123	1	1	slice raw	28	360	5.235
10123	2	1	package	442	36	29.953
10128	1	3	oz	85	\N	\N
10128	2	3	slices	68	\N	\N
10128	3	1	package (12 oz)	340	\N	\N
10130	1	3	oz	85	\N	\N
10130	2	2	slices (6 per 6-oz pkg.)	57	\N	\N
10130	3	1	package (6 oz)	170	\N	\N
10132	1	1	oz	28.35	\N	\N
10132	2	1	lb	453.6	\N	\N
10134	1	1	cup	140	\N	\N
10134	2	3	oz	85	\N	\N
10136	1	1	cup	140	\N	\N
10136	2	3	oz	85	\N	\N
10137	1	1	cup	140	\N	\N
10137	2	1	oz	28.35	\N	\N
10138	1	1	cup	140	\N	\N
10138	2	3	oz	85	\N	\N
10140	1	1	cup	140	\N	\N
10140	2	3	oz	85	\N	\N
10141	1	1	oz	28.35	\N	\N
10141	2	4	oz	113	\N	\N
10142	1	1	oz	28.35	\N	\N
10142	2	4	oz	113	\N	\N
10146	1	1	oz	28.35	\N	\N
10146	2	1	patty	65	\N	\N
10149	1	1	oz	28.35	\N	\N
10150	1	1	cup	140	\N	\N
10150	2	1	oz	28.35	\N	\N
10152	1	1	cup	140	\N	\N
10152	2	1	oz	28.35	\N	\N
10153	1	1	cup	140	\N	\N
10153	2	3	oz	85	\N	\N
10158	1	3	oz	85	\N	\N
10158	2	1	can	815	3	3.456
10163	1	4	oz	114	\N	\N
10163	2	1	chop	137	97	\N
10164	1	3	oz	85	\N	\N
10164	2	1	chop	170	92	\N
10165	1	1	oz	28.35	\N	\N
10165	2	8	oz	227	\N	\N
10166	1	1	oz	28.35	\N	\N
10166	2	3	oz	85	\N	\N
10167	1	1	oz	28.35	\N	\N
10167	2	3	oz	85	\N	\N
10168	1	1	cup	140	\N	\N
10168	2	3	oz	85	\N	\N
10169	1	1	cup	140	\N	\N
10169	2	3	oz	85	\N	\N
10170	1	1	oz	28.35	\N	\N
10170	2	4	oz	113	\N	\N
10171	1	3	oz	85	\N	\N
10171	2	1	piece, cooked (yield from 1 lb unheated product)	376	\N	\N
10173	1	3	oz	85	\N	\N
10174	1	1	oz	28.35	\N	\N
10174	2	4	oz	113	\N	\N
10175	1	3	oz	85	\N	\N
10175	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	275	\N	\N
10176	1	3	oz	85	\N	\N
10176	2	1	chop	172	59	40.773
10177	1	3	oz	85	\N	\N
10177	2	1	chop	169	58	45.634
10178	1	3	oz	85	\N	\N
10178	2	1	chop	215	73	55.229
10179	1	3	oz	85	\N	\N
10179	2	1	chop	172	59	40.773
10180	1	3	oz	85	\N	\N
10180	2	1	chop	169	58	45.634
10181	1	1	chop	142	61	48.518
10181	2	3	oz	85	\N	\N
10182	1	1	cup	140	\N	\N
10182	2	1	slice (6-1/4"" x 4"" x 1/16"") (1 oz)	28	\N	\N
10183	1	1	cup	140	\N	\N
10183	2	3	oz	85	\N	\N
10184	1	1	cup	140	\N	\N
10184	2	1	oz	28.35	\N	\N
10185	1	1	cup	140	\N	\N
10185	2	3	oz	85	\N	\N
10186	1	1	chop	142	61	48.518
10187	1	1	oz	28.35	\N	\N
10187	2	1	lb	453.6	\N	\N
10188	1	3	oz	85	\N	\N
10188	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	247	\N	\N
10189	1	3	oz	85	\N	\N
10189	2	1	chop	137	97	\N
10192	1	3	oz	85	\N	\N
10193	1	3	oz	85	\N	\N
10194	1	3	oz	85	\N	\N
10194	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 113 g)	101	\N	\N
10195	1	3	oz	85	\N	\N
10195	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 113 g)	81	\N	\N
10196	1	3	oz	85	\N	\N
10196	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 113 g)	80	\N	\N
10197	1	3	oz	85	\N	\N
10197	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 113 g)	75	\N	\N
10198	1	3	oz	85	\N	\N
10198	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	317	\N	\N
10199	1	3	oz	85	\N	\N
10199	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 113 g)	88	\N	\N
10200	1	3	oz	85	\N	\N
10200	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 113 g)	72	\N	\N
10201	1	3	oz	85	\N	\N
10201	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 113 g)	71	\N	\N
10202	1	3	oz	85	\N	\N
10202	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 113 g)	66	\N	\N
10203	1	3	oz	85	\N	\N
10203	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	283	\N	\N
10204	1	1	rib without refuse (Yield from 1 raw rib, with refuse, weighing 196g)	128	241	\N
10204	2	1	oz	28.35	\N	\N
10205	1	1	rib without refuse (Yield from 1 cooked rib, with refuse, weighing 140g)	86	162	\N
10205	2	3	oz	85	\N	\N
10206	1	1	rack	138	37	93.933
10207	1	3	oz	85	\N	\N
10207	2	1	rib	197	241	\N
10208	1	1	rib without refuse (yield from 1 cooked rib, with refuse, weighing 141g)	80	162	\N
10208	2	3	oz	85	\N	\N
10209	1	1	rack	138	37	93.933
10210	1	3	oz	85	\N	\N
10210	2	1	chop	210	59	57.316
10211	1	3	oz	85	\N	\N
10211	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 113 g)	82	\N	\N
10212	1	3	oz	85	\N	\N
10212	2	1	chop	159	60	35.997
10213	1	3	oz	85	\N	\N
10213	2	1	roast	638	38	345.211
10214	1	3	oz	85	\N	\N
10214	2	1	chop	210	59	57.316
10215	1	3	oz	85	\N	\N
10215	2	1	chop	161	59	36.644
10216	1	3	oz	85	\N	\N
10216	2	1	chop	159	60	35.997
10217	1	3	oz	85	\N	\N
10217	2	1	roast	638	38	345.211
10218	1	3	oz	85	\N	\N
10218	2	1	roast (Yield from 1 raw roast, with refuse, weighing 504g)	505	55	\N
10219	1	1	oz	28.35	\N	\N
10219	2	4	oz	113	\N	\N
10220	1	3	oz	85	\N	\N
10221	1	3	oz	85	\N	\N
10221	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 113 g)	76	\N	\N
10222	1	3	oz	85	\N	\N
10222	2	1	roast	402	31	\N
10223	1	3	oz	85	\N	\N
10223	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 113 g)	73	\N	\N
10224	1	3	oz	85	\N	\N
10224	2	1	roast	2195	33	\N
10225	1	3	oz	85	\N	\N
10225	2	1	roast	2195	33	\N
10226	1	1	oz	28.35	\N	\N
10226	2	1	lb	453.6	\N	\N
10227	1	3	oz	85	\N	\N
10227	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	261	\N	\N
10228	1	1	oz	28.35	\N	\N
10228	2	1	lb	453.6	\N	\N
10229	1	3	oz	85	\N	\N
10229	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	236	\N	\N
10802	1	1	oz boneless	28.35	\N	\N
10802	2	1	cubic inch boneless	17	\N	\N
10803	1	1	oz grilled patties	28.35	\N	\N
10803	2	3	oz grilled patties	85	\N	\N
10804	1	1	oz boneless	28.35	\N	\N
10804	2	1	cubic inch boneless	17	\N	\N
10805	1	1	oz crumbles	113	\N	\N
10851	1	1	serving	84	\N	\N
10852	1	4	oz	112	\N	\N
10853	1	4	oz	112	\N	\N
10854	1	1	oz	28	\N	\N
10854	2	1	serving	112	\N	\N
10854	3	4	oz	112	\N	\N
10855	1	1	oz	28.35	\N	\N
10855	2	1	serving	112	\N	\N
10855	3	4	oz	112	\N	\N
10856	1	1	oz	28	\N	\N
10856	2	1	serving	112	\N	\N
10856	3	4	oz	112	\N	\N
10857	1	1	serving	56	\N	\N
10858	1	1	chop boneless	150	12	\N
10859	1	1	chop boneless (yield from 189g raw meat)	150	12	\N
10860	1	1	slice cooked	8.1	77	\N
10861	1	1	slice cooked	9.1	220	2.231
10861	2	1	slice raw	28	220	\N
10862	1	1	slice	11.5	216	2.612
10863	1	3	oz	85	\N	\N
10864	1	3	oz	85	\N	\N
10865	1	1	serving (3 oz)	85	\N	\N
10865	2	1	roast rump	2970	5	181.709
10866	1	3	oz	85	\N	\N
10867	1	1	serving (3 oz)	85	\N	\N
10867	2	1	roast shank	3054	6	543.619
10868	1	1	serving (3 oz)	85	\N	\N
10868	2	1	slice	436	9	59.271
10869	1	1	serving (3 oz)	85	\N	\N
10869	2	1	slice	446	6	99.115
10870	1	1	slice	138	3	19.809
10870	2	1	serving (3 oz)	85	\N	\N
10871	1	1	serving (3 oz)	85	\N	\N
10871	2	1	roast	1995	4	487.343
10872	1	3	oz	85	\N	\N
10873	1	1	serving (3 oz)	85	\N	\N
10873	2	1	roast rump	2673	8	160.075
10874	1	1	serving (3 oz)	85	\N	\N
10874	2	1	roast shank	3170	7	298.025
10875	1	1	serving (3 oz)	85	\N	\N
10875	2	1	slice	445	3	106.535
10876	1	1	slice	145	1	\N
10876	2	1	roast	920	2	\N
10876	3	1	serving (3 oz)	85	\N	\N
10877	1	1	serving (3 oz)	85	\N	\N
10877	2	1	roast rump	2533	5	530.743
10878	1	1	serving (3 oz)	85	\N	\N
10878	2	1	slice	189	12	59.369
10879	1	3	oz	85	\N	\N
10879	2	1	roast whole	1867	12	777.37
10880	1	3	oz	85	\N	\N
10881	1	1	serving (3 oz)	85	\N	\N
10881	2	1	roast shank	3204	6	309.749
10882	1	1	serving (3 oz)	85	\N	\N
10882	2	1	slice	277	11	219.831
10883	1	1	serving (3 oz)	85	\N	\N
10883	2	1	roast	1497	9	547.492
10884	1	1	oz	28.35	11	0
10884	2	1	lb	453.6	11	0
10885	1	3	oz	85	\N	\N
10886	1	3	oz	85	\N	\N
10887	1	1	oz	28.35	1	\N
10887	2	1	lb	453.6	1	\N
10888	1	3	oz	85	\N	\N
10889	1	3	oz	85	\N	\N
10890	1	3	oz	85	\N	\N
10891	1	3	oz	85	\N	\N
10892	1	3	oz	85	\N	\N
10892	2	1	slice	430	1	\N
10893	1	1	oz spiral slice	28.35	1	\N
10893	2	1	lb spiral slice	453.6	1	\N
10894	1	3	oz	85	\N	\N
10895	1	4	oz	117	\N	\N
10898	1	3	oz	117	\N	\N
10899	1	1	serving (3 oz)	85	\N	\N
10899	2	1	slice	366	6	53.162
10900	1	1	oz whole	28.35	11	0
10900	2	1	lb whole	453.6	11	0
10901	1	1	oz spiral slice	28.35	1	\N
10901	2	1	lb spiral slice	453.6	1	\N
10902	1	3	oz	85	\N	\N
10903	1	1	oz shank	28.35	1	\N
10903	2	1	lb shank	453.6	1	\N
10904	1	1	oz rump	28.35	1	\N
10904	2	1	lb rump	453.6	1	\N
10905	1	1	oz whole	28.35	4	0
10905	2	1	lb whole	453.6	4	0
10906	1	1	oz	28.35	1	\N
10906	2	1	lb	453.6	1	\N
10907	1	1	oz shank	28.35	1	\N
10907	2	1	lb shank	453.6	1	\N
10908	1	1	oz rump	28.35	1	\N
10908	2	1	lb rump	453.6	1	\N
10909	1	1	oz whole	28.35	12	0
10909	2	1	lb whole	453.6	12	0
10910	1	1	oz	28.35	1	\N
10910	2	1	lb	453.6	1	\N
10911	1	1	oz	28.35	1	\N
10911	2	1	lb	453.6	1	\N
10912	1	1	oz	28.35	1	\N
10912	2	1	lb	453.6	1	\N
10913	1	1	serving (3 oz)	85	\N	\N
10913	2	1	roast rump	2970	5	181.709
10914	1	1	serving (3 oz)	85	\N	\N
10914	2	1	roast shank	3054	6	543.619
10915	1	1	serving (3 oz)	85	\N	\N
10915	2	1	slice	436	9	59.271
10916	1	1	serving (3 oz)	85	\N	\N
10916	2	1	slice	189	12	59.369
10917	1	1	serving (3 oz)	85	\N	\N
10917	2	1	roast	1867	12	777.37
10918	1	1	serving (3 oz)	85	\N	\N
10918	2	1	roast rump	2533	5	530.743
10919	1	1	serving (3 oz)	85	\N	\N
10919	2	1	roast shank	3204	6	309.749
10920	1	1	serving (3 oz)	85	\N	\N
10920	2	1	slice	446	6	99.115
10921	1	1	slice	136	1	\N
10921	2	1	serving (3 oz)	85	\N	\N
10922	1	1	serving (3 oz)	85	\N	\N
10922	2	1	roast	1995	4	487.343
10923	1	1	serving (3 oz)	85	\N	\N
10923	2	1	roast rump	2673	8	160.075
10924	1	1	serving (3 oz)	85	\N	\N
10924	2	1	roast shank	3170	7	298.025
10925	1	1	serving (3 oz)	85	\N	\N
10925	2	1	slice	445	3	106.535
10926	1	1	serving (3 oz)	85	\N	\N
10926	2	1	slice	277	11	219.831
10927	1	1	slice	145	1	\N
10927	2	1	roast	920	2	\N
10927	3	1	serving (3 oz)	85	\N	\N
10928	1	1	serving (3 oz)	85	\N	\N
10928	2	1	roast	1497	9	547.492
10929	1	1	serving (3 oz)	85	\N	\N
10929	2	1	roast rump	2874	3	104.472
10931	1	1	serving (3 oz)	85	\N	\N
10931	2	1	roast rump	2874	3	104.472
10932	1	1	oz	28.35	3	0
10932	2	1	lb	453.6	3	0
10933	1	1	serving (3 oz)	85	\N	\N
10933	2	1	roast shank	2800	3	427.282
10934	1	1	oz	28.35	3	0
10934	2	1	lb	453.6	3	0
10935	1	1	serving (3 oz)	85	\N	\N
10935	2	1	roast shank	2800	3	427.282
10936	1	1	oz	28.35	3	0
10936	2	1	lb	453.6	3	0
10937	1	1	serving (3 oz)	85	\N	\N
10937	2	1	slice	366	6	53.162
10938	1	1	serving (3 oz)	85	\N	\N
10938	2	1	slice	425	6	53.843
10939	1	1	serving (3 oz)	85	\N	\N
10939	2	1	slice	425	6	53.843
10940	1	3	oz	85	\N	\N
10942	1	1	oz	28.35	\N	\N
10942	2	1	lb	453.0	\N	\N
10943	1	3	oz	85	\N	\N
10944	1	3	oz	85	\N	\N
10945	1	3	oz	85	\N	\N
10946	1	3	oz	85	\N	\N
10947	1	1	chop	107	79	\N
10948	1	4	oz	114	\N	\N
10948	2	1	chop	146	76	\N
10949	1	1	chop	146	76	\N
10950	1	1	chop	107	79	\N
10951	1	3	oz	85	\N	\N
10951	2	1	roast	537	24	\N
10952	1	3	oz	85	\N	\N
10952	2	1	roast	508	24	\N
10953	1	3	oz	85	\N	\N
10953	2	1	steak	393	\N	\N
10954	1	3	oz	85	\N	\N
10954	2	1	steak	264	24	\N
10955	1	3	oz	85	\N	\N
10956	1	3	oz	85	\N	\N
10956	2	1	piece	194	12	30.241
10957	1	3	oz	85	\N	\N
10957	2	1	piece	231	12	40.115
10958	1	3	oz	85	\N	\N
10958	2	1	piece	430	12	51.189
10959	1	3	oz	85	\N	\N
10959	2	1	piece	373	12	51.69
10960	1	1	piece	92	12	10.506
10961	1	1	piece	105	12	12.142
10962	1	3	oz	85	\N	\N
10962	2	1	piece	609	12	95.268
10963	1	3	oz	85	\N	\N
10963	2	1	piece	765	12	146.184
10972	1	4	oz	113	\N	\N
10973	1	4	oz	113	\N	\N
10974	1	4	oz	113	\N	\N
10975	1	3	oz grilled patties	85	\N	\N
10976	1	3	oz grilled patties	85	\N	\N
10977	1	3	oz grilled patties	85	\N	\N
10978	1	3	oz grilled patties	85	\N	\N
10979	1	3	oz grilled patties	85	\N	\N
10980	1	4	oz	114	\N	\N
10980	2	1	ribs	1071	53	146.182
10981	1	3	oz	85	\N	\N
10981	2	1	ribs	878	56	178.865
10982	1	3	oz	85	\N	\N
10982	2	1	chop	176	59	45.049
10983	1	3	oz	85	\N	\N
10983	2	1	roast	848	31	255.67
10984	1	3	oz	85	\N	\N
10984	2	1	chop	131	60	44.247
10985	1	1	rack	122	36	78.181
10986	1	1	rack	122	36	78.181
10987	1	1	rack	138	37	93.933
10988	1	1	chop	131	60	44.247
10989	1	3	oz	85	\N	\N
10989	2	1	chop	176	59	45.049
10990	1	3	oz	85	\N	\N
10990	2	1	roast	848	31	255.67
10991	1	1	rack	122	36	78.181
10992	1	1	rack	122	36	78.181
10993	1	1	rack	138	37	93.933
10994	1	1	slice	26	120	3.403
10994	2	1	package	446	12	9.538
10998	1	1	slice	13.8	230	\N
11001	1	1	cup	33	\N	\N
11001	2	1	tbsp	3.0	\N	\N
11003	1	1	cup	28	\N	\N
11003	2	1	leaf	14.0	\N	\N
11004	1	1	cup	132	\N	\N
11005	1	1	large	25	\N	\N
11005	2	1	medium	12.0	\N	\N
11006	1	1	medium	12.0	\N	\N
11007	1	1	artichoke, medium	128	\N	\N
11007	2	1	artichoke, large	162	\N	\N
11008	1	1	artichoke, medium	120	\N	\N
11008	2	0.5	cup hearts	84	\N	\N
11009	1	0.33	package	84	\N	\N
11009	2	1	package (9 oz)	255	\N	\N
11010	1	1	cup	168	\N	\N
11010	2	1	package (9 oz), yields	240	\N	\N
11010	3	0.333	package (9 oz) yields	80	\N	\N
11011	1	1	cup	134	\N	\N
11011	2	1	spear, small (5"" long or less)	12.0	\N	\N
11011	3	1	spear, medium (5-1/4"" to 7"" long)	16	\N	\N
11011	4	1	spear, large (7-1/4"" to 8-1/2"")	20	\N	\N
11011	5	1	spear, extra large (8-3/4"" to 10"" long)	24	\N	\N
11011	6	1	spear tip (2"" long or less)	3.5	\N	\N
11012	1	0.5	cup	90	\N	\N
11012	2	4	spears (1/2"" base)	60	\N	\N
11013	1	0.5	cup	122	\N	\N
11013	2	1	can (300 x 407)	411	\N	\N
11015	1	1	cup	242	\N	\N
11015	2	1	spear (about 5"" long)	18	\N	\N
11015	3	1	can (300 x 407)	248	\N	\N
11018	1	4	spears	58	\N	\N
11018	2	1	package (10 oz)	284	\N	\N
11019	1	1	cup	180	\N	\N
11019	2	1	package (10 oz) yields	293	\N	\N
11019	3	4	spears	60	\N	\N
11022	1	1	leaf	4.0	\N	\N
11022	2	0.5	cup	24	\N	\N
11023	1	1	cup	58	\N	\N
11024	1	1	cup (1/2"" pieces)	93	\N	\N
11024	2	1	balsam-pear	124	\N	\N
11025	1	1	cup (1/2"" pieces)	124	\N	\N
11025	2	0.5	cup (1/2"" pieces)	62	\N	\N
11026	1	1	cup (1/2"" slices)	151	\N	\N
11026	2	0.5	cup (1/2"" pieces)	76	\N	\N
11027	1	1	cup (1/2"" slices)	120	\N	\N
11027	2	1	shoot	144	\N	\N
11028	1	1	cup (1/8"" slices)	131	\N	\N
11028	2	1	can (303 x 406)	262	\N	\N
11029	1	1	cup	184	\N	\N
11031	1	1	cup	156	\N	\N
11032	1	1	cup	170	\N	\N
11033	1	0.5	cup	124	\N	\N
11033	2	1	can (303 x 406)	454	\N	\N
11037	1	1	cup	160	\N	\N
11037	2	1	package (10 oz)	284	\N	\N
11038	1	1	cup	170	\N	\N
11038	2	1	package (10 oz) yields	311	\N	\N
11039	1	1	cup	164	\N	\N
11039	2	1	package (10 oz)	284	\N	\N
11040	1	1	cup	180	\N	\N
11040	2	1	package (10 oz) yields	311	\N	\N
11043	1	1	cup	104	\N	\N
11043	2	1	package (12 oz)	340	\N	\N
11044	1	1	cup	124	\N	\N
11045	1	1	cup	124	\N	\N
11046	1	1	cup	104	\N	\N
11048	1	0.333	package (10 oz)	94	\N	\N
11048	2	1	package (10 oz)	284	\N	\N
11049	1	0.333	package (10 oz) yields	94	\N	\N
11049	2	1	package (10 oz) yields	284	\N	\N
11050	1	1	cup	245	\N	\N
11052	1	1	cup 1/2"" pieces	100	11	6.222
11052	2	10	beans (4"" long)	55	\N	\N
11053	1	1	cup	125	\N	\N
11054	1	1	cup	240	\N	\N
11054	2	1	can total can contents	423	4	6.152
11056	1	1	cup	135	\N	\N
11056	2	10	beans	62	\N	\N
11056	3	1	can (303 x 406)	262	\N	\N
11058	1	0.5	cup	114	\N	\N
11058	2	1	can (303 x 406)	439	\N	\N
11060	1	1	cup	121	10	2.526
11060	2	1	package (10 oz)	284	\N	\N
11061	1	1	cup	135	\N	\N
11062	1	1	cup	111	9	3.215
11063	1	1	cup 1/2"" pieces	116	11	7.028
11080	1	1	cup	136	\N	\N
11080	2	1	beet (2"" dia)	82	\N	\N
11081	1	0.5	cup slices	85	\N	\N
11081	2	2	beets (2"" dia, sphere)	100	\N	\N
11082	1	1	cup	246	\N	\N
11084	1	1	cup, diced	157	\N	\N
11084	2	1	cup, shredded	195	\N	\N
11084	3	1	cup slices	170	\N	\N
11084	4	1	cup, whole	163	\N	\N
11084	5	1	slice	8.0	\N	\N
11084	6	1	beet	24	\N	\N
11084	7	1	can (303 x 406)	294	\N	\N
11086	1	1	cup	38	\N	\N
11086	2	1	leaf	32	\N	\N
11086	3	0.5	cup (1"" pieces)	19	\N	\N
11087	1	1	cup (1"" pieces)	144	\N	\N
11087	2	0.5	cup (1"" pieces)	72	\N	\N
11088	1	1	cup	109	\N	\N
11088	2	1	broadbean	8.0	\N	\N
11090	1	1	cup chopped	91	9	6.164
11090	2	1	bunch	608	\N	\N
11090	3	1	spear (about 5"" long)	31	\N	\N
11090	4	1	stalk	151	\N	\N
11090	5	0.5	cup, chopped or diced	44	\N	\N
11090	6	1	NLEA serving	148	\N	\N
11091	1	0.5	cup, chopped	78	\N	\N
11091	2	1	stalk, large (11""-12"" long)	280	\N	\N
11091	3	1	stalk, medium (7-1/2"" - 8"" long)	180	\N	\N
11091	4	1	stalk, small (5"" long)	140	\N	\N
11091	5	1	spear (about 5"" long)	37	\N	\N
11092	1	1	cup	156	\N	\N
11092	2	1	package (10 oz)	284	\N	\N
11093	1	1	cup	184	\N	\N
11094	1	0.33	package (10 oz)	95	\N	\N
11094	2	1	package (10 oz)	284	\N	\N
11094	3	1	package (2 lb)	907	\N	\N
11095	1	0.5	cup	92	\N	\N
11095	2	1	package (10 oz) yields	250	\N	\N
11096	1	1	cup chopped	40	1	\N
11096	2	1	stalk	19	4	4.144
11097	1	1	NLEA serving	85	\N	\N
11097	2	1	bunch cooked	437	3	30.621
11098	1	1	cup	88	\N	\N
11098	2	1	sprout	19	\N	\N
11099	1	1	sprout	21	\N	\N
11099	2	0.5	cup	78	\N	\N
11100	1	0.33	package (10 oz)	95	\N	\N
11100	2	1	package (10 oz)	284	\N	\N
11100	3	1	package (2 lb)	907	\N	\N
11101	1	1	cup	155	\N	\N
11104	1	1	cup (1"" pieces)	118	\N	\N
11104	2	1	root	156	\N	\N
11105	1	1	cup (1"" pieces)	125	\N	\N
11105	2	1	root	166	\N	\N
11106	1	1	cup	94	\N	\N
11106	2	1	petiole	5.0	\N	\N
11108	1	1	cup, chopped	124	\N	\N
11108	2	3	stalks	45	\N	\N
11109	1	1	cup, chopped	89	\N	\N
11109	2	1	cup, shredded	70	\N	\N
11109	3	1	head, large (about 7"" dia)	1248	\N	\N
11109	4	1	leaf, large	33	\N	\N
11109	5	1	head, medium (about 5-3/4"" dia)	908	\N	\N
11109	6	1	leaf, medium	23	\N	\N
11109	7	1	head, small (about 4-1/2"" dia)	714	\N	\N
11109	8	1	leaf	15.0	\N	\N
11110	1	0.5	cup, shredded	75	\N	\N
11110	2	1	head	1262	\N	\N
11112	1	1	cup, chopped	89	\N	\N
11112	2	1	cup, shredded	70	\N	\N
11112	3	1	head, large (about 5-1/2"" dia)	1134	\N	\N
11112	4	1	leaf	23	\N	\N
11112	5	1	head, medium (about 5"" dia)	839	\N	\N
11112	6	1	head, small (4"" dia)	567	\N	\N
11113	1	1	leaf	22	\N	\N
11113	2	0.5	cup, shredded	75	\N	\N
11114	1	1	cup, shredded	70	\N	\N
11115	1	1	cup, shredded	145	\N	\N
11116	1	1	cup, shredded	70	\N	\N
11116	2	1	head	840	\N	\N
11116	3	1	leaf	14.0	\N	\N
11117	1	1	cup, shredded	170	\N	\N
11118	1	1	cup	150	\N	\N
11119	1	1	cup, shredded	76	\N	\N
11120	1	1	cup, shredded	119	\N	\N
11120	2	1	leaf	14.0	\N	\N
11122	1	1	cup, shredded	178	\N	\N
11124	1	1	cup chopped	128	\N	\N
11124	2	1	cup grated	110	\N	\N
11124	3	1	cup strips or slices	122	\N	\N
11124	4	1	large (7-1/4"" to 8-/1/2"" long)	72	\N	\N
11124	5	1	medium	61	\N	\N
11124	6	1	small (5-1/2"" long)	50	\N	\N
11124	7	1	slice	3.0	\N	\N
11124	8	1	strip large (3"" long)	7.0	\N	\N
11124	9	1	strip medium	4.0	\N	\N
11125	1	1	tbsp	9.7	\N	\N
11125	2	0.5	cup slices	78	\N	\N
11125	3	1	carrot	46	\N	\N
11126	1	0.5	cup slices	123	\N	\N
11126	2	1	can (303 x 406)	454	\N	\N
11128	1	1	cup, sliced	146	\N	\N
11128	2	1	cup, mashed	228	\N	\N
11128	3	1	slice	2.8	\N	\N
11128	4	1	can (303 x 406)	284	\N	\N
11130	1	0.5	cup slices	64	\N	\N
11130	2	1	package (10 oz)	284	\N	\N
11131	1	1	cup, sliced	146	\N	\N
11134	1	1	cup	206	\N	\N
11134	2	1	root	408	\N	\N
11135	1	1	cup chopped (1/2"" pieces)	107	6	4.999
11135	2	1	floweret	13.0	1	\N
11135	3	1	head large (6-7"" dia.)	840	\N	\N
11135	4	1	head medium (5-6"" dia.)	588	6	282.197
11135	5	1	head small (4"" dia.)	265	\N	\N
11136	1	0.5	cup (1"" pieces)	62	\N	\N
11136	2	3	flowerets	54	\N	\N
11137	1	0.5	cup (1"" pieces)	66	\N	\N
11137	2	1	package (10 oz)	284	\N	\N
11138	1	1	cup (1"" pieces)	180	\N	\N
11141	1	1	cup	156	\N	\N
11142	1	1	cup pieces	155	\N	\N
11143	1	1	cup chopped	101	12	6.584
11143	2	1	NLEA serving	110	\N	\N
11143	3	1	tbsp	7.5	\N	\N
11143	4	1	stalk, large (11""-12"" long)	64	\N	\N
11143	5	1	stalk, medium (7-1/2"" - 8"" long)	40	\N	\N
11143	6	1	stalk, small (5"" long)	17	\N	\N
11143	7	1	strip (4"" long)	4.0	\N	\N
11144	1	1	cup, diced	150	\N	\N
11144	2	2	stalks	75	\N	\N
11145	1	1	leaf	8.0	\N	\N
11147	1	1	cup	36	\N	\N
11147	2	1	leaf	48	\N	\N
11148	1	1	cup, chopped	175	\N	\N
11149	1	1	cup (1"" pieces)	132	\N	\N
11149	2	1	chayote (5-3/4"")	203	\N	\N
11150	1	1	cup (1"" pieces)	160	\N	\N
11151	1	1	head	53	\N	\N
11151	2	0.5	cup	45	\N	\N
11152	1	1	cup, chopped	29	\N	\N
11154	1	1	root	60	\N	\N
11154	2	0.5	cup (1"" pieces)	45	\N	\N
11156	1	1	tbsp chopped	3.0	\N	\N
11156	2	1	tsp chopped	1.0	\N	\N
11157	1	1	cup (1"" pieces)	25	\N	\N
11157	2	1	stem (8-3/4"" long)	14.0	\N	\N
11158	1	1	cup (1"" pieces)	100	\N	\N
11161	1	1	cup, chopped	36	\N	\N
11162	1	1	cup, chopped	190	\N	\N
11163	1	0.33	package (10 oz)	95	\N	\N
11163	2	1	package (10 oz)	284	\N	\N
11163	3	1	package (3 lb)	1361	\N	\N
11164	1	1	cup, chopped	170	\N	\N
11165	1	0.25	cup	4.0	\N	\N
11165	2	9	sprigs	20	\N	\N
11167	1	1	cup	145	5	11.273
11167	2	1	ear, large (7-3/4"" to 9"" long) yields	143	\N	\N
11167	3	1	ear, medium (6-3/4"" to 7-1/2"" long) yields	102	3	36.51
11167	4	1	ear, small (5-1/2"" to 6-1/2"" long)	73	\N	\N
11168	1	1	ear small (5-1/2"" to 6-1/2"" long)	89	\N	\N
11168	2	1	ear medium (6-3/4"" to 7-1/2"" long)	103	\N	\N
11168	3	1	ear large (7-3/4"" to 9"" long)	118	\N	\N
11168	4	1	cup cut	149	6	5.999
11168	5	1	baby ear	8.0	\N	\N
11170	1	1	cup	256	1	\N
11170	2	1	can (303 x 406)	482	\N	\N
11172	1	1	cup	164	1	\N
11172	2	1	can (12 oz) yields	211	\N	\N
11172	3	1	can (303 x 406)	298	\N	\N
11174	1	1	cup	256	\N	\N
11174	2	1	can (303 x 406)	482	\N	\N
11176	1	1	cup	210	\N	\N
11176	2	1	can, 15 oz (303 x 406)	425	\N	\N
11176	3	1	can (303 x 406)	340	\N	\N
11177	1	1	cup drained, rinsed	150	4	4.571
11177	2	1	can drained, rinsed	266	4	7.657
11178	1	1	cup	136	9	4.178
11178	2	1	package	284	1	\N
11179	1	1	cup	165	\N	\N
11179	2	1	package (10 oz) yields	284	\N	\N
11180	1	1	cup kernels	165	\N	\N
11180	2	1	ear, yields	125	\N	\N
11181	1	1	cup kernels	165	\N	\N
11181	2	1	ear, yields	63	\N	\N
11182	1	1	cup	141	9	5.832
11184	1	1	cup	227	\N	\N
11190	1	1	cup	56	\N	\N
11191	1	1	cup	145	\N	\N
11192	1	1	cup	165	\N	\N
11195	1	1	cup	160	\N	\N
11195	2	1	package (10 oz)	284	\N	\N
11196	1	1	cup	170	\N	\N
11197	1	1	cup	94	\N	\N
11197	2	1	pod	12.0	\N	\N
11198	1	1	cup	95	\N	\N
11199	1	1	cup slices	91	\N	\N
11199	2	1	pod	12.0	\N	\N
11200	1	1	cup slices	104	\N	\N
11200	2	1	pod	14.0	\N	\N
11201	1	1	cup, chopped	36	\N	\N
11201	2	1	leaf	3.0	\N	\N
11202	1	1	cup, chopped	53	\N	\N
11203	1	1	cup	50	\N	\N
11203	2	1	sprig	1.0	\N	\N
11204	1	1	cup	135	\N	\N
11204	2	0.5	cup	68	\N	\N
11205	1	0.5	cup slices	52	\N	\N
11205	2	1	cucumber (8-1/4"")	301	\N	\N
11206	1	1	cup, pared, chopped	133	\N	\N
11206	2	1	cup, sliced	119	\N	\N
11206	3	1	large (8-1/4"" long)	280	\N	\N
11206	4	1	medium	201	\N	\N
11206	5	1	slice	7.0	\N	\N
11206	6	1	small (6-3/8"" long)	158	\N	\N
11206	7	1	stick (4"" long)	9.0	\N	\N
11207	1	1	cup, chopped	55	\N	\N
11208	1	1	cup, chopped	105	\N	\N
11209	1	1	cup, cubes	82	\N	\N
11209	2	1	eggplant, peeled (yield from 1-1/4 lb)	458	\N	\N
11209	3	1	eggplant, unpeeled (approx 1-1/4 lb)	548	\N	\N
11210	1	1	cup (1"" cubes)	99	\N	\N
11211	1	1	cup	118	4	24.23
11211	2	1	package	432	4	55.569
11212	1	1	cup	155	2	\N
11213	1	0.5	cup, chopped	25	\N	\N
11213	2	1	head	513	\N	\N
11214	1	1	cup	150	\N	\N
11215	1	1	cup	136	\N	\N
11215	2	1	tsp	2.8	\N	\N
11215	3	1	clove	3.0	\N	\N
11215	4	3	cloves	9.0	\N	\N
11216	1	1	tsp	2.0	\N	\N
11216	2	0.25	cup slices (1"" dia)	24	\N	\N
11216	3	5	slices (1"" dia)	11.0	\N	\N
11218	1	0.5	cup (1"" pieces)	58	\N	\N
11218	2	1	gourd	771	\N	\N
11219	1	1	cup (1"" cubes)	146	\N	\N
11220	1	1	cup (1"" pieces)	95	\N	\N
11220	2	1	gourd	178	\N	\N
11221	1	1	cup (1"" pieces)	178	\N	\N
11221	2	0.5	cup (1"" slices)	89	\N	\N
11222	1	1	cup, chopped	21	\N	\N
11223	1	1	cup, chopped	42	\N	\N
11224	1	1	cup	80	\N	\N
11225	1	1	cup	87	\N	\N
11226	1	1	cup slices	150	\N	\N
11228	1	1	cup slices	99	\N	\N
11228	2	1	piece	6.0	\N	\N
11230	1	1	cup	24	\N	\N
11231	1	1	cup	28	\N	\N
11232	1	1	cup	87	\N	\N
11233	1	1	cup 1"" pieces, loosely packed	16	49	3.52
11234	1	1	cup, chopped	130	\N	\N
11235	1	0.333	package (10 oz)	94	\N	\N
11235	2	1	package (10 oz)	284	\N	\N
11236	1	1	cup, chopped	130	\N	\N
11236	2	0.5	cup, chopped or diced	65	\N	\N
11237	1	1	strip	6.3	\N	\N
11237	2	0.5	cup	27	\N	\N
11238	1	1	piece whole	19	4	7.291
11239	1	1	cup	54	2	\N
11239	2	1	piece	5.4	6	0.6
11240	1	1	cup	66	4	4.8
11240	2	1	piece	12.9	12	1.8
11241	1	1	cup	135	\N	\N
11241	2	1	slice	16	\N	\N
11242	1	1	cup slices	165	\N	\N
11243	1	1	cup sliced	121	3	8.69
11245	1	1	cup, chopped	180	\N	\N
11246	1	1	cup	89	\N	\N
11246	2	1	leek	89	\N	\N
11246	3	1	slice	6.0	\N	\N
11247	1	1	leek	124	\N	\N
11247	2	0.25	cup, chopped or diced	26	\N	\N
11248	1	1	cup	77	\N	\N
11250	1	1	cup, shredded or chopped	55	\N	\N
11250	2	1	head (5"" dia)	163	\N	\N
11250	3	1	leaf, large	15.0	\N	\N
11250	4	1	leaf, medium	7.5	\N	\N
11250	5	1	leaf	5.0	\N	\N
11251	1	1	cup shredded	47	4	5.605
11251	2	1	leaf inner	6.0	23	4.131
11251	3	1	leaf outer	28	22	8.542
11251	4	1	head	626	16	121.754
11251	5	1	NLEA serving	85	\N	\N
11252	1	1	cup shredded	72	4	12.615
11252	2	1	cup, chopped (1/2"" pieces, loosely packed)	57	\N	\N
11252	3	1	head, large	755	\N	\N
11252	4	1	head, medium (6"" dia)	539	\N	\N
11252	5	1	head, small	324	\N	\N
11252	6	1	leaf, large	15.0	\N	\N
11252	7	1	leaf, medium	8.0	\N	\N
11252	8	1	leaf, small	5.0	\N	\N
11252	9	1	NLEA Serving	89	\N	\N
11253	1	1	cup shredded	36	\N	9.345
11253	2	1	head	360	\N	174.527
11253	3	1	leaf inner	4.8	\N	4.02
11253	4	1	leaf outer	24	\N	8.645
11254	1	10	slices (2-1/2"" dia)	81	\N	\N
11254	2	1	root (9-1/2"" long)	115	\N	\N
11255	1	0.5	cup	60	\N	\N
11255	2	10	slices (2-1/2"" dia)	89	\N	\N
11257	1	1	cup shredded	28	3	2.454
11257	2	1	leaf inner	2.6	24	1.47
11257	3	1	leaf outer	17	24	6.146
11257	4	1	head	309	16	69.182
11257	5	1	NLEA serving	85	\N	\N
11258	1	0.5	cup, cubes	68	\N	\N
11258	2	1	yam	420	\N	\N
11259	1	1	cup, cubes	145	\N	\N
11260	1	1	cup, pieces or slices	70	\N	\N
11260	2	1	cup, whole	96	\N	\N
11260	3	1	large	23	\N	\N
11260	4	1	medium	18	\N	\N
11260	5	1	slice	6.0	\N	\N
11260	6	1	small	10.0	\N	\N
11260	7	0.5	cup pieces	35	\N	\N
11261	1	1	cup pieces	156	\N	\N
11261	2	1	tbsp	9.8	\N	\N
11261	3	1	mushroom	12.0	\N	\N
11263	1	1	cup sliced	108	24	17.752
11264	1	1	cup	156	\N	\N
11264	2	1	can	132	\N	\N
11264	3	1	large	16	\N	\N
11264	4	1	medium	12.0	\N	\N
11264	5	1	small	7.0	\N	\N
11264	6	10	slices	40	\N	\N
11264	7	8	caps	47	\N	\N
11264	8	0.5	cup pieces	78	\N	\N
11265	1	1	cup diced	86	2	\N
11265	2	1	piece whole	84	20	26.751
11266	1	1	cup whole	87	4	0.963
11266	2	1	cup sliced	72	4	3.008
11266	3	1	piece whole	20	30	6.355
11267	1	1	cup whole	89	4	21.061
11267	2	1	cup sliced	97	4	29.33
11267	3	1	piece whole	19	4	7.291
11268	1	1	mushroom	3.6	\N	\N
11268	2	4	mushrooms	15.0	\N	\N
11269	1	1	cup pieces	145	\N	\N
11269	2	4	mushrooms	72	\N	\N
11270	1	1	cup, chopped	56	1	\N
11271	1	1	cup, chopped	140	1	\N
11272	1	1	cup, chopped	146	\N	\N
11272	2	1	package (10 oz)	284	\N	\N
11273	1	1	cup, chopped	150	\N	\N
11273	2	1	package (10 oz) yields	212	\N	\N
11274	1	1	cup, chopped	150	\N	\N
11275	1	1	cup, chopped	180	\N	\N
11276	1	1	cup, chopped	56	\N	\N
11277	1	1	cup, chopped	180	\N	\N
11278	1	1	cup	100	\N	\N
11278	2	8	pods (3"" long)	95	\N	\N
11279	1	0.5	cup slices	80	\N	\N
11279	2	8	pods (3"" long)	85	\N	\N
11280	1	0.33	package (10 oz)	95	\N	\N
11280	2	1	package (10 oz)	284	\N	\N
11280	3	1	package (3 lb)	1361	\N	\N
11281	1	0.5	cup slices	92	\N	\N
11281	2	1	package (10 oz) yields	255	\N	\N
11282	1	1	cup, chopped	160	\N	\N
11282	2	1	cup, sliced	115	\N	\N
11282	3	1	tbsp chopped	10.0	\N	\N
11282	4	1	large	150	\N	\N
11282	5	1	slice, large (1/4"" thick)	38	\N	\N
11282	6	1	medium (2-1/2"" dia)	110	\N	\N
11282	7	1	slice, medium (1/8"" thick)	14.0	\N	\N
11282	8	1	small	70	\N	\N
11282	9	1	slice, thin	9.0	\N	\N
11282	10	10	rings	60	\N	\N
11283	1	1	cup	210	\N	\N
11283	2	1	tbsp chopped	15.0	\N	\N
11283	3	1	large	128	\N	\N
11283	4	1	slice, large (1/4"" thick)	32	\N	\N
11283	5	1	medium	94	\N	\N
11283	6	1	slice, medium (1/8"" thick)	12.0	\N	\N
11283	7	1	small	60	\N	\N
11283	8	1	slice, thin	8.0	\N	\N
11284	1	1	tbsp	5.0	\N	\N
11284	2	0.25	cup	14.0	\N	\N
11285	1	1	onion	63	\N	\N
11285	2	0.5	cup, chopped or diced	112	\N	\N
11286	1	1	cup chopped	87	4	8.485
11287	1	0.33	package (10 oz)	95	\N	\N
11287	2	1	package (10 oz)	284	\N	\N
11288	1	1	tbsp chopped	15.0	\N	\N
11288	2	0.5	cup, chopped or diced	105	\N	\N
11289	1	0.33	package (10 oz)	95	\N	\N
11289	2	1	package (10 oz)	284	\N	\N
11290	1	1	cup	210	\N	\N
11291	1	1	cup, chopped	100	\N	\N
11291	2	1	tbsp chopped	6.0	\N	\N
11291	3	1	large	25	\N	\N
11291	4	1	medium (4-1/8"" long)	15.0	\N	\N
11291	5	1	small (3"" long)	5.0	\N	\N
11292	1	1	tbsp	6.0	\N	\N
11292	2	1	stalk	12.0	\N	\N
11292	3	1	cup chopped	71	12	19.062
11294	1	1	NLEA serving	148	\N	\N
11294	2	1	onion	331	24	145.55
11295	1	6	rings	85	\N	\N
11295	2	1	package (16 oz)	454	\N	\N
11295	3	1	package (9 oz)	255	\N	\N
11296	1	1	cup	48	\N	\N
11296	2	10	rings, large (3-4"" dia)	71	\N	\N
11296	3	10	rings, medium (2-3"" dia)	60	\N	\N
11296	4	10	rings, small (1-2"" dia)	48	\N	\N
11297	1	1	cup chopped	60	\N	\N
11297	2	1	tbsp	3.8	\N	\N
11297	3	10	sprigs	10.0	\N	\N
11298	1	1	cup slices	133	\N	\N
11299	1	0.5	cup slices	78	\N	\N
11299	2	1	parsnip (9"" long)	160	\N	\N
11300	1	1	cup, chopped	98	\N	\N
11300	2	1	cup, whole	63	\N	\N
11300	3	10	pea pods	34	\N	\N
11301	1	1	cup	160	\N	\N
11302	1	1	cup	144	\N	\N
11302	2	1	package (10 oz)	284	\N	\N
11303	1	1	cup	160	\N	\N
11303	2	1	package (10 oz) yields	253	\N	\N
11304	1	1	cup	145	\N	\N
11305	1	1	cup	160	\N	\N
11306	1	0.5	cup	124	\N	\N
11306	2	1	can (303 x 406)	482	\N	\N
11308	1	1	cup	175	5	14.382
11308	2	1	can (303 x 406)	313	\N	\N
11310	1	1	cup	227	\N	\N
11310	2	0.5	cup	114	\N	\N
11311	1	1	can	257	4	4.764
11311	2	1	cup	163	4	5.005
11312	1	1	cup	134	9	6.196
11312	2	1	package	284	1	\N
11313	1	0.5	cup	80	\N	\N
11313	2	1	package (10 oz) yields	253	\N	\N
11316	1	1	cup	120	\N	\N
11318	1	1	cup	255	\N	\N
11322	1	0.5	cup	70	\N	\N
11322	2	1	package (10 oz)	284	\N	\N
11323	1	1	package (10 oz) yields	278	\N	\N
11323	2	0.5	cup	80	\N	\N
11324	1	1	cup	120	\N	\N
11326	1	0.5	cup	69	\N	\N
11326	2	1	package (10 oz)	284	\N	\N
11327	1	1	cup	180	\N	\N
11329	1	1	pepper	73	\N	\N
11329	2	0.5	cup, chopped or diced	68	\N	\N
11333	1	1	cup, chopped	149	\N	\N
11333	2	1	cup, sliced	92	\N	\N
11333	3	1	tbsp	9.3	\N	\N
11333	4	1	large (2-1/4 per lb, approx 3-3/4"" long, 3"" dia)	164	\N	\N
11333	5	1	medium (approx 2-3/4"" long, 2-1/2"" dia)	119	\N	\N
11333	6	1	ring (3"" dia, 1/4"" thick)	10.0	\N	\N
11333	7	1	small	74	\N	\N
11333	8	10	strips	27	\N	\N
11334	1	1	cup, chopped or strips	135	\N	\N
11334	2	1	tablespoon, chopped	11.6	\N	\N
11335	1	1	cup, halves	140	\N	\N
11337	1	0.33	package (10 oz)	95	\N	\N
11337	2	1	package (10 oz)	284	\N	\N
11339	1	1	cup chopped	115	4	18.956
11344	1	1	cup	154	\N	\N
11344	2	10	seeds	4.0	\N	\N
11345	1	1	cup	153	\N	\N
11349	1	1	cup	240	\N	\N
11350	1	1	cup	160	\N	\N
11351	1	1	cup	165	\N	\N
11351	2	1	tbsp	10.0	\N	\N
11352	1	0.5	cup, diced	75	\N	\N
11352	2	1	Potato large (3"" to 4-1/4"" dia)	369	\N	\N
11352	3	1	Potato medium (2-1/4"" to 3-1/4"" dia)	213	\N	\N
11352	4	1	Potato small (1-3/4"" to 2-1/2"" dia)	170	\N	\N
11353	1	0.5	cup, diced	75	\N	\N
11353	2	1	potato large (3"" to 4-1/4"" dia)	369	\N	\N
11353	3	1	Potato medium (2-1/4"" to 3-1/4"" dia)	213	\N	\N
11353	4	1	Potato small (1-3/4"" to 2-1/4"" dia)	170	\N	\N
11354	1	0.5	cup, diced	75	\N	\N
11354	2	1	large (3"" to 4-1/4"" dia.)	369	\N	\N
11354	3	1	medium (2+-1/4"" to 3-1/4"" dia.)	213	\N	\N
11354	4	1	small (1-3/4"" to 2-1/4"" dia.)	92	\N	\N
11355	1	0.5	cup, diced	75	\N	\N
11355	2	1	potato large (3"" to 4-1/4"" dia)	369	\N	\N
11355	3	1	potato medium (2-1/4"" to 3-1/4"" dia)	213	\N	\N
11355	4	1	potato small (1-3/4"" to 2-1/4"" dia)	170	\N	\N
11356	1	1	potato large (3"" to 4-1/4"" dia.	299	\N	\N
11356	2	1	potato medium (2-1/4"" to 3-1/4"" dia.)	173	\N	\N
11356	3	1	potato small (1-3/4"" to 2-1/2"" dia.)	138	\N	\N
11357	1	1	potato large (3"" to 4-1/4"" dia)	299	\N	\N
11357	2	1	potato medium (2-1/4"" to 3-1/4"" dia)	173	\N	\N
11357	3	1	potato small (1-3/4"" to 2-1/2"" dia)	138	\N	\N
11358	1	1	potato large (3"" to 4-1/4"" dia.	299	\N	\N
11358	2	1	potato medium (2-1/4"" to 3-1/4"" dia.)	173	\N	\N
11358	3	1	potato small (1-3/4"" to 2-1/2"" dia.)	138	\N	\N
11359	1	10	strip	82	6	11.557
11359	2	3	oz	85	9	0
11360	1	10	strip	69	6	9.755
11361	1	3	oz	85	3	0
11362	1	1	skin	38	\N	\N
11363	1	0.5	cup	61	\N	\N
11363	2	1	potato (2-1/3"" x 4-3/4"")	156	\N	\N
11364	1	1	skin	58	\N	\N
11365	1	0.5	cup	78	\N	\N
11365	2	1	potato (2-1/2"" dia, sphere)	136	\N	\N
11366	1	1	skin	34	\N	\N
11367	1	0.5	cup	78	\N	\N
11367	2	1	large (3"" to 4-1/4"" dia.)	300	\N	\N
11367	3	1	medium (2-1/4"" to 3-1/4"" dia.)	167	\N	\N
11367	4	1	small (1-3/4"" to 2-1/2"" dia.)	125	\N	\N
11368	1	0.5	cup	78	\N	\N
11368	2	1	potato (2-1/3"" x 4-3/4"")	156	\N	\N
11369	1	1	skin	58	\N	\N
11370	1	1	cup	156	\N	\N
11371	1	1	cup	210	\N	\N
11372	1	1	cup	245	\N	\N
11373	1	1	cup	245	\N	\N
11374	1	1	cup, whole	300	\N	\N
11374	2	1	can (303 x 406)	454	\N	\N
11376	1	1	cup	180	\N	\N
11376	2	1	potato	35	\N	\N
11378	1	1	cup	60	4	8.248
11379	1	1	cup	210	\N	\N
11380	1	1	cup	200	\N	\N
11381	1	1	cup	210	\N	\N
11382	1	1	cup	200	\N	\N
11383	1	1	cup	210	\N	\N
11384	1	0.167	package (5.5 oz)	26	\N	\N
11384	2	1	package (5.5 oz)	156	\N	\N
11385	1	0.167	package (5.5 oz) yields	137	\N	\N
11385	2	1	package yield, 5.5 oz	822	\N	\N
11386	1	0.167	package (5.5 oz)	26	\N	\N
11386	2	1	package (5.5 oz)	156	\N	\N
11387	1	1	cup (unprepared)	245	\N	\N
11387	2	0.167	package (5.5 oz) yields	137	\N	\N
11387	3	1	package yield, 5.5 oz	822	\N	\N
11390	1	0.5	cup	105	\N	\N
11390	2	1	package (12 oz)	340	\N	\N
11391	1	1	cup prepared	150	14	17.353
11391	2	1	patty, oval (approx 3"" x 1-1/2"" x 1/2"")	29	\N	\N
11391	3	1	package yield, 12 oz	205	\N	\N
11392	1	1	package (6 oz)	170	\N	\N
11394	1	10	strip	30	6	3.997
11395	1	10	strip	21	6	4.18
11398	1	1	cup	120	24	5.806
11398	2	10	pieces	91	30	4.017
11399	1	10	puffs	79	\N	\N
11399	2	10	Crispy Crowns	60	\N	\N
11399	3	1	puff	7.0	\N	\N
11399	4	1	cup	128	\N	\N
11400	1	1	cup	182	\N	\N
11402	1	10	strip	89	18	53.024
11402	2	1	package (9 oz)	255	\N	\N
11403	1	10	fries	76	42	36.031
11403	2	1	package (9 oz), yields	198	\N	\N
11406	1	10	strips	65	\N	\N
11406	2	1	package (9 oz)	255	\N	\N
11407	1	10	strips	50	\N	\N
11407	2	1	package (9 oz), yields	198	\N	\N
11408	1	10	strips	65	\N	\N
11408	2	1	package (9 oz)	255	\N	\N
11409	1	10	strips	50	\N	\N
11409	2	1	package (9 oz), yields	198	\N	\N
11411	1	10	strip	153	6	16.262
11412	1	10	strip	133	6	17.485
11413	1	1	cup	160	\N	\N
11414	1	1	cup	250	\N	\N
11416	1	1	cup	33	\N	\N
11416	2	1	flower	2.0	\N	\N
11417	1	1	cup	134	\N	\N
11418	1	1	cup	39	\N	\N
11419	1	1	cup	71	\N	\N
11422	1	1	cup (1"" cubes)	116	\N	\N
11423	1	1	cup, mashed	245	\N	\N
11424	1	1	cup	245	\N	\N
11426	1	1	cup	270	\N	\N
11427	1	1	cup	43	\N	\N
11427	2	1	plant	3.0	\N	\N
11428	1	1	cup	115	\N	\N
11428	2	1	squash	431	\N	\N
11429	1	1	cup slices	116	\N	\N
11429	2	1	large (1"" to 1-1/4"" dia)	9.0	\N	\N
11429	3	1	medium (3/4"" to 1"" dia)	4.5	\N	\N
11429	4	1	slice	1.0	\N	\N
11429	5	1	small	2.0	\N	\N
11429	6	0.5	cup slices	58	\N	\N
11430	1	1	cup slices	116	\N	\N
11430	2	1	radish (7"" long)	338	\N	\N
11431	1	1	cup, sliced	147	\N	\N
11432	1	1	cup	116	\N	\N
11435	1	1	cup, cubes	140	\N	\N
11435	2	1	large	772	\N	\N
11435	3	1	medium	386	\N	\N
11435	4	1	small	192	\N	\N
11436	1	1	cup, cubes	170	\N	\N
11436	2	1	cup, mashed	240	\N	\N
11437	1	1	cup slices	133	\N	\N
11438	1	1	cup, sliced	135	\N	\N
11439	1	1	cup	142	\N	\N
11439	2	1	cup, undrained	236	\N	\N
11442	1	2	tbsp (1/8 cup)	10.0	\N	\N
11444	1	2	tbsp (1/8 cup)	10.0	\N	\N
11445	1	2	tbsp (1/8 cup)	10.0	\N	\N
11446	1	10	sheets	26	\N	\N
11446	2	2	tbsp (1/8 cup)	10.0	\N	\N
11447	1	1	flower	3.0	\N	\N
11447	2	1	cup flowers	20	\N	\N
11448	1	1	cup	104	\N	\N
11450	1	1	cup	256	\N	\N
11451	1	1	cup	180	\N	\N
11452	1	0.5	cup	35	\N	\N
11452	2	10	sprouts	10.0	\N	\N
11453	1	1	cup	94	\N	\N
11457	1	1	cup	30	\N	\N
11457	2	1	bunch	340	\N	\N
11457	3	1	leaf	10.0	\N	\N
11457	4	1	package (10 oz)	284	\N	\N
11458	1	1	cup	180	\N	\N
11459	1	1	cup	234	\N	\N
11461	1	1	cup	214	\N	\N
11463	1	1	cup	156	\N	\N
11463	2	1	package (10 oz)	284	\N	\N
11464	1	0.5	cup	95	\N	\N
11464	2	1	package (10 oz) yields	220	\N	\N
11467	1	1	cup sliced	127	8	8.46
11468	1	1	cup, sliced	180	\N	\N
11468	2	0.5	cup slices	90	\N	\N
11471	1	1	cup, diced	210	\N	\N
11471	2	1	cup, mashed	240	\N	\N
11471	3	1	cup slices	216	\N	\N
11471	4	1	slice	8.0	\N	\N
11471	5	1	can (303 x 406)	241	\N	\N
11473	1	1	cup slices	130	\N	\N
11474	1	1	cup slices	192	\N	\N
11475	1	1	cup slices	130	\N	\N
11476	1	1	cup, mashed	240	\N	\N
11476	2	1	cup, sliced	180	\N	\N
11477	1	1	cup, chopped	124	\N	\N
11477	2	1	cup, sliced	113	\N	\N
11477	3	1	large	323	\N	\N
11477	4	1	medium	196	\N	\N
11477	5	1	slice	9.9	\N	\N
11477	6	1	small	118	\N	\N
11478	1	1	cup, sliced	180	\N	\N
11478	2	0.5	cup, mashed	120	\N	\N
11479	1	0.33	package (10 oz)	95	\N	\N
11479	2	1	package (10 oz)	284	\N	\N
11479	3	1	package (3 lb)	1361	\N	\N
11480	1	1	cup	223	\N	\N
11481	1	1	cup	227	\N	\N
11482	1	1	cup, cubes	140	\N	\N
11482	2	1	squash (4 inch dia)	431	\N	\N
11483	1	1	cup, cubes	205	\N	\N
11484	1	1	cup, mashed	245	\N	\N
11485	1	1	cup, cubes	140	\N	\N
11486	1	1	cup, cubes	205	\N	\N
11487	1	0.33	package (12 oz)	113	\N	\N
11487	2	1	package (12 oz)	340	\N	\N
11487	3	1	package (4 lb)	1814	\N	\N
11488	1	1	cup, mashed	240	\N	\N
11489	1	1	cup, cubes	116	\N	\N
11490	1	1	cup, cubes	205	\N	\N
11491	1	1	cup, mashed	236	\N	\N
11492	1	1	cup, cubes	101	\N	\N
11493	1	1	cup	155	\N	\N
11496	1	1	cup	192	\N	\N
11497	1	1	cup	266	\N	\N
11499	1	1	cup	255	\N	\N
11501	1	1	cup	156	\N	\N
11501	2	1	package (10 oz)	284	\N	\N
11502	1	1	cup	170	\N	\N
11503	1	1	cup, chopped	56	\N	\N
11503	2	1	shoot	13.0	\N	\N
11504	1	1	cup, chopped	98	\N	\N
11505	1	1	cup, chopped	35	\N	\N
11505	2	1	leaf (12-1/4"" long)	16	\N	\N
11506	1	1	cup	64	\N	\N
11507	1	1	cup, cubes	133	\N	\N
11507	2	1	sweetpotato, 5"" long	130	\N	\N
11508	1	1	cup	200	\N	\N
11508	2	1	large	180	\N	\N
11508	3	1	medium (2"" dia, 5"" long, raw)	114	\N	\N
11508	4	1	small	60	\N	\N
11510	1	1	cup, mashed	328	\N	\N
11510	2	1	medium	151	\N	\N
11512	1	1	cup, mashed	255	\N	\N
11512	2	1	cup pieces	200	\N	\N
11514	1	1	cup	255	\N	\N
11514	2	1	can (404 x 307)	496	\N	\N
11516	1	1	cup, cubes	176	\N	\N
11517	1	1	cup, cubes	176	\N	\N
11518	1	1	cup, sliced	104	\N	\N
11519	1	1	cup, sliced	132	\N	\N
11520	1	1	cup	28	\N	\N
11520	2	1	leaf (11"" x 6-1/2"")	10.0	\N	\N
11521	1	1	cup	145	\N	\N
11522	1	0.5	cup slices	43	\N	\N
11522	2	1	shoot	83	\N	\N
11523	1	1	cup slices	140	\N	\N
11525	1	1	cup slices	125	\N	\N
11526	1	1	cup slices	137	\N	\N
11527	1	1	cup	180	\N	\N
11527	2	1	large	182	\N	\N
11527	3	1	medium	123	\N	\N
11527	4	1	slice or wedge	20	\N	\N
11527	5	1	small	91	\N	\N
11529	1	1	cup cherry tomatoes	149	\N	\N
11529	2	1	cup, chopped or sliced	180	\N	\N
11529	3	1	Italian tomato	62	\N	\N
11529	4	1	cherry	17	\N	\N
11529	5	1	large whole (3"" dia)	182	\N	\N
11529	6	1	medium whole (2-3/5"" dia)	123	\N	\N
11529	7	1	slice, medium (1/4"" thick)	20	\N	\N
11529	8	1	plum tomato	62	\N	\N
11529	9	1	small whole (2-2/5"" dia)	91	\N	\N
11529	10	1	slice, thick/large (1/2"" thick)	27	\N	\N
11529	11	1	wedge (1/4 of medium tomato)	31	\N	\N
11529	12	1	slice, thin/small	15.0	\N	\N
11529	13	1	NLEA serving	148	\N	\N
11530	1	1	cup	240	\N	\N
11530	2	2	medium	246	\N	\N
11531	1	1	cup	240	\N	\N
11531	2	1	tbsp	15.0	\N	\N
11531	3	1	can	190	\N	\N
11531	4	1	large	164	\N	\N
11531	5	1	medium	111	\N	\N
11531	6	1	small	82	\N	\N
11533	1	1	cup	255	\N	\N
11537	1	1	cup	241	\N	\N
11540	1	1	cup	243	\N	\N
11540	2	6	fl oz	182	\N	\N
11546	1	0.25	cup	66	\N	\N
11546	2	1	cup	262	\N	\N
11546	3	1	tbsp	16	\N	\N
11546	4	1	can (6 oz)	170	\N	\N
11547	1	1	cup	250	\N	\N
11547	2	1	can (29 oz) (401 x 411)	822	\N	\N
11549	1	1	cup	245	\N	\N
11551	1	1	cup	245	\N	\N
11553	1	1	cup	245	\N	\N
11555	1	0.5	cup	122	\N	\N
11555	2	1	can, 15 oz (303 x 406)	425	\N	\N
11557	1	1	cup	250	\N	\N
11557	2	1	can, 15 oz (303 x 406)	411	\N	\N
11559	1	1	cup	244	\N	\N
11559	2	1	can, 15 oz (303 x 406)	425	\N	\N
11563	1	0.5	cup, chopped	71	\N	\N
11563	2	1	frond (6-1/2"" long)	31	\N	\N
11564	1	1	cup, cubes	130	\N	\N
11564	2	1	large	183	\N	\N
11564	3	1	medium	122	\N	\N
11564	4	1	slice	15.0	\N	\N
11564	5	1	small	61	\N	\N
11564	6	0.5	cup, cubes	65	\N	\N
11565	1	1	cup, cubes	156	\N	\N
11565	2	1	cup, mashed	230	\N	\N
11566	1	0.333	package, mashed (10 oz)	94	\N	\N
11566	2	1	package, mashed (10 oz)	284	\N	\N
11567	1	1	cup	156	\N	\N
11568	1	1	cup, chopped	55	\N	\N
11569	1	1	cup, chopped	144	\N	\N
11570	1	0.5	cup	117	\N	\N
11570	2	1	can, 15 oz (303 x 406)	425	\N	\N
11574	1	0.5	cup, chopped or diced	82	\N	\N
11574	2	1	package (10 oz)	284	\N	\N
11575	1	1	cup	164	\N	\N
11575	2	1	package (10 oz) yields	220	\N	\N
11576	1	0.33	package (10 oz)	95	\N	\N
11576	2	1	package (10 oz)	284	\N	\N
11576	3	1	package (3 lb)	1361	\N	\N
11577	1	1	cup	163	\N	\N
11578	1	1	cup	253	20	4.938
11578	2	6	fl oz	182	\N	\N
11579	1	1	cup	245	\N	\N
11581	1	1	cup	163	\N	\N
11583	1	0.33	package (10 oz)	95	\N	\N
11583	2	1	package (10 oz)	284	\N	\N
11583	3	1	pack (2-1/2 lb)	1134	\N	\N
11584	1	0.5	cup	91	\N	\N
11584	2	1	package (10 oz) yields	275	\N	\N
11585	1	1	cup	254	24	5.03
11585	2	6	fl oz	182	\N	\N
11588	1	0.5	cup slices	62	\N	\N
11588	2	4	waterchestnuts	36	\N	\N
11590	1	0.5	cup slices	70	\N	\N
11590	2	4	waterchestnuts	28	\N	\N
11591	1	1	cup, chopped	34	\N	\N
11591	2	1	sprig	2.5	\N	\N
11591	3	10	sprigs	25	\N	\N
11593	1	1	cup, cubes	132	\N	\N
11593	2	1	waxgourd	5700	\N	\N
11594	1	1	cup, cubes	175	\N	\N
11595	1	1	cup slices	44	\N	\N
11595	2	1	pod	16	\N	\N
11596	1	1	cup	62	\N	\N
11601	1	1	cup, cubes	150	\N	\N
11602	1	1	cup, cubes	136	\N	\N
11602	2	0.5	cup, cubes	68	\N	\N
11603	1	1	cup slices	120	\N	\N
11603	2	1	cup	130	\N	\N
11603	3	1	large	1200	\N	\N
11603	4	1	medium	659	\N	\N
11603	5	1	slice	6.0	\N	\N
11603	6	1	small	365	\N	\N
11605	1	1	cup slices	246	\N	\N
11609	1	1	cup slices	227	\N	\N
11613	1	1	cup (1"" pieces)	89	\N	\N
11615	1	1	tbsp	0.2	\N	\N
11615	2	0.25	cup	0.8	\N	\N
11616	1	1	cup, chopped	133	\N	\N
11618	1	1	cup	100	\N	\N
11620	1	1	cup slices	100	\N	\N
11620	2	1	pod (15-1/3"" long)	11.0	\N	\N
11621	1	1	cup slices	118	\N	\N
11622	1	1	cup, chopped	67	\N	\N
11623	1	1	cup, chopped	130	\N	\N
11624	1	1	tbsp	0.2	\N	\N
11624	2	0.25	cup	0.8	\N	\N
11625	1	1	tbsp	0.4	\N	\N
11625	2	0.25	cup	1.4	\N	\N
11626	1	1	cup	125	\N	\N
11632	1	1	cup, chopped	136	\N	\N
11632	2	1	cup, sliced	104	\N	\N
11632	3	1	pepper	22	\N	\N
11634	1	1	tbsp	0.4	\N	\N
11634	2	0.25	cup	1.6	\N	\N
11637	1	0.5	cup slices	50	\N	\N
11637	2	1	radish (7"" long)	17	\N	\N
11640	1	1	tbsp	0.9	\N	\N
11640	2	0.25	cup	3.6	\N	\N
11641	1	1	cup, sliced	113	\N	\N
11641	2	1	large	323	\N	\N
11641	3	1	medium	196	\N	\N
11641	4	1	slice	9.9	\N	\N
11641	5	1	small	118	\N	\N
11642	1	1	cup, sliced	180	\N	\N
11643	1	1	cup, cubes	116	\N	\N
11644	1	1	cup, cubes	205	\N	\N
11645	1	1	cup	228	\N	\N
11645	2	1	can (404 x 307)	638	\N	\N
11647	1	1	cup	196	\N	\N
11649	1	1	cup	244	\N	\N
11649	2	1	can, 15 oz (303 x 406)	425	\N	\N
11655	1	1	cup	236	\N	\N
11655	2	1	fl oz	29.5	\N	\N
11656	1	1	cup	250	\N	\N
11656	2	0.667	cup (#6 scoop)	167	\N	\N
11657	1	1	cup	210	\N	\N
11658	1	1	cup	136	\N	\N
11658	2	1	recipe yield	813	\N	\N
11659	1	1	piece (2-1/2"" x 2"" dia)	105	\N	\N
11660	1	1	cup	101	\N	\N
11660	2	1	recipe yield	604	\N	\N
11667	1	1	cup	112	\N	\N
11667	2	1	tablespoon	7.0	\N	\N
11669	1	2	tbsp (1/8 cup)	10.0	\N	\N
11670	1	1	pepper	45	\N	\N
11670	2	0.5	cup, chopped or diced	75	\N	\N
11671	1	1	cup	194	\N	\N
11671	2	1	recipe yield	1162	\N	\N
11672	1	1	small 2-3/4 in. dia., 5/8 in. thick.	22	\N	\N
11672	2	1	medium 3-1/4 in. x 3-5/8 in., 5/8 in. thick.	37	\N	\N
11674	1	1	NLEA serving	148	\N	\N
11674	2	1	potato large	299	3	0
11674	3	1	potato medium	173	3	0
11674	4	1	potato small	138	3	0
11675	1	1	potato (2-3/4"" dia by 4-3/4"" long)	202	\N	\N
11676	1	1	cup	38	\N	\N
11677	1	1	tbsp chopped	10.0	\N	\N
11683	1	1	cup	74	\N	\N
11693	1	0.5	cup	121	\N	\N
11695	1	1	cup, chopped	158	\N	\N
11695	2	1	tomato	111	\N	\N
11696	1	1	cup, chopped	139	\N	\N
11696	2	1	tomato	212	\N	\N
11697	1	1	cup, sliced	120	\N	\N
11697	2	1	root	33	\N	\N
11698	1	1	cup, chopped	51	\N	\N
11698	2	1	leaf	18	\N	\N
11700	1	1	cup	132	\N	\N
11701	1	1	corm, medium	12.0	\N	\N
11702	1	1	artichoke, medium	120	\N	\N
11702	2	0.5	cup hearts	84	\N	\N
11703	1	1	cup	168	\N	\N
11703	2	1	package (9 oz), yields	240	\N	\N
11703	3	0.333	package (9 oz) yields	80	\N	\N
11705	1	0.5	cup	90	\N	\N
11705	2	4	spears (1/2"" base)	60	\N	\N
11707	1	0.5	cup	122	\N	\N
11707	2	1	can (300 x 407)	411	\N	\N
11709	1	1	cup	180	\N	\N
11709	2	1	package (10 oz) yields	293	\N	\N
11709	3	4	spears	60	\N	\N
11710	1	1	cup	58	\N	\N
11711	1	1	cup (1/2"" pieces)	124	\N	\N
11712	1	1	cup (1/2"" slices)	120	\N	\N
11712	2	1	shoot	144	\N	\N
11714	1	1	cup	170	\N	\N
11715	1	1	cup	248	\N	\N
11715	2	1	can (303 x 406)	454	\N	\N
11716	1	1	cup	180	\N	\N
11716	2	1	package (10 oz) yields	311	\N	\N
11717	1	1	cup	170	\N	\N
11717	2	1	package (10 oz) yields	311	\N	\N
11718	1	1	cup	124	\N	\N
11720	1	0.333	package (10 oz) yields	94	\N	\N
11720	2	1	package (10 oz) yields	284	\N	\N
11722	1	1	cup 1/2"" pieces	100	11	6.222
11722	2	10	beans (4"" long)	55	\N	\N
11723	1	1	cup	125	\N	\N
11724	1	1	cup	125	\N	\N
11725	1	1	cup	125	\N	\N
11726	1	0.5	cup	120	\N	\N
11726	2	1	can (303 x 406)	439	\N	\N
11727	1	0.5	cup	120	\N	\N
11727	2	1	can (303 x 406)	439	\N	\N
11728	1	0.5	cup	120	\N	\N
11728	2	1	can (303 x 406)	439	\N	\N
11729	1	1	cup	153	4	28.092
11729	2	10	beans	62	\N	\N
11729	3	1	can (303 x 406)	262	\N	\N
11730	1	1	cup	121	10	2.526
11730	2	1	package (10 oz)	284	\N	\N
11731	1	1	cup	135	\N	\N
11732	1	1	cup	135	\N	\N
11733	1	1	cup	135	\N	\N
11734	1	0.5	cup slices	85	\N	\N
11734	2	2	beets (2"" dia, sphere)	100	\N	\N
11735	1	1	cup	246	\N	\N
11736	1	1	cup (1"" pieces)	144	\N	\N
11740	1	1	cup flowerets	71	\N	\N
11740	2	1	floweret	11.0	\N	\N
11741	1	1	stalk	114	\N	\N
11742	1	0.5	cup, chopped	78	\N	\N
11742	2	1	stalk, large (11""-12"" long)	280	\N	\N
11742	3	1	stalk, medium (7-1/2"" - 8"" long)	180	\N	\N
11742	4	1	stalk, small (5"" long)	140	\N	\N
11742	5	1	spear (about 5"" long)	37	\N	\N
11743	1	1	cup	184	\N	\N
11744	1	0.5	cup	92	\N	\N
11744	2	1	package (10 oz) yields	250	\N	\N
11745	1	1	sprout	21	\N	\N
11745	2	0.5	cup	78	\N	\N
11746	1	1	cup	155	\N	\N
11747	1	1	cup (1"" pieces)	125	\N	\N
11747	2	1	root	166	\N	\N
11749	1	0.5	cup, shredded	35	\N	\N
11749	2	1	head	908	\N	\N
11750	1	0.5	cup, shredded	35	\N	\N
11750	2	1	head	908	\N	\N
11751	1	0.5	cup, shredded	75	\N	\N
11751	2	1	head	1262	\N	\N
11752	1	1	leaf	22	\N	\N
11752	2	0.5	cup, shredded	75	\N	\N
11753	1	1	cup, shredded	145	\N	\N
11754	1	1	cup, shredded	170	\N	\N
11755	1	1	cup, shredded	119	\N	\N
11755	2	1	leaf	14.0	\N	\N
11757	1	1	tbsp	9.7	\N	\N
11757	2	0.5	cup slices	78	\N	\N
11757	3	1	carrot	46	\N	\N
11758	1	0.5	cup slices	123	\N	\N
11758	2	1	can (303 x 406)	454	\N	\N
11759	1	1	cup, sliced	146	\N	\N
11759	2	1	cup, mashed	228	\N	\N
11759	3	1	slice	2.8	\N	\N
11759	4	1	can (303 x 406)	284	\N	\N
11760	1	1	cup slices	146	\N	\N
11761	1	0.5	cup (1"" pieces)	62	\N	\N
11761	2	3	flowerets	54	\N	\N
11762	1	1	cup (1"" pieces)	180	\N	\N
11763	1	1	cup pieces	155	\N	\N
11764	1	1	cup, diced	150	\N	\N
11764	2	2	stalks	75	\N	\N
11765	1	1	cup, chopped	175	\N	\N
11766	1	1	cup (1"" pieces)	160	\N	\N
11767	1	1	cup (1"" pieces)	100	\N	\N
11768	1	1	cup, chopped	190	\N	\N
11769	1	1	cup, chopped	170	\N	\N
11770	1	1	ear small (5-1/2"" to 6-1/2"" long)	89	\N	\N
11770	2	1	ear medium (6-3/4"" to 7-1/2"" long)	103	\N	\N
11770	3	1	ear large (7-3/4"" to 9"" long)	118	\N	\N
11770	4	1	cup	149	6	5.999
11770	5	1	baby ear	8.0	\N	\N
11770	6	1	ear, yields	77	\N	\N
11771	1	1	cup	256	\N	\N
11771	2	1	can (303 x 406)	482	\N	\N
11772	1	1	cup	256	\N	\N
11772	2	1	can (303 x 406)	482	\N	\N
11773	1	1	cup	210	\N	\N
11773	2	1	can (303 x 406)	340	\N	\N
11774	1	1	cup	165	\N	\N
11774	2	1	package (10 oz) yields	284	\N	\N
11775	1	1	cup kernels	165	\N	\N
11775	2	1	ear, yields	63	\N	\N
11777	1	1	cup	165	\N	\N
11778	1	1	cup	170	\N	\N
11779	1	1	cup	95	\N	\N
11780	1	1	cup, chopped	53	\N	\N
11781	1	1	cup	135	\N	\N
11782	1	1	cup, chopped	105	\N	\N
11783	1	1	cup (1"" cubes)	99	\N	\N
11784	1	1	cup (1"" cubes)	146	\N	\N
11785	1	1	cup (1"" pieces)	178	\N	\N
11785	2	0.5	cup (1"" slices)	89	\N	\N
11786	1	1	cup, chopped	42	\N	\N
11787	1	1	cup slices	118	\N	\N
11788	1	1	cup	87	\N	\N
11789	1	1	cup	87	\N	\N
11790	1	1	cup, chopped	130	\N	\N
11791	1	1	cup, chopped	130	\N	\N
11792	1	1	cup, chopped	130	\N	\N
11793	1	1	cup slices	165	\N	\N
11794	1	1	cup, chopped	180	\N	\N
11795	1	1	leek	124	\N	\N
11795	2	0.25	cup, chopped	26	\N	\N
11796	1	0.5	cup	60	\N	\N
11796	2	10	slices (2-1/2"" dia)	89	\N	\N
11797	1	1	cup pieces	156	\N	\N
11797	2	1	tbsp	9.8	\N	\N
11797	3	1	mushroom	12.0	\N	\N
11798	1	1	cup pieces	145	\N	\N
11798	2	4	mushrooms	72	\N	\N
11799	1	1	cup, chopped	140	1	\N
11800	1	1	cup, chopped or diced	150	\N	\N
11800	2	1	package (10 oz) yields	212	\N	\N
11801	1	1	cup, chopped	180	\N	\N
11802	1	1	cup, chopped	180	\N	\N
11803	1	0.5	cup slices	80	\N	\N
11803	2	8	pods (3"" long)	85	\N	\N
11804	1	0.5	cup slices	92	\N	\N
11804	2	1	package (10 oz) yields	255	\N	\N
11805	1	1	cup	210	\N	\N
11805	2	1	tbsp chopped	15.0	\N	\N
11805	3	1	large	128	\N	\N
11805	4	1	slice large (1/4"" thick)	32	\N	\N
11805	5	1	medium	94	\N	\N
11805	6	1	slice medium (1/8"" thick)	12.0	\N	\N
11805	7	1	small	60	\N	\N
11805	8	1	slice thin	8.0	\N	\N
11806	1	1	tbsp chopped	15.0	\N	\N
11806	2	0.5	cup, chopped or diced	105	\N	\N
11807	1	1	cup	210	\N	\N
11808	1	0.5	cup slices	78	\N	\N
11808	2	1	parsnip (9"" long)	160	\N	\N
11809	1	1	cup	160	\N	\N
11810	1	1	cup	160	\N	\N
11810	2	1	package (10 oz) yields	253	\N	\N
11811	1	1	cup	160	\N	\N
11812	1	0.5	cup	124	\N	\N
11812	2	1	can (303 x 406)	482	\N	\N
11813	1	0.5	cup	85	\N	\N
11813	2	1	can (303 x 406)	313	\N	\N
11814	1	0.5	cup	80	\N	\N
11814	2	1	package (10 oz) yields	253	\N	\N
11816	1	1	cup	255	\N	\N
11817	1	0.5	cup	80	\N	\N
11817	2	1	package (10 oz) yields	278	\N	\N
11818	1	1	cup	180	\N	\N
11819	1	1	pepper	45	\N	\N
11819	2	0.5	cup, chopped or diced	75	\N	\N
11820	1	1	pepper	73	\N	\N
11820	2	0.5	cup, chopped or diced	68	\N	\N
11821	1	1	cup, chopped	149	\N	\N
11821	2	1	cup, sliced	92	\N	\N
11821	3	1	tablespoon	9.3	\N	\N
11821	4	1	large (2-1/4 per pound, approx 3-3/4"" long, 3"" dia.)	164	\N	\N
11821	5	1	medium (approx 2-3/4"" long, 2-1/2 dia.)	119	\N	\N
11821	6	1	small	74	\N	\N
11821	7	1	ring (3"" dia., 1/4"" thick)	10.0	\N	\N
11822	1	1	tbsp	11.6	\N	\N
11822	2	1	pepper	73	\N	\N
11822	3	0.5	cup, chopped	92	\N	\N
11823	1	1	cup, strips	135	\N	\N
11823	2	1	tbsp	11.6	\N	\N
11823	3	0.5	cup, chopped	68	\N	\N
11824	1	1	tbsp	12.0	\N	\N
11824	2	1	pepper	73	\N	\N
11824	3	0.5	cup, chopped	92	\N	\N
11825	1	1	cup, chopped or strips	135	\N	\N
11825	2	1	tablespoon, chopped	11.6	\N	\N
11826	1	1	cup	153	\N	\N
11827	1	1	cup	165	\N	\N
11828	1	0.5	cup	61	\N	\N
11828	2	1	potato large (3"" to 4-1/4"" dia)	299	3	0
11828	3	1	potato medium (2-1/4"" to 3-1/4"" dia)	173	3	0
11828	4	1	potato small (1-3/4"" to 2-1/2"" dia)	138	3	0
11828	5	1	NLEA serving	148	\N	\N
11829	1	0.5	cup	61	\N	\N
11829	2	1	potato (2-1/3"" x 4-3/4"")	156	\N	\N
11830	1	1	skin	58	\N	\N
11831	1	0.5	cup	78	\N	\N
11831	2	1	potato (2-1/2"" dia, sphere)	136	\N	\N
11832	1	1	skin	34	\N	\N
11833	1	0.5	cup	78	\N	\N
11833	2	1	large (3"" to 4-1/4"" dia.)	300	\N	\N
11833	3	1	medium (2-1/4"" to 2-1/4"" dia.)	167	\N	\N
11833	4	1	small (1-3/4"" to 2-1/2"" dia.)	125	\N	\N
11834	1	1	potato (2-1/3"" x 4-3/4"")	202	\N	\N
11835	1	0.5	cup	78	\N	\N
11835	2	1	potato (2-1/3"" x 4-3/4"")	156	\N	\N
11836	1	1	skin	58	\N	\N
11840	1	10	strips	50	\N	\N
11840	2	1	package (9 oz) yields	198	\N	\N
11841	1	10	strip	74	18	48.34
11842	1	10	strips	65	\N	\N
11842	2	1	package (9 oz)	255	\N	\N
11843	1	1	cup	245	\N	\N
11844	1	1	cup	245	\N	\N
11845	1	1	cup, mashed	245	\N	\N
11846	1	1	cup	245	\N	\N
11847	1	1	cup	134	\N	\N
11848	1	1	cup	71	\N	\N
11849	1	1	cup	115	\N	\N
11850	1	1	cup slices	147	\N	\N
11851	1	0.5	cup, mashed	120	\N	\N
11852	1	1	cup slices	135	\N	\N
11853	1	1	cup	180	\N	\N
11854	1	1	cup	180	\N	\N
11855	1	1	cup	234	\N	\N
11856	1	0.5	cup	95	\N	\N
11856	2	1	package (10 oz) yields	220	\N	\N
11857	1	1	cup slices	180	\N	\N
11858	1	1	cup slices	180	\N	\N
11859	1	1	cup slices	192	\N	\N
11860	1	0.5	cup slices	90	\N	\N
11860	2	0.5	cup, mashed	120	\N	\N
11861	1	0.5	cup slices	90	\N	\N
11861	2	0.5	cup, mashed	120	\N	\N
11862	1	1	cup	223	\N	\N
11863	1	1	cup, cubes	205	\N	\N
11864	1	1	cup, cubes	205	\N	\N
11865	1	1	cup, mashed	245	\N	\N
11866	1	1	cup, cubes	205	\N	\N
11867	1	1	cup, mashed	240	\N	\N
11868	1	1	cup, cubes	205	\N	\N
11869	1	1	cup, mashed	236	\N	\N
11870	1	1	cup	155	\N	\N
11871	1	1	cup	192	\N	\N
11872	1	1	cup	170	\N	\N
11873	1	1	cup, chopped	98	\N	\N
11874	1	1	cup	64	\N	\N
11875	1	1	medium (2"" dia, 5"" long, raw)	114	\N	\N
11875	2	0.5	cup, mashed	100	\N	\N
11876	1	1	cup, mashed	328	\N	\N
11876	2	1	medium	151	\N	\N
11877	1	1	cup, cubes	176	\N	\N
11878	1	1	cup slices	132	\N	\N
11879	1	1	cup	145	\N	\N
11880	1	1	cup slices	140	\N	\N
11881	1	1	cup slices	137	\N	\N
11884	1	1	cup	240	\N	\N
11884	2	0.5	cup	120	\N	\N
11884	3	1	NLEA serving	121	\N	\N
11885	1	1	cup	240	\N	\N
11885	2	1	tbsp	15.0	\N	\N
11885	3	1	can	190	\N	\N
11885	4	1	large	164	\N	\N
11885	5	1	medium	111	\N	\N
11885	6	1	small	82	\N	\N
11885	7	0.5	cup	120	\N	\N
11886	1	1	cup	243	\N	\N
11886	2	1	fl oz	30.4	\N	\N
11886	3	6	fl oz	182	\N	\N
11888	1	1	cup	250	\N	\N
11888	2	1	can (29 oz) (401 x 411)	822	\N	\N
11889	1	1	cup, cubes	156	\N	\N
11889	2	1	cup, mashed	230	\N	\N
11890	1	1	cup	156	\N	\N
11891	1	1	cup, chopped	144	\N	\N
11892	1	0.5	cup	82	\N	\N
11892	2	1	package (10 oz) yields	220	\N	\N
11893	1	1	cup	163	\N	\N
11893	2	0.5	cup	86	\N	\N
11894	1	0.5	cup	91	\N	\N
11894	2	1	package (10 oz) yields	275	\N	\N
11895	1	1	cup, cubes	175	\N	\N
11896	1	1	cup	62	\N	\N
11896	2	0.5	cup	31	\N	\N
11897	1	1	cup, cubes	136	\N	\N
11897	2	0.5	cup, cubes	68	\N	\N
11899	1	1	cup slices	104	\N	\N
11899	2	1	pod	14.0	\N	\N
11900	1	1	ear, small (5-1/2"" to 6-1/2"" long)	73	\N	\N
11900	2	1	ear, medium (6-3/4"" to 7-1/2"" long)	90	\N	\N
11900	3	1	ear, large (7-3/4"" to 9"" long)	143	\N	\N
11900	4	1	cup kernels	154	\N	\N
11901	1	1	ear, small (5-1/2"" to 6-1/2"" long)	89	\N	\N
11901	2	1	ear, medium (6-3/4"" to 7-1/2"" long)	103	\N	\N
11901	3	1	ear, large (7-3/4"" to 9"" long)	116	\N	\N
11901	4	1	cup cut	157	7	8.875
11901	5	1	ear, yields	77	\N	\N
11902	1	1	ear, small (5-1/2"" to 6-1/2"" long)	89	\N	\N
11902	2	1	ear, medium (6-3/4"" to 7-1/2"" long)	103	\N	\N
11902	3	1	ear, large (7-3/4"" to 9"" long)	118	\N	\N
11902	4	1	cup cut	157	7	8.875
11902	5	1	ear, yields	77	\N	\N
11903	1	1	cup	256	\N	\N
11903	2	1	can (303 x 406)	482	\N	\N
11904	1	1	cup	256	\N	\N
11904	2	1	can (303 x 406)	482	\N	\N
11905	1	1	cup	164	\N	\N
11905	2	1	can (303 x 406)	298	\N	\N
11906	1	1	cup	256	\N	\N
11906	2	1	can (303 x 406)	482	\N	\N
11907	1	1	cup	256	\N	\N
11907	2	1	can (303 x 406)	482	\N	\N
11908	1	1	cup	210	\N	\N
11908	2	1	can (303 x 406)	340	\N	\N
11909	1	1	cup	210	\N	\N
11909	2	1	can (303 x 406)	340	\N	\N
11910	1	1	cup	165	\N	\N
11910	2	1	package (10 oz)	284	\N	\N
11911	1	1	cup	165	\N	\N
11911	2	1	package (10 oz) yields	284	\N	\N
11912	1	1	cup	165	\N	\N
11912	2	1	package (10 oz) yields	284	\N	\N
11913	1	1	cup kernels	165	\N	\N
11913	2	1	ear, yields	125	\N	\N
11914	1	1	cup kernels	165	\N	\N
11914	2	1	ear, yields	63	\N	\N
11915	1	1	cup kernels	165	\N	\N
11915	2	1	ear, yields	63	\N	\N
11916	1	1	cup, halves	140	\N	\N
11916	2	0.5	cup, halves	70	\N	\N
11917	1	0.33	package (10 oz)	95	\N	\N
11917	2	1	package (10 oz)	284	\N	\N
11918	1	1	cup, chopped or strips	135	\N	\N
11918	2	1	tablespoon, chopped	11.6	\N	\N
11919	1	1	cup, chopped or strips	135	\N	\N
11919	2	1	tablespoon, chopped	11.6	\N	\N
11921	1	1	cup chopped	106	4	7.33
11922	1	1	cup	104	\N	\N
11923	1	1	cup	94	\N	\N
11927	1	1	cup, cubes	145	\N	\N
11928	1	1	frond (6-1/2"" long)	31	\N	\N
11928	2	0.5	cup, chopped or diced	71	\N	\N
11929	1	1	cup	210	\N	\N
11930	1	1	cup	210	\N	\N
11931	1	1	tbsp	0.4	\N	\N
11931	2	0.25	cup	1.6	\N	\N
11932	1	1	cup	153	4	28.092
11932	2	10	beans	62	\N	\N
11932	3	1	can (303 x 406)	262	\N	\N
11933	1	1	cup	153	4	28.092
11933	2	10	beans	62	1	\N
11933	3	1	can (303 x 406)	262	\N	\N
11934	1	1	cup	210	\N	\N
11935	1	1	tbsp	17	36	1.486
11935	2	1	packet	9.0	\N	\N
11935	3	1	cup	240	\N	\N
11936	1	1	cup whole	87	4	0.963
11936	2	1	cup sliced	72	4	3.008
11936	3	1	piece whole	20	30	6.355
11937	1	1	spear, small	35	11	8.895
11937	2	1	slice	7.0	\N	\N
11937	3	1	large (4"" long)	135	\N	\N
11937	4	1	cup, chopped or diced	143	\N	\N
11937	5	1	cup (about 23 slices)	155	\N	\N
11938	1	1	cup pieces or slices	70	\N	\N
11938	2	1	cup whole	96	\N	\N
11938	3	1	large	23	\N	\N
11938	4	1	slice	6.0	\N	\N
11938	5	1	medium	18	\N	\N
11938	6	1	small	10.0	\N	\N
11939	1	1	cup sliced	121	3	8.69
11940	1	1	cup, chopped	160	\N	\N
11940	2	1	cup sliced or chips	153	12	10.227
11940	3	1	large Gherkin (3"" long)	35	\N	\N
11940	4	1	Gherkin (2-3/4"" long)	25	\N	\N
11940	5	1	midget Gherkin (2-1/8"" long)	6.0	\N	\N
11940	6	1	chip	7.5	12	2.601
11940	7	1	small Gherkin (2-1/2"" long)	15.0	\N	\N
11940	8	1	spear Gherkin	20	\N	\N
11941	1	1	cup	155	\N	\N
11941	2	1	large (4"" long)	135	\N	\N
11941	3	1	medium (3-3/4"" long)	65	\N	\N
11941	4	1	slice	7.0	\N	\N
11941	5	1	small	37	\N	\N
11941	6	1	spear	30	\N	\N
11943	1	1	tbsp	12.0	\N	\N
11943	2	1	cup	192	\N	\N
11943	3	1	slice	1.0	\N	\N
11943	4	1	pimiento, whole	66	\N	\N
11944	1	1	tbsp	15.0	\N	\N
11944	2	0.5	cup	122	\N	\N
11945	1	1	tbsp	15.0	\N	\N
11945	2	1	packet (2/3 tbsp)	10.0	\N	\N
11945	3	1	cup	245	\N	\N
11946	1	1	cup, chopped or diced	143	\N	\N
11946	2	1	cup (about 23 slices)	155	\N	\N
11946	3	1	large (4"" long)	135	\N	\N
11946	4	1	medium (3-3/4"" long)	65	\N	\N
11946	5	1	slice	6.0	\N	\N
11946	6	1	small	37	\N	\N
11946	7	1	spear	30	\N	\N
11947	1	1	spear, small	35	11	8.895
11947	2	1	slice	7.0	\N	\N
11947	3	1	large (4"" long)	135	\N	\N
11947	4	1	cup, chopped or diced	143	\N	\N
11947	5	1	cup, (about 23 slices)	155	\N	\N
11948	1	1	slice	6.0	\N	\N
11948	2	1	medium	35	\N	\N
11948	3	1	small	15.0	\N	\N
11948	4	1	large	35	\N	\N
11948	5	1	cup, sliced	170	\N	\N
11948	6	1	cup, chopped or diced	160	\N	\N
11949	1	1	tbsp	17	36	1.486
11949	2	1	packet	9.0	\N	\N
11949	3	1	cup	240	\N	\N
11950	1	1	large	5.0	\N	\N
11950	2	1	medium	3.0	\N	\N
11950	3	1	cup whole	64	4	25.365
11950	4	1	cup sliced	65	4	19.157
11951	1	1	pepper, large (3-3/4"" long, 3"" dia)	186	\N	\N
11951	2	10	strips	52	\N	\N
11952	1	1	cup, shredded	40	\N	\N
11952	2	1	leaf	8.0	\N	\N
11953	1	1	large	16	\N	\N
11953	2	1	medium	11.0	\N	\N
11954	1	1	medium	34	\N	\N
11954	2	0.5	cup, chopped or diced	66	\N	\N
11955	1	1	cup	54	\N	\N
11955	2	1	piece	2.0	\N	\N
11956	1	1	cup	110	\N	\N
11956	2	1	piece	3.0	\N	\N
11957	1	1	cup, sliced	87	\N	\N
11957	2	1	bulb	234	\N	\N
11958	1	1	tbsp	15.0	\N	\N
11958	2	0.5	cup	122	\N	\N
11959	1	1	leaf	2.0	\N	\N
11959	2	0.5	cup	10.0	\N	\N
11960	1	1	large	15.0	\N	\N
11960	2	1	medium	10.0	\N	\N
11960	3	1	NLEA serving	85	\N	\N
11961	1	1	cup	146	\N	\N
11961	2	1	piece	33	\N	\N
11962	1	1	cup	37	\N	\N
11962	2	1	pepper	0.5	\N	\N
11963	1	1	cup, sliced	86	\N	\N
11964	1	1	cup	149	\N	\N
11964	2	1	pad	29	\N	\N
11965	1	1	cup	64	\N	\N
11965	2	1	floweret	25	\N	\N
11965	3	1	head, large (6-7"" dia)	511	\N	\N
11965	4	1	head, medium (5-6"" dia)	431	\N	\N
11965	5	1	head, small (4"" dia)	325	\N	\N
11967	1	0.2	head	90	\N	\N
11968	1	0.5	cup (1"" pieces)	62	\N	\N
11969	1	1	cup	88	\N	\N
11970	1	1	cup	109	\N	\N
11972	1	1	cup	67	\N	\N
11972	2	1	tbsp	4.8	\N	\N
11973	1	1	cup	126	\N	\N
11973	2	1	pod	6.1	\N	\N
11974	1	1	cup	14.0	\N	\N
11974	2	1	leaf	3.0	\N	\N
11975	1	1	leaf	4.0	\N	\N
11976	1	1	cup	124	\N	\N
11976	2	1	small (4"" long)	33	\N	\N
11976	3	1	medium (4-1/2"" long)	46	\N	\N
11976	4	1	large (5"" long)	75	\N	\N
11977	1	1	cup, chopped	105	\N	\N
11977	2	1	pepper	6.1	\N	\N
11978	1	1	pepper	17	\N	\N
11979	1	1	cup, sliced	90	\N	\N
11979	2	1	pepper	14.0	\N	\N
11980	1	1	cup	139	\N	\N
11981	1	1	pepper	27	\N	\N
11982	1	1	pepper	7.0	\N	\N
11983	1	1	cup	245	\N	\N
11984	1	1	tbsp	0.8	\N	\N
11984	2	1	sprig	2.0	\N	\N
11985	1	1	cup, chopped	23	\N	\N
11985	2	1	plant	22	\N	\N
11986	1	1	cup	44	\N	\N
11986	2	1	bunch	17	\N	\N
11987	1	1	large	148	\N	\N
11987	2	1	small	15.0	\N	\N
11987	3	1	cup sliced	86	2	\N
11988	1	1	cup	28	\N	\N
11988	2	1	piece	4.5	\N	\N
11989	1	1	cup	182	\N	\N
11989	2	1	piece	5.5	\N	\N
11990	1	1	cup, sliced	130	\N	\N
11990	2	1	root	169	\N	\N
11991	1	1	cup, sliced	135	\N	\N
11991	2	1	root	305	\N	\N
11993	1	1	cup diced	70	2	\N
11993	2	1	piece whole	1.1	20	0.936
11998	1	1	cup diced	86	2	\N
11998	2	1	piece whole	84	20	26.751
12001	1	1	oz	28.35	\N	\N
12003	1	1	oz	28.35	\N	\N
12004	1	1	oz (8-14 seeds)	28.35	\N	\N
12005	1	1	cup	160	\N	\N
12005	2	1	oz	28.35	\N	\N
12006	1	1	oz	28.35	\N	\N
12007	1	1	cup	94	\N	\N
12007	2	1	tbsp	5.0	\N	\N
12008	1	1	oz	28.35	\N	\N
12011	1	1	oz	28.35	\N	\N
12012	1	3	tbsp	30	1	\N
12013	1	1	cup	32	\N	\N
12013	2	1	oz (42 medium seeds)	28.35	\N	\N
12014	1	1	cup	129	3	5.076
12014	2	1	oz	28.35	\N	\N
12016	1	1	cup	118	\N	\N
12016	2	1	oz	28.35	\N	\N
12021	1	1	oz	28.35	\N	\N
12022	1	1	oz	28.35	\N	\N
12023	1	1	cup	144	\N	\N
12023	2	1	tbsp	9.0	\N	\N
12024	1	1	oz	28.35	\N	\N
12029	1	1	cup	128	\N	\N
12029	2	1	oz	28.35	\N	\N
12032	1	1	oz	28.35	\N	\N
12033	1	1	oz	28.35	\N	\N
12034	1	1	oz	28.35	\N	\N
12036	1	1	cup, with hulls, edible yield	46	\N	\N
12036	2	1	cup	140	6	2.57
12037	1	1	cup	128	\N	\N
12037	2	1	oz	28.35	\N	\N
12038	1	1	cup	135	\N	\N
12038	2	1	oz	28.35	\N	\N
12039	1	1	cup	134	\N	\N
12039	2	1	oz	28.35	\N	\N
12040	1	1	tbsp	16	9	0.981
12040	2	1	oz	28.35	\N	\N
12041	1	1	cup	64	\N	\N
12041	2	1	tbsp	4.0	\N	\N
12058	1	1	oz	28.35	\N	\N
12059	1	1	oz	28.35	\N	\N
12060	1	1	oz	28.35	\N	\N
12061	1	1	cup, whole	143	23	6.098
12061	2	1	cup, sliced	92	4	32.082
12061	3	1	cup, slivered	108	\N	\N
12061	4	1	cup, ground	95	\N	\N
12061	5	1	oz (23 whole kernels)	28.35	\N	\N
12061	6	1	almond	1.2	\N	\N
12062	1	1	cup whole kernels	145	\N	\N
12062	2	1	tbsp	9.1	\N	\N
12062	3	1	oz	28.35	\N	\N
12063	1	1	cup whole kernels	138	\N	\N
12063	2	1	oz (22 whole kernels)	28.35	\N	\N
12065	1	1	cup whole kernels	157	\N	\N
12065	2	1	oz (22 whole kernels)	28.35	\N	\N
12071	1	1	oz	28.35	\N	\N
12071	2	1	cup, firmly packed	227	\N	\N
12077	1	1	oz	28.35	\N	\N
12078	1	1	cup, whole	133	15	7.701
12078	2	1	kernel	5.0	59	1.295
12078	3	1	oz (6 kernels)	28.35	\N	\N
12084	1	1	cup	120	\N	\N
12084	2	1	oz	28.35	\N	\N
12084	3	1	nutmeat	3.0	\N	\N
12085	1	1	cup, halves and whole	137	\N	\N
12085	2	1	tbsp	8.6	\N	\N
12085	3	1	oz	28.35	\N	\N
12086	1	1	cup, whole	129	24	6.829
12086	2	1	cup, halves and pieces	129	21	5.867
12086	3	1	oz (18 kernels)	28.35	\N	\N
12087	1	1	oz	28.35	\N	\N
12088	1	1	tbsp	16	\N	\N
12088	2	1	oz	28.35	\N	\N
12093	1	1	oz	28.35	\N	\N
12094	1	1	oz	28.35	\N	\N
12095	1	1	oz	28.35	\N	\N
12096	1	1	oz	28.35	\N	\N
12097	1	1	cup	145	\N	\N
12097	2	1	oz	28.35	\N	\N
12098	1	1	oz	28.35	\N	\N
12099	1	1	oz	28.35	\N	\N
12100	1	1	oz	28.35	\N	\N
12101	1	1	oz	28.35	\N	\N
12104	1	1	cup, shredded	80	\N	\N
12104	2	1	medium	397	\N	\N
12104	3	1	piece (2"" x 2"" x 1/2"")	45	\N	\N
12108	1	1	oz	28.35	\N	\N
12109	1	1	cup	85	9	13.358
12109	2	1	oz	28.35	\N	\N
12110	1	1	cup	77	\N	\N
12110	2	4	oz	114	\N	\N
12114	1	1	oz	28.35	\N	\N
12115	1	1	tbsp	15.0	\N	\N
12115	2	1	cup	240	\N	\N
12116	1	1	tbsp	19	\N	\N
12116	2	1	cup	296	\N	\N
12117	1	1	cup	240	\N	\N
12117	2	1	tbsp	15.0	\N	\N
12118	1	1	cup	226	\N	\N
12118	2	1	tbsp	15.0	\N	\N
12119	1	1	cup	240	\N	\N
12119	2	1	tbsp	15.0	\N	\N
12119	3	1	coconut yields	206	\N	\N
12120	1	1	cup, chopped	115	\N	\N
12120	2	1	cup, ground	75	\N	\N
12120	3	1	cup, whole	135	\N	\N
12120	4	1	oz (21 whole kernels)	28.35	\N	\N
12120	5	10	nuts	14.0	\N	\N
12121	1	1	oz	28.35	\N	\N
12122	1	1	oz	28.35	\N	\N
12127	1	1	oz	28.35	\N	\N
12128	1	1	oz	28.35	\N	\N
12129	1	1	cup (78 kernels)	155	\N	\N
12129	2	1	oz (14 kernels)	28.35	\N	\N
12130	1	1	cup	120	\N	\N
12130	2	1	oz	28.35	\N	\N
12130	3	1	nut	3.0	\N	\N
12131	1	1	cup, whole or halves	134	\N	\N
12131	2	1	oz (10-12 kernels)	28.35	\N	\N
12132	1	1	cup, whole or halves	132	24	5.779
12132	2	1	oz (10-12 kernels)	28.35	\N	\N
12135	1	1	cup	131	1	\N
12135	2	1	oz	28.35	\N	\N
12136	1	1	cup	147	4	0.618
12137	1	1	cup	134	10	4.982
12137	2	1	oz	28.35	\N	\N
12138	1	1	cup	144	\N	\N
12138	2	1	oz	28.35	\N	\N
12140	1	1	oz	28.35	\N	\N
12141	1	1	cup	132	\N	\N
12142	1	1	cup, chopped	109	24	6.18
12142	2	1	cup, halves	99	18	4.192
12142	3	1	oz (19 halves)	28.35	\N	\N
12143	1	1	oz	28.35	\N	\N
12144	1	1	cup	110	\N	\N
12144	2	1	oz (15 halves)	28.35	\N	\N
12145	1	1	cup	120	\N	\N
12145	2	1	oz (15 kernels)	28.35	\N	\N
12147	1	1	cup	135	24	4.617
12147	2	1	oz (167 kernels)	28.35	\N	\N
12147	3	10	nuts	1.7	\N	\N
12149	1	1	oz	28.35	\N	\N
12149	2	10	nuts	1.0	\N	\N
12151	1	1	cup	123	\N	\N
12151	2	1	oz (49 kernels)	28.35	\N	\N
12151	3	1	kernel	0.7	\N	\N
12152	1	1	cup	123	24	8.47
12152	2	1	oz (49 kernels)	28.35	\N	\N
12152	3	1	kernel	0.7	82	0.141
12154	1	1	cup, chopped	125	\N	\N
12154	2	1	tbsp	7.8	\N	\N
12154	3	1	oz	28.35	\N	\N
12155	1	1	cup, chopped	117	12	\N
12155	2	1	cup, ground	80	\N	\N
12155	3	1	cup, in shell, edible yield (7 nuts)	28	\N	\N
12155	4	1	cup shelled (50 halves)	100	\N	\N
12155	5	1	cup pieces or chips	120	\N	\N
12155	6	1	oz (14 halves)	28.35	\N	\N
12156	1	1	oz	28	1	\N
12157	1	1	oz	28	1	\N
12158	1	1	oz	28.35	\N	\N
12160	1	1	cup	149	\N	\N
12160	2	1	tbsp	10.0	\N	\N
12163	1	1	cup	64	\N	\N
12163	2	1	oz (85 seeds)	28.35	\N	\N
12166	1	1	tbsp	15.0	\N	\N
12166	2	1	oz	28.35	\N	\N
12167	1	1	cup	143	\N	\N
12167	2	1	oz	28.35	\N	\N
12167	3	10	kernels	84	\N	\N
12169	1	1	tbsp	16	\N	\N
12170	1	1	oz	28.35	\N	\N
12171	1	1	tbsp	14.0	\N	\N
12171	2	1	oz	28.35	\N	\N
12174	1	1	cup	108	\N	\N
12174	2	1	oz	28.35	\N	\N
12175	1	1	cup	155	\N	\N
12175	2	1	oz	28.35	\N	\N
12176	1	1	cup	240	\N	\N
12176	2	1	tbsp	15.0	\N	\N
12177	1	1	oz	28.35	\N	\N
12179	1	1	cup, shredded	93	\N	\N
12179	2	1	package (7 oz)	199	\N	\N
12193	1	1	cup	74	\N	\N
12193	2	1	oz	28.35	\N	\N
12195	1	1	tbsp	16	\N	\N
12195	2	1	cup	250	\N	\N
12198	1	1	tbsp	15.0	\N	\N
12198	2	1	oz	28.35	\N	\N
12200	1	1	oz	28.35	\N	\N
12201	1	1	cup	150	\N	\N
12201	2	1	tbsp	8.0	\N	\N
12201	3	1	tsp	2.7	\N	\N
12202	1	1	oz	28.35	\N	\N
12203	1	1	oz	28.35	\N	\N
12204	1	1	oz	28.35	\N	\N
12205	1	1	oz	28.35	\N	\N
12206	1	1	cup whole kernels	144	\N	\N
12206	2	1	oz	28.35	\N	\N
12220	1	1	tbsp, whole	10.3	6	\N
12220	2	1	cup, whole	168	9	\N
12220	3	1	tbsp, ground	7.0	6	\N
12220	4	1	tsp, whole	3.4	\N	\N
12220	5	1	tsp, ground	2.5	\N	\N
12516	1	1	cup	118	\N	\N
12516	2	1	oz	28.35	\N	\N
12529	1	1	cup	128	\N	\N
12529	2	1	oz	28.35	\N	\N
12536	1	1	cup	128	\N	\N
12536	2	1	oz	28.35	\N	\N
12536	3	1	package (1.875 oz) yields	27	1	\N
12537	1	1	cup	128	\N	\N
12537	2	1	oz	28.35	\N	\N
12538	1	1	cup	135	\N	\N
12538	2	1	oz	28.35	\N	\N
12539	1	1	cup	134	\N	\N
12539	2	1	oz	28.35	\N	\N
12540	1	1	tbsp	16	9	0.981
12540	2	1	oz	28.35	\N	\N
12563	1	1	cup whole kernels	138	\N	\N
12563	2	1	oz (22 whole kernels)	28.35	\N	\N
12565	1	1	cup whole kernels	157	\N	\N
12565	2	1	oz (22 whole kernels)	28.35	\N	\N
12567	1	1	oz (28 almonds)	28	1	\N
12585	1	1	cup, halves and whole	137	\N	\N
12585	2	1	oz	28.35	\N	\N
12586	1	1	cup, whole	129	24	6.829
12586	2	1	cup, halves and pieces	129	21	5.867
12586	3	1	oz (18 kernels)	28.35	\N	\N
12588	1	1	tbsp	16	\N	\N
12588	2	1	oz	28.35	\N	\N
12632	1	1	cup, whole or halves	132	24	5.779
12632	2	1	oz (10-12 kernels)	28.35	\N	\N
12635	1	1	cup	137	\N	\N
12635	2	1	oz	28.35	\N	\N
12637	1	1	cup	134	10	4.982
12637	2	1	oz	28.35	\N	\N
12637	3	10	nuts, assorted	14.0	\N	\N
12638	1	1	cup	144	\N	\N
12638	2	1	oz	28.35	\N	\N
12643	1	1	oz	28.35	\N	\N
12644	1	1	cup	110	\N	\N
12644	2	1	oz (15 halves)	28.35	\N	\N
12652	1	1	cup	123	24	8.47
12652	2	1	oz (49 kernels)	28.35	\N	\N
12652	3	1	kernel	0.7	82	0.141
12663	1	1	cup	64	\N	\N
12663	2	1	oz (85 seeds)	28.35	\N	\N
12665	1	1	cup whole kernels	157	\N	\N
12665	2	1	oz (22 whole kernels)	28.35	\N	\N
12695	1	1	tbsp	16	\N	\N
12695	2	1	cup	250	\N	\N
12698	1	1	tbsp	15.0	\N	\N
12737	1	1	oz	28.35	0	\N
12738	1	1	oz	28.35	1	\N
13000	1	3	oz	85	\N	\N
13000	2	1	steak	214	212	\N
13001	1	1	oz	28.35	\N	\N
13001	2	1	lb	453.6	\N	\N
13002	1	1	oz	28.35	\N	\N
13002	2	1	lb	453.6	\N	\N
13019	1	1	oz	28.35	\N	\N
13019	2	4	oz	113	\N	\N
13020	1	1	oz	28.35	\N	\N
13020	2	3	oz	85	\N	\N
13023	1	1	oz	28.35	\N	\N
13023	2	1	lb	453.6	\N	\N
13047	1	1	serving	85	\N	\N
13055	1	3	oz	85	\N	\N
13055	2	1	steak	350	10	\N
13065	1	1	oz	28.35	\N	\N
13065	2	4	oz	113	\N	\N
13065	3	1	steak	202	10	\N
13066	1	3	oz	85	\N	\N
13066	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	262	\N	\N
13067	1	3	oz	85	\N	\N
13067	2	1	steak (yield from 483 g raw meat)	387	10	\N
13068	1	1	oz	28.35	\N	\N
13068	2	1	steak	202	10	\N
13069	1	3	oz	85	\N	\N
13069	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	246	\N	\N
13070	1	3	oz	85	\N	\N
13070	2	1	steak	387	10	\N
13095	1	1	oz	28.35	\N	\N
13095	2	1	lb	453.6	\N	\N
13096	1	3	oz	85	\N	\N
13096	2	1	steak (yield from 297 g raw meat)	236	10	\N
13097	1	1	oz	28.35	\N	\N
13097	2	1	lb	453.6	\N	\N
13098	1	3	oz	85	\N	\N
13098	2	1	steak (yield from 297g raw meat)	236	10	\N
13147	1	1	oz	28.35	\N	\N
13147	2	1	lb	453.6	\N	\N
13148	1	3	oz	85	\N	\N
13148	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	225	\N	\N
13149	1	1	oz	28.35	\N	\N
13149	2	1	lb	453.6	\N	\N
13150	1	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	121	\N	\N
13150	2	3	oz	85	\N	\N
13156	1	3	oz	85	\N	\N
13156	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	285	\N	\N
13158	1	3	oz	85	\N	\N
13158	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	282	\N	\N
13165	1	3	oz	85	\N	\N
13165	2	1	steak (Yield from 448 g raw meat)	293	10	\N
13166	1	1	serving	45	6	2.356
13166	2	1	can	801	3	8.945
13227	1	1	oz	28.35	\N	\N
13227	2	1	lb	453.6	\N	\N
13228	1	3	oz	85	\N	\N
13228	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	170	\N	\N
13231	1	3	oz	85	\N	\N
13231	2	1	steak	539	24	29.849
13232	1	3	oz	85	\N	\N
13232	2	1	steak	417	24	30.685
13235	1	3	oz	85	\N	\N
13235	2	1	steak	461	24	30.173
13236	1	3	oz	85	1	\N
13236	2	1	steak	360	24	28.858
13284	1	3	oz	85	\N	\N
13285	1	3	oz	85	\N	\N
13285	2	1	roast	647	11	103.2
13293	1	3	oz	85	\N	\N
13293	2	1	steak	679	11	\N
13293	3	1	roast	960	11	\N
13294	1	3	oz	85	\N	\N
13294	2	1	steak	648	7	\N
13294	3	1	roast	949	7	\N
13317	1	3	oz	85	\N	\N
13317	2	1	unit, cooked (yield from 1 lb raw meat)	313	\N	\N
13318	1	1	oz	28.35	\N	\N
13318	2	4	oz	113	\N	\N
13319	1	3	oz	85	\N	\N
13319	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	351	\N	\N
13320	1	3	oz	85	\N	\N
13320	2	1	piece, cooked, excluding refuse	391	1	\N
13321	1	1	oz	28.35	\N	\N
13321	2	4	oz	113	\N	\N
13322	1	3	oz	85	\N	\N
13323	1	1	oz	28.35	\N	\N
13323	2	4	oz	113	\N	\N
13324	1	3	oz	85	\N	\N
13325	1	3	oz	85	\N	\N
13326	1	1	slice	68	14	12.558
13327	1	1	slice	81	15	\N
13328	1	1	oz	28.35	\N	\N
13328	2	4	oz	113	\N	\N
13329	1	3	oz	85	\N	\N
13329	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	303	\N	\N
13330	1	1	oz	28.35	\N	\N
13330	2	8	oz	227	\N	\N
13331	1	1	oz	28.35	\N	\N
13331	2	4	oz	113	\N	\N
13332	1	3	oz	85	\N	\N
13332	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	222	\N	\N
13333	1	1	oz	28.35	\N	\N
13333	2	4	oz	113	\N	\N
13334	1	3	oz	85	\N	\N
13334	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	308	\N	\N
13335	1	1	oz	28.35	\N	\N
13335	2	4	oz	113	\N	\N
13337	1	1	oz	28.35	\N	\N
13337	2	4	oz	113	\N	\N
13338	1	3	oz	85	\N	\N
13338	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	381	\N	\N
13339	1	1	oz	28.35	\N	\N
13339	2	4	oz	113	\N	\N
13340	1	3	oz	85	\N	\N
13341	1	1	oz	28.35	\N	\N
13341	2	4	oz	113	\N	\N
13342	1	3	oz	85	\N	\N
13342	2	1	steak	56	\N	\N
13342	3	1	package	396	\N	\N
13343	1	3	oz	85	\N	\N
13343	2	1	steak	293	10	\N
13344	1	3	slices	68	\N	\N
13344	2	1	package (net weight, 12 oz)	340	\N	\N
13345	1	3	slices	34	\N	\N
13345	2	1	package, cooked (yield from 12 oz raw product)	170	\N	\N
13346	1	1	oz	28.35	\N	\N
13346	2	1	lb	453.6	\N	\N
13347	1	3	oz	85	\N	\N
13347	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	320	\N	\N
13348	1	1	oz	28.35	\N	\N
13348	2	1	slice (3/4 oz)	21	\N	\N
13349	1	3	oz	85	\N	\N
13349	2	1	steak	732	4	\N
13349	3	1	roast	977	4	\N
13350	1	10	slices	28	1	\N
13351	1	3	oz	85	\N	\N
13351	2	1	steak	353	26	74.7
13352	1	3	oz	85	\N	\N
13352	2	1	steak	356	17	74.2
13353	1	1	slice (1 oz) (4"" x 4"" x 3/32"" thick)	28	\N	\N
13354	1	3	oz	85	\N	\N
13354	2	1	steak	349	9	80.3
13355	1	1	package, 2.5 oz	71	1	\N
13355	2	1	slice (1 oz)	28	\N	\N
13356	1	3	oz	85	\N	\N
13356	2	1	steak	473	26	\N
13357	1	1	sausage	43	\N	\N
13357	2	1	oz	28.35	\N	\N
13358	1	1	slice (1 oz)	28	\N	\N
13359	1	3	oz	85	\N	\N
13359	2	1	steak	483	17	\N
13361	1	3	oz	85	\N	\N
13362	1	3	oz	85	\N	\N
13363	1	3	oz	85	\N	\N
13364	1	3	oz	85	\N	\N
13365	1	3	oz	85	\N	\N
13366	1	3	oz	85	\N	\N
13367	1	3	oz	85	\N	\N
13367	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	314	\N	\N
13368	1	3	oz	85	\N	\N
13368	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	264	\N	\N
13369	1	3	oz	85	\N	\N
13369	2	1	steak (Yield from 418 g raw meat)	270	20	\N
13370	1	3	oz	85	\N	\N
13370	2	1	steak (yield from 418g raw meat)	270	20	\N
13371	1	3	oz	85	\N	\N
13371	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	314	\N	\N
13372	1	3	oz	85	\N	\N
13372	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	232	\N	\N
13373	1	3	oz	85	\N	\N
13373	2	1	roast (yield from 1601 g raw meat)	1166	20	\N
13375	1	3	oz	85	\N	\N
13375	2	1	roast (yield from 1675 g raw meat)	1236	10	\N
13377	1	3	oz	85	\N	\N
13377	2	1	roast (yield from 1528g raw meat)	1095	10	\N
13378	1	3	oz	85	\N	\N
13378	2	1	roast (yield from 1675 g raw meat)	1236	10	\N
13379	1	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	235	\N	\N
13379	2	3	oz	85	\N	\N
13380	1	3	oz	85	\N	\N
13380	2	1	roast	658	7	113.9
13381	1	3	oz	85	\N	\N
13381	2	1	roast	629	4	94.1
13382	1	3	oz	85	\N	\N
13382	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	191	\N	\N
13383	1	3	oz	85	\N	\N
13383	2	1	roast	658	7	113.9
13384	1	3	oz	85	\N	\N
13384	2	1	roast	629	4	94.1
13386	1	3	oz	85	\N	\N
13386	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	290	\N	\N
13387	1	3	oz	85	\N	\N
13387	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	286	\N	\N
13388	1	3	oz	85	\N	\N
13388	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	214	\N	\N
13389	1	3	oz	85	\N	\N
13389	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	207	\N	\N
13390	1	3	oz	85	\N	\N
13390	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	217	\N	\N
13391	1	3	oz	85	\N	\N
13391	2	1	steak (yield from 233 g raw meat)	233	20	\N
13392	1	3	oz	85	\N	\N
13392	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	272	\N	\N
13393	1	3	oz	85	\N	\N
13393	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	265	\N	\N
13394	1	3	oz	85	\N	\N
13394	2	1	steak (yield from 296 g raw meat)	233	20	\N
13395	1	3	oz	85	\N	\N
13395	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	220	\N	\N
13396	1	3	oz	85	\N	\N
13396	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	220	\N	\N
13398	1	3	oz	85	\N	\N
13398	2	1	steak (yield from 290 g raw meat)	185	20	\N
13399	1	3	oz	85	\N	\N
13399	2	1	roast (yield from 600 g raw meat)	489	20	\N
13401	1	3	oz	85	\N	\N
13401	2	1	steak (yield from 299 g raw meat)	191	10	\N
13402	1	3	oz	85	\N	\N
13402	2	1	roast (yield from 627 g raw meat)	515	10	\N
13404	1	3	oz	85	\N	\N
13404	2	1	steak (yield from 281 g raw meat)	179	10	\N
13405	1	3	oz	85	\N	\N
13405	2	1	roast (yield from 572 g raw meat)	464	10	\N
13407	1	3	oz	85	\N	\N
13407	2	1	steak (yield from 290 g raw meat)	185	20	\N
13408	1	3	oz	85	\N	\N
13408	2	1	roast (yield from 600 g raw meat)	489	20	\N
13410	1	3	oz	85	\N	\N
13410	2	1	steak (yield from 299 g raw meat)	191	10	\N
13411	1	3	oz	85	\N	\N
13411	2	1	roast (yield from 627 g raw meat)	515	10	\N
13413	1	3	oz	85	\N	\N
13413	2	1	steak (yield from 281 g raw meat)	179	10	\N
13414	1	3	oz	85	\N	\N
13414	2	1	roast (yield from 572 g raw meat)	464	10	\N
13415	1	3	oz	85	\N	\N
13415	2	1	roast (yield from 436 g raw meat)	346	20	\N
13415	3	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	333	\N	\N
13416	1	3	oz	85	\N	\N
13416	2	1	roast (yield from 445 g raw meat)	355	10	\N
13417	1	3	oz	85	\N	\N
13417	2	1	roast (yield from 426 g raw meat)	337	10	\N
13418	1	3	oz	85	\N	\N
13418	2	1	roast (yield from 436 g raw meat)	346	20	\N
13418	3	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	330	\N	\N
13419	1	3	oz	85	\N	\N
13419	2	1	roast (yield from 445 g raw meat)	355	10	\N
13419	3	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	331	\N	\N
13420	1	3	oz	85	\N	\N
13420	2	1	roast (yield from 426 g raw meat)	337	10	\N
13420	3	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	296	\N	\N
13421	1	3	oz	85	\N	\N
13421	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	330	\N	\N
13422	1	3	oz	85	\N	\N
13422	2	1	roast (yield from 1405 g raw meat)	1138	10	\N
13423	1	3	oz	85	\N	\N
13423	2	1	roast (yield from 1388 g raw meat)	1141	10	\N
13424	1	3	oz	85	\N	\N
13424	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	320	\N	\N
13425	1	3	oz	85	\N	\N
13425	2	1	roast (yield from 1405 g raw meat)	1138	10	\N
13426	1	3	oz	85	\N	\N
13426	2	1	roast (yield from 1388 g raw meat)	1141	10	\N
13428	1	3	oz	85	\N	\N
13428	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	267	\N	\N
13430	1	3	oz	85	\N	\N
13430	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	267	\N	\N
13432	1	3	oz	85	\N	\N
13432	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	267	\N	\N
13436	1	3	oz	85	\N	\N
13436	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	261	\N	\N
13438	1	3	oz	85	\N	\N
13438	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	261	\N	\N
13439	1	3	oz	85	\N	\N
13439	2	1	steak	117	20	\N
13440	1	3	oz	85	\N	\N
13440	2	1	steak (yield from 161 g raw meat)	126	10	\N
13441	1	3	oz	85	\N	\N
13441	2	1	steak (yield from 136 g raw meat)	108	10	\N
13442	1	3	oz	85	\N	\N
13442	2	1	steak	119	36	18.642
13443	1	3	oz	85	\N	\N
13443	2	1	steak	121	24	17.377
13444	1	3	oz	85	\N	\N
13444	2	1	steak	117	12	20.842
13445	1	3	oz	85	\N	\N
13445	2	1	steak	119	36	18.642
13446	1	3	oz	85	\N	\N
13446	2	1	steak (yield from 203 g raw meat)	164	10	\N
13447	1	3	oz	85	\N	\N
13447	2	1	steak (yield from 186 g raw meat)	150	10	\N
13448	1	3	oz	85	\N	\N
13448	2	1	steak, excluding refuse (yield from 1 raw steak, with refuse, weighing 223 g)	150	\N	\N
13449	1	3	oz	85	\N	\N
13449	2	1	steak (yield from 203 g raw meat)	164	10	\N
13450	1	3	oz	85	\N	\N
13450	2	1	steak (yield from 186 g raw meat)	150	10	\N
13451	1	3	oz	85	\N	\N
13451	2	1	steak (yield from 518 g raw meat)	384	20	\N
13452	1	3	oz	85	\N	\N
13452	2	1	steak (yield from 532 g raw meat)	393	10	\N
13453	1	3	oz	85	\N	\N
13453	2	1	steak (yield from 505 g raw meat)	375	10	\N
13454	1	3	oz	85	\N	\N
13454	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	292	\N	\N
13455	1	3	oz	85	\N	\N
13455	2	1	steak (yield from 532 g raw meat)	393	10	\N
13456	1	3	oz	85	\N	\N
13456	2	1	steak (yield from 505 g raw meat)	375	10	\N
13459	1	3	oz	85	\N	\N
13459	2	1	lb	453.6	\N	\N
13460	1	3	oz	85	\N	\N
13460	2	1	lb	453.6	\N	\N
13463	1	3	oz ( 1serving )	85	\N	\N
13463	2	1	lb	453.6	\N	\N
13464	1	3	oz	85	\N	\N
13464	2	1	steak	534	36	30.734
13465	1	3	oz	85	\N	\N
13465	2	1	steak	421	36	31.383
13466	1	3	oz	85	\N	\N
13466	2	1	lb	453.6	\N	\N
13467	1	3	oz	85	\N	\N
13467	2	1	serving	85	\N	\N
13467	3	1	piece, cooked, excluding refuse	266	1	\N
13468	1	3	oz	85	\N	\N
13468	2	1	steak	526	12	32.614
13469	1	3	oz	85	\N	\N
13469	2	1	steak	426	12	33.689
13470	1	3	oz	85	\N	\N
13470	2	1	serving	85	\N	\N
13470	3	1	piece, cooked, excluding refuse	256	1	\N
13473	1	3	oz	85	\N	\N
13473	2	1	lb	453.6	\N	\N
13474	1	3	oz	85	\N	\N
13474	2	1	lb	453.6	\N	\N
13477	1	3	oz	85	\N	\N
13477	2	1	lb	453.6	\N	\N
13478	1	3	oz	85	\N	\N
13478	2	1	steak	460	36	31.973
13479	1	3	oz	85	\N	\N
13479	2	1	steak	363	36	28.19
13481	1	3	oz	85	\N	\N
13481	2	1	serving	85	\N	\N
13481	3	1	piece, cooked, excluding refuse	271	1	\N
13482	1	3	oz	85	\N	\N
13482	2	1	steak	458	12	36.718
13483	1	3	oz	85	\N	\N
13483	2	1	steak	368	12	27.393
13484	1	3	oz	85	\N	\N
13484	2	1	serving	85	\N	\N
13484	3	1	piece, cooked, excluding refuse	264	1	\N
13485	1	3	oz	85	\N	\N
13485	2	1	steak	247	10	\N
13486	1	3	oz	85	\N	\N
13486	2	1	roast	1289	20	\N
13487	1	3	oz	85	\N	\N
13487	2	1	roast	1392	10	\N
13488	1	3	oz	85	\N	\N
13488	2	1	roast	1187	10	\N
13490	1	3	oz	85	\N	\N
13490	2	1	steak	231	10	\N
13491	1	3	oz	85	\N	\N
13491	2	1	steak	277	20	\N
13492	1	3	oz	85	\N	\N
13492	2	1	steak	284	10	\N
13493	1	3	oz	85	\N	\N
13493	2	1	steak	269	10	\N
13494	1	3	oz	85	1	\N
13494	2	1	portion (yield from 1/2 lb raw meat )	139	18	4.947
13495	1	3	oz	85	1	\N
13495	2	1	loaf ( yield from 1 lb raw meat )	284	6	4.014
13496	1	3	oz	85	1	\N
13496	2	1	patty	77	18	3.232
13497	1	3	oz	85	1	\N
13497	2	1	patty	70	42	2.946
13498	1	4	oz	113	\N	\N
13498	2	1	oz	28.35	1	\N
13499	1	3	oz	85	\N	\N
13499	2	1	steak	458	9	\N
13500	1	3	oz	85	\N	\N
13500	2	1	steak	186	25	28.1
13501	1	3	oz	85	\N	\N
13501	2	1	steak	177	17	27.7
13502	1	3	oz	85	\N	\N
13502	2	1	steak	199	8	27.3
13519	1	3	oz	85	\N	\N
13519	2	1	steak	1438	36	397
13520	1	3	oz	85	\N	\N
13520	2	1	steak	1432	24	409
13523	1	3	oz	85	\N	\N
13523	2	1	steak	1446	12	388
13595	1	3	oz	85	\N	\N
13595	2	1	piece	1855	36	369
13596	1	3	oz	85	\N	\N
13596	2	1	piece	1780	24	251
13597	1	3	oz	85	\N	\N
13597	2	1	piece	1967	12	514
13598	1	3	oz	85	\N	\N
13598	2	1	steak	186	25	28.1
13647	1	3	oz	85	\N	\N
13647	2	1	steak	1027	72	269
13647	3	1	roast	1316	70	296
13648	1	3	oz	85	\N	\N
13649	1	3	oz	85	\N	\N
13649	2	1	steak	1106	24	318
13649	3	1	roast	1320	24	268
13650	1	3	oz	85	\N	\N
13650	2	1	steak	177	17	27.7
13786	1	3	oz	85	\N	\N
13786	2	1	roast	723	1	\N
13788	1	3	oz	85	\N	\N
13788	2	1	roast	698	1	\N
13791	1	3	oz	85	\N	\N
13791	2	1	roast	761	1	\N
13795	1	4	oz	114	\N	\N
13796	1	3	oz	85	\N	\N
13797	1	4	oz	114	\N	\N
13798	1	3	oz	85	\N	\N
13799	1	4	oz	114	\N	\N
13800	1	3	oz	85	\N	\N
13803	1	1	oz	28.35	\N	\N
13803	2	1	lb	453.6	\N	\N
13804	1	3	oz	85	\N	\N
13804	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	329	\N	\N
13805	1	3	oz	85	\N	\N
13805	2	1	steak	452	20	\N
13806	1	3	oz	85	\N	\N
13806	2	1	steak (yield from raw steak weighing 550 g)	380	20	\N
13807	1	1	oz	28.35	\N	\N
13807	2	1	lb	453.6	\N	\N
13808	1	3	oz	85	\N	\N
13808	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	332	\N	\N
13809	1	1	oz	28.35	\N	\N
13809	2	1	lb	453.6	\N	\N
13810	1	3	oz	85	\N	\N
13810	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	258	\N	\N
13811	1	1	oz	28.35	\N	\N
13811	2	1	roast	1801	10	\N
13811	3	1	lb	453.6	\N	\N
13812	1	3	oz	85	\N	\N
13812	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	258	\N	\N
13813	1	1	oz	28.35	\N	\N
13813	2	1	roast	1783	10	\N
13813	3	1	lb	453.6	\N	\N
13814	1	3	oz	85	\N	\N
13814	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	257	\N	\N
13815	1	1	oz	28.35	\N	\N
13815	2	1	lb	453.6	\N	\N
13816	1	3	oz	85	\N	\N
13816	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	247	\N	\N
13817	1	1	oz	28.35	\N	\N
13817	2	1	lb	453.6	\N	\N
13818	1	3	oz	85	\N	\N
13818	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	247	\N	\N
13819	1	1	oz	28.35	\N	\N
13819	2	1	lb	453.6	\N	\N
13820	1	3	oz	85	\N	\N
13820	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	247	\N	\N
13821	1	3	oz	85	\N	\N
13821	2	1	roast	609	11	78.6
13822	1	3	oz	85	\N	\N
13822	2	1	roast	586	7	30.6
13823	1	3	oz	85	\N	\N
13823	2	1	roast	645	4	126.7
13824	1	1	oz	28.35	\N	\N
13824	2	1	lb	453.6	\N	\N
13825	1	3	oz	85	\N	\N
13825	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	267	\N	\N
13826	1	3	oz	85	\N	\N
13826	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	289	\N	\N
13827	1	1	oz	28.35	\N	\N
13827	2	1	lb	453.6	\N	\N
13828	1	3	oz	85	\N	\N
13828	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	267	\N	\N
13829	1	3	oz	85	\N	\N
13829	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	289	\N	\N
13830	1	1	oz	28.35	\N	\N
13830	2	1	lb	453.6	\N	\N
13831	1	3	oz	85	\N	\N
13831	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	264	\N	\N
13832	1	3	oz	85	\N	\N
13832	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	289	\N	\N
13833	1	1	oz	28.35	\N	\N
13833	2	1	lb	453.6	\N	\N
13834	1	3	oz	85	\N	\N
13834	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	274	\N	\N
13835	1	3	oz	85	\N	\N
13835	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	278	\N	\N
13838	1	1	oz	28.35	\N	\N
13838	2	1	lb	453.6	\N	\N
13839	1	3	oz	85	\N	\N
13839	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	267	\N	\N
13840	1	3	oz	85	\N	\N
13840	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	292	\N	\N
13841	1	1	oz	28.35	\N	\N
13841	2	1	lb	453.6	\N	\N
13842	1	3	oz	85	\N	\N
13842	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	267	\N	\N
13843	1	3	oz	85	\N	\N
13843	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	296	\N	\N
13844	1	1	oz	28.35	\N	\N
13844	2	1	lb	453.6	\N	\N
13845	1	3	oz	85	\N	\N
13845	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	267	\N	\N
13846	1	3	oz	85	\N	\N
13846	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	292	\N	\N
13847	1	1	oz	28.35	\N	\N
13847	2	1	lb	453.6	\N	\N
13848	1	3	oz	85	\N	\N
13848	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	278	\N	\N
13849	1	3	oz	85	\N	\N
13849	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	281	\N	\N
13850	1	1	oz	28.35	\N	\N
13850	2	1	lb	453.6	\N	\N
13851	1	3	oz	85	\N	\N
13851	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	268	\N	\N
13852	1	3	oz	85	\N	\N
13852	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	282	\N	\N
13853	1	1	oz	28.35	\N	\N
13853	2	1	lb	453.6	\N	\N
13854	1	3	oz	85	\N	\N
13854	2	1	steak (yield from 320 g raw meat)	256	10	\N
13855	1	3	oz	85	\N	\N
13855	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	278	\N	\N
13856	1	3	oz	85	\N	\N
13856	2	1	steak	335	10	\N
13857	1	3	oz	85	\N	\N
13857	2	1	steak (yield from 1 raw steak weighing 321g)	245	10	\N
13858	1	3	oz	85	\N	\N
13858	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	285	\N	\N
13859	1	1	oz	28.35	\N	\N
13859	2	1	lb	453.6	\N	\N
13860	1	3	oz	85	\N	\N
13860	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	268	\N	\N
13861	1	3	oz	85	\N	\N
13861	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	276	\N	\N
13862	1	3	oz	85	\N	\N
13862	2	1	steak	199	8	27.3
13863	1	3	oz	85	\N	\N
13863	2	1	steak	239	1	\N
13864	1	1	oz	28.35	\N	\N
13864	2	1	lb	453.6	\N	\N
13865	1	3	oz	85	\N	\N
13865	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	313	\N	\N
13866	1	1	oz	28.35	\N	\N
13866	2	1	lb	453.6	\N	\N
13867	1	3	oz	85	\N	\N
13867	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	313	\N	\N
13868	1	1	oz	28.35	\N	\N
13868	2	1	lb	453.6	\N	\N
13869	1	3	oz	85	\N	\N
13869	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	281	\N	\N
13870	1	3	oz	85	\N	\N
13870	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	338	\N	\N
13870	3	1	roast (yield from 1 raw roast weighing 776g)	632	20	\N
13871	1	1	oz	28.35	\N	\N
13871	2	1	lb	453.6	\N	\N
13872	1	3	oz	85	\N	\N
13872	2	1	steak (yield from 341 g raw meat)	227	10	\N
13873	1	3	oz	85	\N	\N
13873	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	338	\N	\N
13873	3	1	roast (yield from raw roast weighing 766g)	627	10	\N
13874	1	3	oz	85	\N	\N
13874	2	1	steak	312	10	\N
13875	1	3	oz	85	\N	\N
13875	2	1	steak (yield from raw steak weighing 340g)	226	10	\N
13876	1	3	oz	85	\N	\N
13876	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	338	\N	\N
13876	3	1	roast (yield from 1 raw roast weighing 786g)	636	10	\N
13877	1	1	oz	28.35	\N	\N
13877	2	1	lb	453.6	\N	\N
13878	1	3	oz	85	\N	\N
13878	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	333	\N	\N
13879	1	1	oz	28.35	\N	\N
13879	2	1	lb	453.6	\N	\N
13880	1	3	oz	85	\N	\N
13880	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	333	\N	\N
13881	1	1	oz	28.35	\N	\N
13881	2	1	lb	453.6	\N	\N
13882	1	3	oz	85	\N	\N
13882	2	1	roast (yield from 530 g raw meat)	417	10	\N
13883	1	1	oz	28.35	\N	\N
13883	2	1	lb	453.6	\N	\N
13884	1	3	oz	85	\N	\N
13884	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	326	\N	\N
13885	1	1	oz	28.35	\N	\N
13885	2	1	lb	453.6	\N	\N
13886	1	3	oz	85	\N	\N
13886	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	325	\N	\N
13887	1	1	oz	28.35	\N	\N
13887	2	1	lb	453.6	\N	\N
13888	1	3	oz	85	\N	\N
13888	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	327	\N	\N
13889	1	3	oz	85	\N	\N
13889	2	1	steak	231	1	\N
13890	1	3	oz	85	1	\N
13890	2	1	piece cooked, excluding refuse (yield from 1 lb raw meat with refuse)	283	1	\N
13891	1	1	oz	28.35	\N	\N
13891	2	1	lb	453.6	\N	\N
13892	1	3	oz	85	\N	\N
13892	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	286	\N	\N
13893	1	3	oz	85	\N	\N
13893	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	326	\N	\N
13894	1	1	oz	28.35	\N	\N
13894	2	1	lb	453.6	\N	\N
13895	1	3	oz	85	\N	\N
13895	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	289	\N	\N
13896	1	3	oz	85	\N	\N
13896	2	1	steak (yield from raw steak weighing 492 g)	347	10	\N
13896	3	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	326	\N	\N
13897	1	3	oz	85	\N	\N
13897	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	283	\N	\N
13898	1	1	oz	28.35	\N	\N
13898	2	1	lb	453.6	\N	\N
13899	1	3	oz	85	\N	\N
13899	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	286	\N	\N
13900	1	3	oz	85	\N	\N
13900	2	1	steak (yield from raw steak weighing 491g)	359	10	\N
13900	3	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	329	\N	\N
13901	1	1	oz	28.35	\N	\N
13901	2	1	lb	453.6	\N	\N
13902	1	3	oz	85	\N	\N
13902	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	332	\N	\N
13903	1	3	oz	85	\N	\N
13903	2	1	steak	252	1	\N
13904	1	3	oz	85	\N	\N
13904	2	1	piece	1855	36	\N
13905	1	3	oz	85	\N	\N
13905	2	1	steak	539	24	29.849
13906	1	3	oz	85	\N	\N
13906	2	1	steak	417	24	30.685
13907	1	3	oz	85	\N	\N
13907	2	1	steak	461	24	30.173
13908	1	3	oz	85	\N	\N
13908	2	1	steak	360	24	28.858
13909	1	3	oz	85	\N	\N
13910	1	3	oz	85	\N	\N
13910	2	1	steak	213	20	\N
13911	1	3	oz	85	\N	\N
13911	2	1	steak	301	24	39.947
13912	1	3	oz	85	\N	\N
13912	2	1	steak (yield from 270 g raw meat)	221	10	\N
13913	1	3	oz	85	\N	\N
13914	1	3	oz	85	\N	\N
13915	1	3	oz	85	\N	\N
13915	2	1	steak, excluding refuse (yield from 1 raw steak, with refuse, weighing 242 g)	227	\N	\N
13916	1	3	oz	85	\N	\N
13916	2	1	steak, excluding refuse (yield from 1 raw steak, with refuse, weighing 242 g)	167	\N	\N
13917	1	3	oz	85	\N	\N
13917	2	1	steak	164	21	\N
13918	1	3	oz	85	\N	\N
13918	2	1	steak, excluding refuse (yield from 1 raw steak, with refuse, weighing 154 g)	104	\N	\N
13919	1	3	oz	85	\N	\N
13919	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	330	\N	\N
13920	1	3	oz	85	\N	\N
13920	2	1	steak	177	11	\N
13921	1	1	steak (yield from 181 g raw meat)	140	9	\N
13921	2	3	oz	85	\N	\N
13922	1	3	oz	85	\N	\N
13922	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	329	\N	\N
13923	1	1	steak (yield from 1 raw steak weighing149g)	149	10	\N
13923	2	1	oz	28.35	\N	\N
13923	3	1	lb	453.6	\N	\N
13924	1	1	steak (yield from 1 raw steak weighing 151g)	119	10	\N
13924	2	3	oz	85	\N	\N
13924	3	1	steak, excluding refuse (yield from 1 raw steak, with refuse, weighing 154 g)	104	\N	\N
13925	1	3	oz	85	\N	\N
13925	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	329	\N	\N
13926	1	1	oz	28.35	\N	\N
13926	2	1	lb	453.6	\N	\N
13927	1	3	oz	85	\N	\N
13927	2	1	steak, excluding refuse (yield from 1 raw steak, with refuse, weighing 154 g)	106	\N	\N
13928	1	3	oz	85	\N	\N
13928	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	326	\N	\N
13929	1	3	oz	85	\N	\N
13929	2	1	steak	608	20	\N
13930	1	3	oz	85	\N	\N
13930	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	306	\N	\N
13931	1	1	oz	28.35	\N	\N
13931	2	1	lb	453.6	\N	\N
13932	1	3	oz	85	\N	\N
13932	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	306	\N	\N
13933	1	3	oz	85	\N	\N
13933	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	307	\N	\N
13934	1	3	oz	85	\N	\N
13934	2	1	steak	594	10	\N
13935	1	3	oz	85	\N	\N
13935	2	1	steak (yield from 1 raw steak weighing 624g)	485	10	\N
13937	1	3	oz	85	\N	\N
13940	1	3	oz	85	\N	\N
13943	1	3	oz ( 1 serving )	85	\N	\N
13946	1	3	oz	85	\N	\N
13948	1	3	oz	85	\N	\N
13948	2	1	steak (yield from 475 g raw meat)	383	20	\N
13949	1	3	oz	85	\N	\N
13949	2	1	steak (yield from 467 g raw meat)	379	10	\N
13950	1	3	oz	85	\N	\N
13950	2	1	steak (yield from 388 g raw meat)	247	10	\N
13951	1	3	oz	85	\N	\N
13951	2	1	steak (yield from 294 g raw meat)	231	10	\N
13952	1	3	oz	85	\N	\N
13952	2	1	steak (yield from 295 g raw meat)	233	20	\N
13953	1	1	roast (yield from 690g raw meat)	569	20	\N
13954	1	3	oz	85	\N	\N
13954	2	1	roast	261	19	\N
13955	1	3	oz	85	\N	\N
13955	2	1	roast (yield from 714 g raw meat)	591	10	\N
13956	1	3	oz	85	\N	\N
13956	2	1	roast	271	9	\N
13957	1	3	oz	85	\N	\N
13957	2	1	roast (yield from 666 g raw meat)	547	10	\N
13958	1	3	oz	85	\N	\N
13958	2	1	roast	252	10	\N
13959	1	3	oz	85	\N	\N
13959	2	1	steak (yield from 381 g raw meat)	277	20	\N
13961	1	3	oz (1 serving)	85	\N	\N
13963	1	3	oz	85	\N	\N
13965	1	3	oz	85	\N	\N
13967	1	3	oz	85	\N	\N
13968	1	3	oz	85	\N	\N
13968	2	1	steak (yield from 396 g raw meat)	284	10	\N
13969	1	3	oz	85	\N	\N
13969	2	1	steak (yield from 368 g meat)	269	10	\N
13970	1	3	oz	85	\N	\N
13970	2	1	steak	188	20	\N
13971	1	3	oz	85	\N	\N
13971	2	1	steak	173	10	\N
13972	1	3	oz	85	\N	\N
13972	2	1	roast	1289	36	298
13973	1	3	oz	85	\N	\N
13973	2	1	roast	1263	24	227
13974	1	3	oz	85	\N	\N
13974	2	1	roast	1327	12	407
13975	1	3	oz	85	\N	\N
13975	2	1	piece	1780	24	\N
13977	1	3	oz	85	\N	\N
13979	1	3	oz	85	\N	\N
13980	1	3	oz	85	\N	\N
13980	2	1	piece	272	7	51.1
13981	1	3	oz	85	\N	\N
13981	2	1	piece	315	4	51.9
13982	1	3	oz	85	\N	\N
13982	2	1	piece	289	11	52
13983	1	3	oz	85	\N	\N
13983	2	1	piece	514	12	\N
13985	1	1	serving	85	1	\N
13985	2	1	roast	569	20	\N
14003	1	1	fl oz	29.7	1	\N
14003	2	1	can	356	1	\N
14004	1	1	fl oz	29.8	1	\N
14004	2	12	fl oz	357	\N	\N
14005	1	1	fl oz	29.5	1	\N
14005	2	12	fl oz	355	1	\N
14006	1	1	fl oz	29.5	\N	\N
14006	2	1	can or bottle (12 fl oz)	354	\N	\N
14007	1	1	fl oz	29.5	1	\N
14007	2	12	fl oz	354	1	\N
14009	1	1	fl oz	30.5	\N	\N
14009	2	1	can (6.8 fl oz, 200 ml)	207	\N	\N
14010	1	1	fl oz	30.2	\N	\N
14010	2	1	cocktail (2 fl oz)	60	\N	\N
14013	1	1	fl oz	29.5	1	\N
14013	2	12	fl oz	354	1	\N
14015	1	1	fl oz	32.6	\N	\N
14015	2	1	can (6.8 fl oz, 200 ml)	222	\N	\N
14016	1	8	fl oz	240	1	\N
14016	2	1	cup	240	1	\N
14017	1	1	fl oz	31.4	\N	\N
14017	2	1	cocktail (4.5 fl oz)	141	\N	\N
14019	1	1	fl oz	31.1	\N	\N
14019	2	1	can (6.8 fl oz, 200 ml)	211	\N	\N
14021	1	8	fl oz	240	1	\N
14022	1	8	fl oz	240	1	\N
14024	1	1	packet	17	\N	\N
14025	1	1	fl oz	29.4	\N	\N
14025	2	1	packet prepared	103	\N	\N
14026	1	16	fl oz	480	1	\N
14027	1	1	fl oz	30.8	\N	\N
14027	2	1	can (6.8 fl oz, 200 ml)	209	\N	\N
14028	1	1	fl oz	32.3	\N	\N
14028	2	2	fl oz	65	\N	\N
14029	1	1	fl oz	30.4	\N	\N
14029	2	1	portion (2 oz mix + 1.5 oz whiskey)	106	\N	\N
14030	1	16	fl oz	480	1	\N
14031	1	8	fl oz	240	1	\N
14033	1	2	scoop	39	1	\N
14034	1	1	fl oz	33.6	\N	\N
14034	2	1	jigger 1.5 fl oz	50	\N	\N
14035	1	1	scoop	44	1	\N
14036	1	14	fl oz	414	1	\N
14037	1	1	fl oz	27.8	\N	\N
14037	2	1	jigger (1.5 fl oz)	42	\N	\N
14038	1	1	can	250	10	2.58
14041	1	1	bottle	237	1	\N
14044	1	1	bottle	295	1	\N
14045	1	1	bottle	295	1	\N
14047	1	1	scoop	26	1	\N
14048	1	1	bottle	500	1	\N
14049	1	1	fl oz	27.8	\N	\N
14049	2	1	jigger (1.5 fl oz)	42	\N	\N
14050	1	1	fl oz	27.8	\N	\N
14050	2	1.5	fl oz	42	\N	\N
14051	1	1	fl oz	27.8	\N	\N
14051	2	1.5	fl oz	42	\N	\N
14052	1	1	fl oz	27.8	1	\N
14052	2	1	jigger (1.5 fl oz)	42	1	\N
14054	1	8	fl oz	240	1	\N
14054	2	1	cup	240	1	\N
14055	1	1	scoop	26	1	\N
14056	1	8	fl oz	266	1	\N
14056	2	2	fl oz	60	1	\N
14057	1	1	fl oz	29.5	\N	\N
14057	2	1	glass (3.5 fl oz)	103	\N	\N
14058	1	3	scoop	86	1	\N
14059	1	1	serving	296	1	\N
14060	1	8	fl oz	240	1	\N
14061	1	8	fl oz	240	1	\N
14062	1	8	fl oz	254	1	\N
14063	1	2	tbsp	11.0	1	\N
14064	1	8	fl oz	240	1	\N
14065	1	6.75	fl oz	200	1	\N
14066	1	0.33	cup	32	1	\N
14067	1	1	scoop	45	1	\N
14068	1	1	packet	14.5	2	\N
14073	1	1	can	355	1	\N
14074	1	1	can	355	1	\N
14075	1	8	fl oz	240	1	\N
14076	1	1	serving	100	1	\N
14079	1	16	fl oz	473	1	\N
14080	1	2	tbsp	11.0	1	\N
14083	1	1	serving	256	1	\N
14084	1	1	serving (5 fl oz)	148	\N	\N
14084	2	1	fl oz	29.5	1	\N
14086	1	1	serving 8 oz	245	1	\N
14087	1	1	serving 8 oz	245	1	\N
14088	1	1	serving 8 oz	246	1	\N
14090	1	1	cup	245	19	7.599
14091	1	1	cup	262	7	7.92
14092	1	1	cup	240	1	\N
14093	1	20	fl oz	591	1	\N
14095	1	8	fl oz	240	1	\N
14096	1	1	fl oz	29.4	\N	\N
14096	2	1	serving (5 fl oz)	147	\N	\N
14097	1	1	fl oz	29.4	\N	\N
14097	2	1	serving (5 fl oz)	147	\N	\N
14098	1	1	fl oz	29.4	\N	\N
14098	2	1	serving (5 fl oz)	147	\N	\N
14099	1	1	fl oz	29.4	\N	\N
14099	2	1	serving (5 fl oz)	147	\N	\N
14100	1	1	fl oz	29.4	\N	\N
14100	2	1	serving (5 fl oz)	147	\N	\N
14101	1	1	fl oz	29.4	\N	\N
14101	2	1	serving (5 fl oz)	147	\N	\N
14102	1	1	fl oz	29.4	\N	\N
14102	2	1	serving (5 fl oz)	147	\N	\N
14103	1	1	fl oz	29.5	\N	\N
14103	2	1	serving (5 fl oz)	147	\N	\N
14105	1	1	fl oz	29.4	\N	\N
14105	2	1	serving (5 fl oz)	147	\N	\N
14106	1	1	fl oz	29.4	\N	\N
14106	2	1	serving (5 fl oz)	147	\N	\N
14107	1	1	fl oz	29.4	\N	\N
14107	2	1	serving (5 fl oz)	147	\N	\N
14108	1	1	fl oz	29.4	\N	\N
14108	2	1	serving (5 fl oz)	147	\N	\N
14109	1	1	fl oz	29.4	\N	\N
14109	2	1	serving (5 fl oz)	147	\N	\N
14113	1	1	fl oz	29.3	\N	\N
14113	2	1	serving (5 fl oz)	147	\N	\N
14116	1	1	fl oz	29.5	\N	\N
14116	2	1	serving (5 fl oz)	148	\N	\N
14117	1	1	fl oz	29.3	\N	\N
14117	2	1	serving (5 fl oz)	147	\N	\N
14119	1	8	fl oz	247	1	\N
14120	1	1	fl oz	29.5	\N	\N
14120	2	1	serving (5 fl oz)	148	\N	\N
14121	1	1	fl oz	29.6	\N	\N
14121	2	1	can or bottle (16 fl oz)	474	\N	\N
14121	3	1	can or bottle (12 fl oz)	355	\N	\N
14124	1	1	fl oz	29.5	\N	\N
14124	2	1	serving (5 fl oz)	147	\N	\N
14125	1	1	fl oz	30.5	\N	\N
14125	2	1	serving (5 fl oz)	152	\N	\N
14126	1	1	fl oz	29.5	\N	\N
14126	2	1	serving (5 fl oz)	147	\N	\N
14130	1	1	fl oz	30.9	\N	\N
14130	2	1	can or bottle (16 fl oz)	494	\N	\N
14130	3	1	can or bottle (12 fl oz)	371	\N	\N
14132	1	1	fl oz	29.6	\N	\N
14132	2	1	serving (5 fl oz)	148	\N	\N
14134	1	1	fl oz	29.3	\N	\N
14134	2	1	serving (5 fl oz)	147	\N	\N
14135	1	1	fl oz	30.8	\N	\N
14135	2	1	serving (5 fl oz)	154	\N	\N
14136	1	1	fl oz	30.5	\N	\N
14136	2	1	can or bottle (16 fl oz)	488	\N	\N
14136	3	1	can or bottle (12 fl oz)	366	\N	\N
14137	1	1	fl oz	30.6	\N	\N
14137	2	1	serving (8 fl oz)	245	\N	\N
14137	3	1	serving (12 fl oz)	368	\N	\N
14137	4	1	serving (16.9 fl oz)	518	\N	\N
14138	1	1	fl oz	29.3	\N	\N
14138	2	1	serving (5 fl oz)	147	\N	\N
14140	1	1	fl oz	30.0	\N	\N
14140	2	1	serving (5 fl oz)	150	\N	\N
14142	1	1	fl oz	31.0	\N	\N
14142	2	1	can or bottle (12 fl oz)	372	\N	\N
14143	1	1	fl oz	29.6	\N	\N
14143	2	1	can (12 fl oz)	355	\N	\N
14144	1	1	fl oz	30.8	\N	\N
14144	4	1	drink (12 fl oz)	368	\N	\N
14144	5	1	drink, small (16 fl oz)	491	\N	\N
14144	6	1	drink, medium (22 fl oz)	675	\N	\N
14144	7	1	drink, large (32 fl oz)	982	\N	\N
14144	8	1	drink, extra large (44 fl oz)	1351	\N	\N
14145	1	1	fl oz	30.8	\N	\N
14145	2	1	serving 12 fl oz	369	\N	\N
14145	3	1	serving 16 fl oz	492	\N	\N
14145	4	1	cup 12 fl oz 12 fl oz	258	\N	\N
14146	1	1	fl oz	29.6	\N	\N
14146	2	1	can or bottle (16 fl oz)	474	\N	\N
14146	3	1	can (12 fl oz)	355	\N	\N
14146	4	1	drink, small (16 fl oz)	474	\N	\N
14146	5	1	drink, medium (22 fl oz)	651	\N	\N
14146	6	1	drink, large (32 fl oz)	947	\N	\N
14146	7	1	drink, extra large (44 fl oz)	1302	\N	\N
14147	1	1	fl oz	30.7	\N	\N
14147	2	1	serving 12 fl oz	368	\N	\N
14147	3	1	serving 16 fl oz	491	\N	\N
14148	1	1	fl oz	30.7	\N	\N
14148	2	1	can or bottle (12 fl oz)	370	\N	\N
14148	3	1	can or bottle (16 fl oz)	492	\N	\N
14148	4	1	drink, small (16 fl oz)	492	\N	\N
14148	5	1	drink, medium (22 fl oz)	676	\N	\N
14148	6	1	drink, large (32 fl oz)	984	\N	\N
14148	7	1	drink, extra large (44 fl oz)	1353	\N	\N
14149	1	1	fl oz	29.6	\N	\N
14149	2	1	can (8 fl oz)	355	\N	\N
14150	1	1	fl oz	31.0	\N	\N
14150	2	1	can or bottle (16 fl oz)	496	\N	\N
14150	3	1	can or bottle (12 fl oz)	372	\N	\N
14151	1	1	fl oz	29.6	\N	\N
14151	2	1	can (12 fl oz)	355	\N	\N
14152	1	1	fl oz	29.5	\N	\N
14152	2	1	serving 5 fl oz	148	\N	\N
14153	1	1	fl oz	30.7	\N	\N
14153	2	1	can or bottle (16 fl oz)	491	\N	\N
14153	3	1	can or bottle (12 fl oz)	368	\N	\N
14154	1	1	can 8.4 fl oz	258	1	\N
14154	2	1	serving 12 fl oz	369	\N	\N
14154	3	1	serving 16 fl oz	492	\N	\N
14155	1	1	fl oz	30.5	\N	\N
14155	2	1	bottle (11 fl oz)	336	\N	\N
14155	3	1	can or bottle (16 fl oz)	488	\N	\N
14155	4	1	can or bottle (12 fl oz)	366	\N	\N
14156	1	1	serving 8.3 fl oz can	250	\N	\N
14157	1	1	fl oz	30.8	\N	\N
14157	2	1	can or bottle (16 fl oz)	493	\N	\N
14157	3	1	can or bottle (12 fl oz)	370	\N	\N
14158	1	1	fl oz	29.4	\N	\N
14158	2	1	serving 5 fl oz	147	\N	\N
14159	1	1	fl oz	29.4	\N	\N
14159	2	1	serving 5 fl oz	147	\N	\N
14160	1	1	fl oz	29.3	\N	\N
14160	2	1	serving 5 fl oz	147	\N	\N
14161	1	16	fl oz	473	1	\N
14162	1	8	fl oz	240	1	\N
14163	1	8	fl oz	237	1	\N
14164	1	1	cup dry mix	98	11	3.695
14164	2	1	cup prepared	251	11	15.489
14165	1	1	cup	253	12	2.79
14166	1	1	fl oz	29.6	\N	\N
14166	2	1	bottle (16 fl oz)	474	\N	\N
14166	3	1	can (12 fl oz)	355	\N	\N
14167	1	12	fl oz	360	1	\N
14168	1	1	tbsp	12.0	\N	\N
14169	1	1	cup (8 fl oz)	256	\N	\N
14171	1	1	cup	240	1	\N
14173	1	9.5	fl oz	281	1	\N
14174	1	8	fl oz	240	1	\N
14177	1	1	cup (8 fl oz)	266	\N	\N
14179	1	1	cup	262	10	2.859
14180	1	1	cup	248	11	3.116
14181	1	1	serving 2 tbsp	39	1	\N
14181	2	1	cup	300	1	\N
14182	1	1	cup (8 fl oz)	282	\N	\N
14183	1	1	cup	265	11	2.751
14187	1	1	fl oz	30.2	\N	\N
14187	2	1	can (5.5 oz)	166	\N	\N
14188	1	1	cup	260	12	4.352
14189	1	8	fl oz	240	1	\N
14190	1	1	cup	269	10	1.185
14191	1	1	cup	265	11	1.82
14192	1	1	serving (3 heaping tsp or 1 envelope)	28	\N	\N
14194	1	1	fl oz	34.3	\N	\N
14194	2	1	serving 6 fl oz	206	\N	\N
14195	1	1	serving 1 envelope	20	1	\N
14196	1	1	envelope Alba (.675 oz)	19	\N	\N
14196	2	1	envelope  Swiss Miss (.53 oz)	15.0	\N	\N
14197	1	1	serving 1 envelope	20	1	\N
14199	1	1	cup	271	11	2.32
14201	1	1	fl oz	29.6	\N	\N
14201	2	6	fl oz	178	\N	\N
14201	3	1	cup (8 fl oz)	237	\N	\N
14202	1	1	fl oz	29.6	\N	\N
14203	1	1	tsp	1.0	\N	\N
14203	2	1	packet	2.0	\N	\N
14204	1	1	tsp dry	6.4	\N	\N
14206	1	1	cup	270	12	1.717
14207	1	1	cup	266	5	1.281
14207	2	16	fl oz	473	1	\N
14209	1	1	fl oz	29.6	\N	\N
14209	2	6	fl oz	178	\N	\N
14209	3	1	cup (8 fl oz)	237	\N	\N
14210	1	1	fl oz	29.6	\N	\N
14211	1	1	cup	265	6	2.968
14214	1	1	tsp	1.0	\N	\N
14214	2	1	packet	2.0	\N	\N
14215	1	1	fl oz	29.8	\N	\N
14215	2	1	serving 6 fl oz	179	\N	\N
14216	1	8	fl oz	240	1	\N
14217	1	8	fl oz	240	1	\N
14218	1	1	tsp rounded	1.8	\N	\N
14219	1	1	fl oz	29.9	\N	\N
14219	2	1	serving 6 fl oz	179	\N	\N
14220	1	8	fl oz	249	1	\N
14221	1	8	fl oz	237	1	\N
14222	1	1	tsp, rounded	1.8	\N	\N
14223	1	1	fl oz	29.9	\N	\N
14223	2	1	serving 6 fl oz	179	\N	\N
14224	1	1	serving 2 tbsp	13.0	1	\N
14226	1	8	fl oz	242	1	\N
14227	1	8	fl oz	247	1	\N
14231	1	1	NLEA Serving	14.0	\N	\N
14233	1	8	fl oz	248	1	\N
14234	1	8	fl oz	247	1	\N
14235	1	8	fl oz	237	1	\N
14236	1	1	tsp (1 serving)	3.0	\N	\N
14237	1	1	fl oz	30.1	\N	\N
14237	2	1	serving 6 fl oz	180	\N	\N
14238	1	1	fl oz	30.6	\N	\N
14238	2	1	cup (8 fl oz)	245	\N	\N
14239	1	11.2	fl oz	335	1	\N
14240	1	1	fl oz	30.6	\N	\N
14240	2	1	cup (8 fl oz)	245	\N	\N
14241	1	1	fl oz	30.6	\N	\N
14241	2	1	cup (8 fl oz)	245	\N	\N
14242	1	1	fl oz	31.6	\N	\N
14242	2	1	cup (8 fl oz)	253	\N	\N
14243	1	1	fl oz	29.6	\N	\N
14243	2	1	cup (8 fl oz)	237	\N	\N
14245	1	1	cup (8 fl oz)	272	\N	\N
14246	1	2	tbsp	4.5	1	\N
14247	1	16	fl oz	473	1	\N
14248	1	12	fl oz	356	1	\N
14250	1	12	fl oz	355	1	\N
14251	1	1	fl oz	30.6	2	\N
14251	2	1	bottle	355	2	\N
14252	1	1	bottle	1184	1	\N
14253	1	1	fl oz	30.3	3	0.058
14255	1	8	fl oz	248	1	\N
14256	1	8	fl oz	248	1	\N
14257	1	8	fl oz	248	2	\N
14258	1	8	fl oz	247	1	\N
14259	1	8	fl oz	248	1	\N
14260	1	240	ml	240	1	\N
14261	1	16	fl oz	473	1	\N
14262	1	1	fl oz	35.2	\N	\N
14262	2	1	can (12 fl oz)	423	\N	\N
14263	1	1	fl oz	31.0	\N	\N
14263	2	1	serving 8 fl oz	248	\N	\N
14264	1	6.75	fl oz	210	2	\N
14264	2	1	cup (8 fl oz)	248	\N	\N
14267	1	1	fl oz	31.0	\N	\N
14267	2	1	cup (8 fl oz)	248	\N	\N
14268	1	1	fl oz	34.8	\N	\N
14268	2	1	can (12 fl oz)	418	\N	\N
14269	1	1	fl oz	30.9	\N	\N
14269	2	1	cup	247	\N	\N
14270	1	1	serving	15.0	1	\N
14276	1	1	NLEA Serving	210	\N	\N
14276	2	200	ml	200	1	\N
14277	1	1	fl oz	31.3	\N	\N
14277	2	1	cup (8 fl oz)	250	\N	\N
14278	1	1	cup	245	23	\N
14278	2	1	fl oz	29.6	23	\N
14279	1	1	cup	268	3	0.737
14280	1	1	cup	240	1	\N
14281	1	1	cup	240	1	\N
14282	1	1	fl oz	31.3	\N	\N
14282	2	6	fl oz	188	\N	\N
14282	3	8	fl oz	250	\N	\N
14282	4	1	serving	227	1	\N
14284	1	1	cup	271	30	2.796
14285	1	8	fl oz	227	1	\N
14287	1	1	serving	18	1	\N
14287	2	1	cup	218	\N	\N
14288	1	1	fl oz	33.0	\N	\N
14288	2	1	cup 8 fl oz	264	\N	\N
14292	1	1	fl oz	36.5	\N	\N
14292	2	1	can (12 fl oz)	438	\N	\N
14292	3	1	can (6 fl oz)	219	\N	\N
14293	1	1	fl oz	30.9	\N	\N
14293	2	1	cup 8 fl oz	247	\N	\N
14296	1	1	serving	18	1	\N
14296	2	0.5	scoop (2 tbsp)	29	\N	\N
14297	1	1	fl oz	31.8	\N	\N
14297	2	1	cup 8 fl oz	255	\N	\N
14303	1	1	fl oz	30.9	\N	\N
14303	2	1	cup 8 fl oz	247	\N	\N
14305	1	1	fl oz	29.6	\N	\N
14305	2	1	cup	237	\N	\N
14309	1	1	serving (4 tbsp or 1 envelope)	21	\N	\N
14309	2	1	individual serving (4-5 heaping tsp or 1 envelope)	21	\N	\N
14310	1	1	cup (8 fl oz)	265	\N	\N
14311	1	1	serving (3 heaping tsp or 1 envelope)	21	\N	\N
14312	1	1	cup (8 fl oz)	265	\N	\N
14315	1	1	cup	78	\N	\N
14315	2	1	serving (4 tbsp or 1 envelope)	21	\N	\N
14316	1	1	cup (8 fl oz)	265	\N	\N
14317	1	1	serving (3 heaping tsp or 1 envelope)	21	\N	\N
14318	1	1	cup (8 fl oz)	265	\N	\N
14323	1	1	fl oz	31.0	\N	\N
14323	2	1	cup (8 fl oz)	248	\N	\N
14327	1	1	fl oz	31.2	\N	\N
14327	2	1	cup (8 fl oz)	250	\N	\N
14334	1	1	fl oz	31.3	\N	\N
14334	2	1	cup (8 fl oz)	250	\N	\N
14341	1	1	fl oz	31.3	\N	\N
14341	2	1	cup (8 fl oz)	250	\N	\N
14347	1	1	fl oz	20.8	\N	\N
14347	2	1	cup (8 fl oz)	166	\N	\N
14347	3	1	milkshake (10 fl oz)	208	\N	\N
14347	4	1	small McDonald's shake (12 fl oz)	250	\N	\N
14347	5	1	medium McDonald's shake (16 fl oz)	333	\N	\N
14347	6	1	large McDonald's shake (22 fl oz)	458	\N	\N
14350	1	1	serving (2-3 heaping tsp)	22	\N	\N
14351	1	1	cup (8 fl oz)	266	\N	\N
14352	1	1	fl oz	29.6	\N	\N
14352	2	6	fl oz	178	\N	\N
14352	3	1	cup (8 fl oz)	237	\N	\N
14353	1	1	serving 2 tsp	0.7	\N	\N
14355	1	1	fl oz	29.6	\N	\N
14355	2	6	fl oz	178	\N	\N
14355	3	1	cup (8 fl oz)	237	\N	\N
14356	1	2	tsp	1.6	\N	\N
14357	1	1	serving (3 heaping tsp)	23	\N	\N
14357	2	1	cup	182	\N	\N
14366	1	1	serving 1 tsp	0.7	1	\N
14367	1	1	fl oz	29.7	\N	\N
14367	2	1	serving 6 fl oz	178	\N	\N
14367	3	1	serving 8 fl oz	238	\N	\N
14368	1	1	tsp, rounded	1.4	\N	\N
14368	2	2	tbsp, rounded	11.3	\N	\N
14370	1	1	serving (3 heaping tsp)	23	\N	\N
14370	2	1	cup	182	\N	\N
14371	1	1	cup (8 fl oz)	259	\N	\N
14375	1	2	tsp	1.6	\N	\N
14375	2	4	tbsp (1/4 cup)	14.4	\N	\N
14376	1	1	fl oz	29.8	\N	\N
14376	2	1	serving 6 fl oz	179	\N	\N
14376	3	1	serving 8 fl oz	238	\N	\N
14381	1	1	fl oz	29.6	\N	\N
14381	2	6	fl oz	178	\N	\N
14381	3	1	cup (8 fl oz)	237	\N	\N
14384	1	1	fl oz	29.6	\N	\N
14384	2	1	bottle 6.5 fl oz	192	\N	\N
14384	3	1	bottle 11 fl oz	325	\N	\N
14384	4	1	cup 8 fl oz	237	\N	\N
14385	1	1	fl oz	29.6	\N	\N
14385	2	1	bottle 16.9 fl oz	500	\N	\N
14385	3	1	bottle 24 fl oz	710	\N	\N
14385	4	1	bottle 8 fl oz	237	\N	\N
14390	1	1	fl oz	32.1	\N	\N
14390	2	1	serving dry mix with 6 fl oz water	192	\N	\N
14400	1	1	serving child 12 fl oz, without ice	258	\N	\N
14400	2	1	serving small 16 fl oz, without ice	347	\N	\N
14400	3	1	serving medium 21 fl oz,  without ice	486	\N	\N
14400	4	1	serving large 32 fl oz,  without ice	722	\N	\N
14405	1	1	fl oz	35.2	\N	\N
14405	2	1	can (12 fl oz)	423	\N	\N
14406	1	1	fl oz	29.3	\N	\N
14406	2	8	fl oz	234	\N	\N
14407	1	1	serving 2 tbsp	26	1	\N
14408	1	1	fl oz	33.9	\N	\N
14408	2	6	fl oz	203	\N	\N
14409	1	1	portion, amount of dry mix to make 8 fl oz prepared	2.5	\N	\N
14411	1	1	fl oz	29.6	\N	\N
14411	2	1	serving 8 fl oz	237	\N	\N
14411	3	1	liter	1000	\N	\N
14412	1	1	fl oz	29.6	\N	\N
14412	2	1	serving 8 fl oz 8 fl oz	237	\N	\N
14412	3	1	liter	1000	\N	\N
14414	1	1	fl oz	34.8	\N	\N
14414	2	1	serving 1.5 fl oz	52	\N	\N
14415	1	1	fl oz	31.1	\N	\N
14415	2	1.5	fl oz	47	\N	\N
14416	1	1	fl oz	29.6	1	\N
14416	2	1	can can 12 fl oz	355	\N	\N
14416	3	1	bottle bottle 16 fl oz	473	\N	\N
14416	4	1	serving child 12 fl oz	258	\N	\N
14416	5	1	serving small 16 fl oz	347	\N	\N
14416	6	1	serving medium 21 fl oz	486	\N	\N
14416	7	1	serving large 32 fl oz	722	\N	\N
14421	1	6	fl oz	185	\N	\N
14422	1	1	packet (.75 oz)	21	\N	\N
14422	2	1	envelope	21	1	\N
14423	1	1	serving	243	\N	\N
14424	1	1	fl oz	35.3	\N	\N
14424	2	1	can	424	\N	\N
14425	1	1	fl oz	31.0	\N	\N
14425	2	8	fl oz	248	\N	\N
14426	1	1	fl oz	36.3	\N	\N
14426	2	1	can	436	\N	\N
14427	1	1	fl oz	31.3	\N	\N
14427	2	8	fl oz	250	\N	\N
14428	1	1	fl oz	23.5	\N	\N
14428	2	1	serving small 12 fl oz	282	\N	\N
14428	3	1	serving medium 16 fl oz	376	\N	\N
14428	4	1	serving large 21 fl oz	494	\N	\N
14429	1	1	fl oz	29.6	\N	\N
14429	2	1	bottle 8 fl oz	237	\N	\N
14429	3	1	liter	1000	\N	\N
14429	4	3	ice cube (3/4 fl oz)	64	\N	\N
14430	1	1	fl oz	36.2	\N	\N
14430	2	1	can (12 fl oz)	435	\N	\N
14431	1	1	fl oz	29.6	\N	\N
14431	2	8	fl oz	237	\N	\N
14432	1	1	fl oz	29.6	\N	\N
14432	2	1	bottle 11.2 fl oz	331	\N	\N
14432	3	1	bottle 500 ml	500	\N	\N
14432	4	1	bottle 25 fl oz	739	\N	\N
14433	1	1	fl oz	29.6	\N	\N
14433	2	1	bottle 16.9 fl oz i	500	\N	\N
14433	3	1	bottle 24 fl oz	710	\N	\N
14434	1	1	fl oz	29.6	\N	\N
14434	2	1	bottle 16.9 fl oz	500	\N	\N
14434	3	1	bottle 12 fl oz	355	\N	\N
14434	4	1	bottle 20 fl oz	591	\N	\N
14436	1	1	fl oz	31.6	\N	\N
14436	2	1	cup (8 fl oz)	253	\N	\N
14437	1	1	fl oz	29.6	\N	\N
14437	2	1	bottle 16.9 fl oz	500	\N	\N
14437	3	1	bottle 24 fl oz	710	\N	\N
14438	1	1	fl oz	29.6	\N	\N
14438	2	1	bottle 8 fl oz	237	\N	\N
14438	3	1	bottle 500 ml	500	\N	\N
14439	1	1	fl oz	29.6	\N	\N
14440	1	1	fl oz	29.6	\N	\N
14440	2	1	bottle 8.5 fl oz	251	\N	\N
14450	1	1	scoop powder	23	9	1.009
14450	2	1	cup powder	207	9	6.466
14460	1	1	fl oz	30.5	\N	\N
14460	2	8	fl oz	244	1	\N
14460	3	1	bottle	609	\N	\N
14461	1	1	fl oz	30.5	\N	\N
14461	2	8	fl oz	244	2	\N
14461	3	12	fl oz	365	1	\N
14462	1	1	fl oz	29.6	\N	\N
14462	2	1	bottle 16.9 fl oz	501	\N	\N
14462	3	1	bottle 12 fl oz	356	\N	\N
14462	4	1	bottle 23.7 fl oz	703	\N	\N
14475	1	1	fl oz	30.6	\N	\N
14475	2	8	bottle 8 fl oz	227	1	\N
14475	3	1	bottle 12 fl oz	368	\N	\N
14475	4	1	bottle 20 fl oz	613	\N	\N
14476	1	1	fl oz	30.6	\N	\N
14476	2	1	bottle 8 fl oz	245	2	\N
14476	3	1	bottle 12 fl oz	367	1	\N
14530	1	1	fl oz	32.3	\N	\N
14531	1	1	fl oz	30.4	\N	\N
14531	2	1	portion (2 oz mix + 1.5 oz whiskey)	106	\N	\N
14531	3	2	fl oz	65	\N	\N
14532	1	1	fl oz	27.8	\N	\N
14532	2	1.5	fl oz	42	\N	\N
14533	1	1	fl oz	27.8	\N	\N
14533	2	1.5	fl oz	42	\N	\N
14534	1	1	fl oz	34.8	\N	\N
14534	2	1.5	fl oz	52	\N	\N
14536	1	1	fl oz	29.5	\N	\N
14536	2	1	glass (3.5 fl oz)	103	\N	\N
14537	1	1	fl oz	29.6	\N	\N
14537	2	1	can (12 fl oz)	355	\N	\N
14538	1	1	envelope  Swiss Miss (.53 oz)	15.0	\N	\N
14538	2	1	packet (0.675 oz)	19	\N	\N
14541	1	1	fl oz	32.7	\N	\N
14541	2	8	fl oz	262	\N	\N
14542	1	1	fl oz	36.4	\N	\N
14542	2	1	can (12 fl oz)	437	\N	\N
14542	3	1	can (6 fl oz)	218	\N	\N
14543	1	1	fl oz	30.9	\N	\N
14543	2	1	bottle 8 fl oz	247	\N	\N
14544	1	1	fl oz	29.6	\N	\N
14544	2	6	fl oz	178	\N	\N
14545	1	1	fl oz	29.6	\N	\N
14545	2	6	fl oz	178	\N	\N
14545	3	1	cup (8 fl oz)	237	\N	\N
14548	1	1	serving (3 heaping tsp)	23	\N	\N
14548	2	1	cup	182	\N	\N
14550	1	1	fl oz	27.8	\N	\N
14550	2	1	Jigger 1.5 fl oz	42	\N	\N
14551	1	1	fl oz	27.8	\N	\N
14551	2	1.5	fl oz	42	\N	\N
14552	1	1	fl oz	31.0	\N	\N
14552	2	1	can or bottle (16 fl oz)	492	\N	\N
14552	3	1	can (12 fl oz)	369	\N	\N
14553	1	1	fl oz	29.0	\N	\N
14555	1	1	fl oz	29.6	1	\N
14555	2	1	cup	237	2	\N
14555	3	1	ml	1.0	28	\N
14557	1	1	serving	22	1	\N
14558	1	1	serving	266	\N	\N
14559	1	1	fl oz	29.6	\N	\N
14559	2	1	bottle 11.2 fl oz	331	\N	\N
14559	3	1	bottle 16.9 fl oz	500	\N	\N
14599	1	8	fl oz	237	4	0
14599	2	12	fl oz	355	1	\N
14601	1	1	fl oz	29.6	\N	\N
14602	1	1	fl oz	29.4	\N	\N
14602	2	1	serving 5 fl oz	147	\N	\N
14604	1	1	fl oz	29.6	\N	\N
14604	2	1	serving (8 fl oz)	237	\N	\N
14604	3	1	ml	1.1	4	0
14605	1	8	fl oz (1 NLEA serving)	237	1	\N
14605	2	1	serving	237	2	\N
14607	1	8	fl oz	243	1	\N
14608	1	1	serving 8 oz	238	1	\N
14609	1	1	serving	238	1	\N
14610	1	1	serving 8 oz	238	1	\N
14611	1	1	serving 8 oz	243	1	\N
14612	1	1	serving 8 oz	243	1	\N
14613	1	1	serving 8 oz	243	1	\N
14614	1	1	serving 8 oz	243	1	\N
14615	1	1	serving 8 oz	243	1	\N
14616	1	1	serving 8 oz	243	1	\N
14617	1	1	serving 8 oz	243	1	\N
14618	1	1	serving 8 oz	243	1	\N
14619	1	1	serving 8 oz	243	1	\N
14620	1	1	serving 8 oz	246	1	\N
14621	1	1	serving 8 oz	246	1	\N
14622	1	1	serving 8 oz	246	1	\N
14623	1	1	serving 8 oz	246	1	\N
14625	1	1	serving	240	1	\N
14626	1	1	serving 8 fluid oz	240	1	\N
14626	2	1	can	480	1	\N
14627	1	1	serving	240	1	\N
14628	1	8	fl oz	240	\N	\N
14629	1	1	fl oz	31.0	10	0.149
14629	2	8	fl oz	240	1	\N
14629	3	1	can	480	1	\N
14630	1	8	fl oz	240	1	\N
14631	1	1	tbsp	7.8	9	0.232
14631	2	1	cup	118	3	0.252
14632	1	1	cup	158	3	0.361
14632	2	1	can	391	8	0.763
14633	1	1	serving	238	1	\N
14634	1	1	cup	244	1	\N
14635	1	1	serving 8 oz	246	3	0
14636	1	1	container	209	1	\N
14636	2	1	ml	1.0	256	\N
14637	1	1	pouch	200	1	\N
14638	1	1	cup	228	3	10.815
14639	1	8	fl oz (approximate weight, 1 serving)	240	3	0
14640	1	1	oz	31	\N	\N
14640	2	8	fl oz (1 serving)	246	1	\N
14641	1	1	serving (8 fl oz)	246	1	\N
14641	2	12	fl oz	360	1	\N
14644	1	8	fl oz	237	5	0
14645	1	1	cup (8 fl oz)	238	\N	\N
14646	1	1	cup (8 fl oz)	238	\N	\N
14647	1	8	fl oz	240	1	\N
14647	2	1	fl oz	31.1	8	0.407
14648	1	8	fl oz	237	4	1.705
14649	1	8	fl oz	237	\N	\N
14651	1	1	cup (8 fl oz)	238	\N	\N
14654	1	1	tbsp	10.0	\N	\N
14654	2	1	serving	20	\N	\N
15001	1	3	oz	85	\N	\N
15002	1	1	oz, boneless	28.35	\N	\N
15002	2	1	anchovy	4.0	\N	\N
15002	3	1	can (2 oz)	45	\N	\N
15002	4	5	anchovies	20	\N	\N
15003	1	1	fillet	79	\N	\N
15003	2	3	oz	85	\N	\N
15004	1	3	oz	85	\N	\N
15004	2	1	fillet	159	\N	\N
15005	1	1	fillet	150	\N	\N
15005	2	3	oz	85	\N	\N
15006	1	1	fillet	116	\N	\N
15006	2	3	oz	85	\N	\N
15007	1	1	fillet	32	\N	\N
15007	2	3	oz	85	\N	\N
15008	1	3	oz	85	\N	\N
15008	2	1	fillet	218	\N	\N
15009	1	3	oz	85	\N	\N
15009	2	1	fillet	170	\N	\N
15010	1	3	oz	85	\N	\N
15010	2	1	fillet	159	\N	\N
15011	1	1	fillet	87	\N	\N
15011	2	3	oz	85	\N	\N
15012	1	1	tbsp	16	\N	\N
15012	2	1	oz	28.35	\N	\N
15013	1	1	fillet	79	\N	\N
15013	2	3	oz	85	\N	\N
15014	1	1	oz	28.35	\N	\N
15014	2	3	oz	85	\N	\N
15015	1	3	oz	85	\N	\N
15015	2	1	fillet	231	\N	\N
15016	1	3	oz	85	\N	\N
15016	2	1	fillet	180	\N	\N
15017	1	3	oz	85	\N	\N
15017	2	1	can	312	\N	\N
15018	1	1	oz	28.35	\N	\N
15018	2	1	piece (5-1/2"" x 1-1/2"" x 1/2"")	80	\N	\N
15018	3	3	oz	85	\N	\N
15019	1	1	fillet	116	\N	\N
15019	2	3	oz	85	\N	\N
15020	1	1	fillet	79	\N	\N
15020	2	3	oz	85	\N	\N
15021	1	1	fillet	87	\N	\N
15021	2	3	oz	85	\N	\N
15022	1	1	fillet	122	\N	\N
15022	2	3	oz	85	\N	\N
15023	1	3	oz	85	\N	\N
15023	2	1	fillet	204	\N	\N
15024	1	3	oz	85	\N	\N
15024	2	1	fillet	198	\N	\N
15025	1	3	oz	85	\N	\N
15025	2	1	fillet	204	\N	\N
15026	1	1	oz, boneless	28.35	\N	\N
15026	2	1	oz with bone (yield after bone removed)	22	\N	\N
15026	3	1	cubic inch, boneless	17	\N	\N
15026	4	1	fillet	159	\N	\N
15026	5	3	oz	85	\N	\N
15027	1	1	piece (4"" x 2"" x 1/2"")	57	\N	\N
15027	2	1	stick (4"" x 1"" x 1/2"")	28	\N	\N
15028	1	1	oz, boneless	28.35	\N	\N
15028	2	1	fillet	163	\N	\N
15028	3	3	oz	85	\N	\N
15029	1	1	fillet	127	\N	\N
15029	2	3	oz	85	\N	\N
15030	1	1	piece	42	\N	\N
15031	1	3	oz	85	\N	\N
15031	2	1	fillet	259	\N	\N
15032	1	3	oz	85	\N	\N
15032	2	1	fillet	202	\N	\N
15033	1	3	oz	85	\N	\N
15033	2	1	fillet	193	\N	\N
15034	1	1	fillet	150	\N	\N
15034	2	3	oz	85	\N	\N
15035	1	1	oz, boneless	28.35	\N	\N
15035	2	1	cubic inch, boneless	17	\N	\N
15035	3	3	oz	85	\N	\N
15036	1	3	oz	85	\N	\N
15036	2	0.5	fillet	204	\N	\N
15037	1	3	oz	85	\N	\N
15037	2	0.5	fillet	159	\N	\N
15038	1	3	oz	85	\N	\N
15038	2	0.5	fillet	204	\N	\N
15039	1	1	oz, boneless	28.35	\N	\N
15039	2	1	fillet	184	\N	\N
15039	3	3	oz	85	\N	\N
15040	1	1	fillet	143	\N	\N
15040	2	3	oz	85	\N	\N
15041	1	1	cup	140	\N	\N
15041	2	1	oz, boneless	28.35	\N	\N
15041	3	1	cubic inch	20	\N	\N
15041	4	1	piece (1-3/4"" x 7/8"" x 1/2"")	15.0	\N	\N
15042	1	1	oz, boneless	28.35	\N	\N
15042	2	1	cubic inch, boneless	17	\N	\N
15042	3	1	fillet, large (7"" x 2-1/4"" x 1/4"")	65	\N	\N
15042	4	1	fillet, medium (5"" x 1-3/4"" x 1/4"")	40	\N	\N
15042	5	1	fillet, small (2-3/8"" x 1-3/8"" x 1/4"")	20	\N	\N
15043	1	3	oz	85	\N	\N
15043	2	1	fillet	184	\N	\N
15044	1	3	oz	85	\N	\N
15044	2	1	fillet	193	\N	\N
15045	1	3	oz	85	\N	\N
15045	2	0.5	fillet	193	\N	\N
15046	1	1	fillet	112	\N	\N
15046	2	3	oz	85	\N	\N
15047	1	1	fillet	88	\N	\N
15047	2	3	oz	85	\N	\N
15048	1	1	oz, boneless	28.35	\N	\N
15048	2	1	cup	190	\N	\N
15048	3	1	cubic inch	16	\N	\N
15048	4	1	can (15 oz)	361	\N	\N
15049	1	3	oz	85	\N	\N
15049	2	0.5	fillet	198	\N	\N
15050	1	3	oz	85	\N	\N
15050	2	1	fillet	225	\N	\N
15051	1	3	oz	85	\N	\N
15051	2	1	fillet	187	\N	\N
15052	1	1	fillet	146	\N	\N
15052	2	3	oz	85	\N	\N
15053	1	3	oz	85	\N	\N
15054	1	3	oz	85	\N	\N
15055	1	1	oz	28.35	\N	\N
15055	2	1	fillet	119	\N	\N
15055	3	3	oz	85	\N	\N
15056	1	1	fillet	93	\N	\N
15056	2	3	oz	85	\N	\N
15057	1	1	oz, boneless	28.35	\N	\N
15057	2	1	fillet	64	\N	\N
15057	3	3	oz	85	\N	\N
15058	1	1	fillet	50	\N	\N
15058	2	3	oz	85	\N	\N
15059	1	3	oz	85	\N	\N
15059	2	0.5	fillet	176	\N	\N
15060	1	1	fillet	60	\N	\N
15060	2	3	oz	85	\N	\N
15061	1	1	fillet	46	\N	\N
15061	2	3	oz	85	\N	\N
15062	1	3	oz	85	\N	\N
15062	2	0.5	fillet	198	\N	\N
15063	1	3	oz	85	\N	\N
15063	2	0.5	fillet	155	\N	\N
15064	1	3	oz	85	\N	\N
15064	2	1	fillet	159	\N	\N
15065	1	3	oz	85	\N	\N
15065	2	0.5	fillet	193	\N	\N
15066	1	1	fillet	77	\N	\N
15066	2	3	oz	85	\N	\N
15067	1	1	fillet	60	\N	\N
15067	2	3	oz	85	\N	\N
15068	1	1	oz, boneless	28.35	\N	\N
15068	2	1	fillet	112	\N	\N
15068	3	3	oz	85	\N	\N
15069	1	1	fillet	88	\N	\N
15069	2	3	oz	85	\N	\N
15070	1	3	oz	85	\N	\N
15070	2	1	fillet	191	\N	\N
15071	1	1	fillet	149	\N	\N
15071	2	3	oz	85	\N	\N
15072	1	1	tbsp	14.0	\N	\N
15072	2	1	oz	28.35	\N	\N
15072	3	1	can (8 oz), solids and liquid	227	\N	\N
15072	4	3	oz	85	\N	\N
15073	1	3	oz	85	\N	\N
15074	1	3	oz	85	\N	\N
15074	2	0.5	fillet	193	\N	\N
15075	1	1	oz	28.35	\N	\N
15075	2	3	oz	85	\N	\N
15076	1	3	oz	85	\N	\N
15076	2	0.5	fillet	198	\N	\N
15077	1	1	oz, boneless	28.35	\N	\N
15077	2	3	oz	85	\N	\N
15077	3	1	cubic inch, boneless	17	\N	\N
15077	4	1	cup, cooked	136	\N	\N
15078	1	3	oz	85	\N	\N
15078	2	0.5	fillet	198	\N	\N
15079	1	3	oz	85	\N	\N
15079	2	0.5	fillet	198	\N	\N
15080	1	3	oz	85	\N	\N
15080	2	1	can	369	\N	\N
15081	1	3	oz	85	\N	\N
15081	2	0.5	fillet	198	\N	\N
15082	1	3	oz	85	\N	\N
15082	2	0.5	fillet	155	\N	\N
15083	1	3	oz	85	\N	\N
15083	2	0.5	fillet	159	\N	\N
15084	1	3	oz	85	\N	\N
15084	2	1	can	411	17	7.575
15085	1	1	oz, boneless	28.35	\N	\N
15085	2	0.5	fillet	198	\N	\N
15085	3	3	oz	85	\N	\N
15086	1	3	oz	85	\N	\N
15086	2	0.5	fillet	155	\N	\N
15087	1	3	oz	85	\N	\N
15087	2	1	can	337	12	35.383
15088	1	1	cup, drained	149	\N	\N
15088	2	1	oz	28.35	\N	\N
15088	3	1	cubic inch	16	\N	\N
15088	4	1	can (3.75 oz)	92	\N	\N
15088	5	1	small (2-2/3"" x 1/2"" x 1/4"")	12.0	\N	\N
15088	6	2	sardines	24	\N	\N
15089	1	1	cup	89	\N	\N
15089	2	1	can	370	\N	\N
15089	3	1	sardine	38	\N	\N
15090	1	3	oz	85	\N	\N
15090	2	1	oz, boneless	28.35	\N	\N
15090	3	1	fillet	64	\N	\N
15090	4	1	cup	166	\N	\N
15091	1	1	fillet	129	\N	\N
15091	2	3	oz	85	\N	\N
15092	1	1	fillet	101	\N	\N
15092	2	3	oz	85	\N	\N
15093	1	3	oz	85	\N	\N
15093	2	1	fillet	238	\N	\N
15094	1	3	oz	85	\N	\N
15094	2	1	fillet	184	\N	\N
15095	1	3	oz	85	\N	\N
15096	1	3	oz	85	\N	\N
15097	1	3	oz	85	\N	\N
15097	2	1	fillet	238	\N	\N
15098	1	3	oz	85	\N	\N
15098	2	1	fillet	186	\N	\N
15099	1	3	oz	85	\N	\N
15100	1	3	oz	85	\N	\N
15101	1	3	oz	85	\N	\N
15101	2	1	fillet	218	\N	\N
15102	1	3	oz	85	\N	\N
15102	2	1	fillet	170	\N	\N
15103	1	1	fillet	64	\N	\N
15103	2	3	oz	85	\N	\N
15104	1	3	oz	85	\N	\N
15105	1	3	oz	85	\N	\N
15105	2	1	cup, cooked	136	\N	\N
15105	3	1	piece (4-1/2"" x 2-1/8"" x 7/8"")	145	\N	\N
15105	4	1	oz, boneless	28.35	\N	\N
15105	5	1	cubic inch, boneless	17	\N	\N
15106	1	1	oz	28.35	\N	\N
15106	2	3	oz	85	\N	\N
15107	1	3	oz	85	\N	\N
15107	2	1	fillet	159	\N	\N
15108	1	1	fillet	48	\N	\N
15108	2	3	oz	85	\N	\N
15109	1	1	oz	28.35	\N	\N
15109	2	3	oz	85	\N	\N
15110	1	3	oz	85	\N	\N
15110	2	1	piece (4-1/2"" x 2-1/8"" x 7/8"")	136	\N	\N
15111	1	3	oz	85	\N	\N
15111	2	1	piece	106	\N	\N
15112	1	3	oz	85	\N	\N
15112	2	0.5	fillet	193	\N	\N
15113	1	0.5	fillet	150	\N	\N
15113	2	3	oz	85	\N	\N
15114	1	1	fillet	79	\N	\N
15114	2	3	oz	85	\N	\N
15115	1	3	oz	85	\N	\N
15115	2	1	fillet	159	\N	\N
15116	1	1	fillet	143	\N	\N
15116	2	3	oz	85	\N	\N
15117	1	3	oz	85	\N	\N
15118	1	3	oz	85	\N	\N
15119	1	1	cup, solid or chunks	146	\N	\N
15119	2	1	oz	28.35	\N	\N
15119	3	1	can	171	\N	\N
15119	4	3	oz	85	\N	\N
15119	5	1	can (12.5 oz), drained	321	\N	\N
15121	1	1	oz	28.35	\N	\N
15121	2	3	oz	85	\N	\N
15121	3	1	can	165	\N	\N
15121	4	1	cup, solid or chunks	154	\N	\N
15121	5	1	can (12.5 oz), drained	315	\N	\N
15123	1	3	oz	85	\N	\N
15123	2	0.5	fillet	198	\N	\N
15124	1	3	oz	85	\N	\N
15124	2	1	can	178	\N	\N
15126	1	3	oz	85	\N	\N
15126	2	1	can	172	\N	\N
15127	1	1	oz, boneless	28.35	\N	\N
15127	2	1	cubic inch, boneless	16	\N	\N
15127	3	3	oz	85	\N	\N
15128	1	3	oz	85	\N	\N
15128	2	1	cup	205	\N	\N
15129	1	3	oz	85	\N	\N
15129	2	0.5	fillet	204	\N	\N
15130	1	3	oz	85	\N	\N
15130	2	1	fillet	198	\N	\N
15131	1	1	cup, cooked	136	\N	\N
15131	2	1	oz, boneless	28.35	\N	\N
15131	3	1	cubic inch, boneless	17	\N	\N
15131	4	3	oz	85	\N	\N
15132	1	1	fillet	92	\N	\N
15132	2	3	oz	85	\N	\N
15133	1	1	fillet	72	\N	\N
15133	2	3	oz	85	\N	\N
15134	1	3	oz	85	\N	\N
15134	2	0.5	fillet	153	\N	\N
15135	1	3	oz	85	\N	\N
15135	2	0.5	fillet	187	\N	\N
15136	1	3	oz	85	\N	\N
15136	2	1	leg	172	\N	\N
15137	1	1	leg	134	\N	\N
15137	2	3	oz	85	\N	\N
15138	1	3	oz	85	\N	\N
15139	1	3	oz	85	\N	\N
15139	2	1	crab	21	\N	\N
15140	1	1	cup, flaked and pieces	118	\N	\N
15140	2	1	cup (not packed)	135	\N	\N
15140	3	1	oz	28.35	\N	\N
15140	4	3	oz	85	\N	\N
15141	1	1	cup	135	\N	\N
15141	2	1	oz	28.35	\N	\N
15141	3	1	can (6.5 oz), drained	125	\N	\N
15141	4	3	oz	85	\N	\N
15142	1	1	cake	60	\N	\N
15143	1	3	oz	85	\N	\N
15143	2	1	crab	163	\N	\N
15144	1	3	oz	85	\N	\N
15145	1	3	oz	85	\N	\N
15145	2	8	crayfish	27	\N	\N
15146	1	3	oz	85	\N	\N
15147	1	1	lobster	150	\N	\N
15147	2	3	oz	85	\N	\N
15148	1	1	cup	145	\N	\N
15148	2	3	oz	85	\N	\N
15149	1	1	medium	6.0	\N	\N
15149	2	1	small	5.0	\N	\N
15149	3	3	oz	85	\N	\N
15149	4	4	large	28	\N	\N
15150	1	3	oz	85	\N	\N
15150	2	4	large	30	\N	\N
15151	1	3	oz	85	\N	\N
15151	2	4	large	22	\N	\N
15152	1	1	cup	128	\N	\N
15152	2	1	oz	28.35	\N	\N
15152	3	1	can (4.5 oz), drained	128	\N	\N
15152	4	10	shrimp	32	\N	\N
15152	5	3	oz	85	\N	\N
15153	1	3	oz	85	\N	\N
15154	1	3	oz	85	\N	\N
15154	2	1	lobster	209	\N	\N
15155	1	3	oz	85	\N	\N
15156	1	3	oz	85	\N	\N
15157	1	3	oz	85	\N	\N
15157	2	1	large	20	\N	\N
15157	3	1	lb (with shell), yield after shell removed	68.0	\N	\N
15157	4	1	medium	14.5	\N	\N
15157	5	1	small	9.0	\N	\N
15157	6	1	cup (with liquid and clams)	227	\N	\N
15158	1	3	oz	85	\N	\N
15158	2	20	small	188	\N	\N
15159	1	3	oz	85	\N	\N
15159	2	20	small	190	\N	\N
15160	1	3	oz	85	\N	\N
15160	2	1	cup	160	\N	\N
15162	1	3	oz	85	\N	\N
15162	2	1	cup	240	\N	\N
15163	1	3	oz	85	\N	\N
15164	1	1	cup	150	\N	\N
15164	2	1	oz	28.35	\N	\N
15164	3	1	large	20	\N	\N
15164	4	1	medium	16	\N	\N
15164	5	1	small	10.0	\N	\N
15164	6	3	oz	85	\N	\N
15165	1	3	oz	85	\N	\N
15166	1	3	oz	85	\N	\N
15167	1	6	medium	84	\N	\N
15167	2	1	cup	248	\N	\N
15168	1	3	oz	85	\N	\N
15168	2	6	medium	88	\N	\N
15169	1	3	oz	85	\N	\N
15169	2	6	medium	42	\N	\N
15170	1	3	oz	85	\N	\N
15170	2	1	cup, undrained	248	\N	\N
15170	3	1	oz, drained	23	\N	\N
15170	4	1	can (12 oz), oysters and liquid	272	\N	\N
15170	5	1	oyster	8.0	\N	\N
15170	6	1	cup, drained	162	\N	\N
15171	1	1	medium	50	\N	\N
15171	2	3	oz	85	\N	\N
15172	1	1	unit 2 large or 5 small	30	\N	\N
15172	2	3	oz	85	\N	\N
15173	1	2	large	31	\N	\N
15174	1	3	oz	85	\N	\N
15175	1	1	oz, boneless	28.35	\N	\N
15175	2	3	oz	85	\N	\N
15176	1	3	oz	85	\N	\N
15177	1	3	oz	85	\N	\N
15178	1	3	oz	85	\N	\N
15179	1	1	oz	28.35	\N	\N
15179	2	3	oz	85	\N	\N
15180	1	3	oz	85	\N	\N
15180	2	1	can	369	\N	\N
15181	1	3	oz	85	\N	\N
15181	2	1	can	454	\N	\N
15182	1	3	oz	85	\N	\N
15182	2	1	can	369	\N	\N
15183	1	3	oz	85	\N	\N
15183	2	1	can	171	\N	\N
15184	1	3	oz	85	\N	\N
15184	2	1	can	165	\N	\N
15185	1	3	oz	85	\N	\N
15185	2	1	can	178	\N	\N
15186	1	3	oz	85	\N	\N
15186	2	1	can	172	\N	\N
15187	1	1	fillet	62	\N	\N
15187	2	3	oz	85	\N	\N
15188	1	1	fillet	124	\N	\N
15188	2	3	oz	85	\N	\N
15189	1	1	fillet	117	\N	\N
15189	2	3	oz	85	\N	\N
15190	1	1	fillet	90	\N	\N
15190	2	3	oz	85	\N	\N
15191	1	1	fillet	25	\N	\N
15191	2	3	oz	85	\N	\N
15192	1	1	fillet	90	\N	\N
15192	2	3	oz	85	\N	\N
15193	1	1	fillet	95	\N	\N
15193	2	3	oz	85	\N	\N
15194	1	3	oz	85	\N	\N
15194	2	1	fillet	159	\N	\N
15195	1	3	oz	85	\N	\N
15195	2	1	fillet	154	\N	\N
15196	1	3	oz	85	\N	\N
15196	2	0.5	fillet	159	\N	\N
15197	1	1	fillet	144	\N	\N
15197	2	3	oz	85	\N	\N
15198	1	3	oz	85	\N	\N
15198	2	1	fillet	151	\N	\N
15199	1	3	oz	85	\N	\N
15199	2	0.5	fillet	151	\N	\N
15200	1	3	oz	85	\N	\N
15200	2	0.5	fillet	154	\N	\N
15201	1	1	oz, boneless	28.35	\N	\N
15201	2	1	cubic inch, boneless	17	\N	\N
15201	3	1	fillet	176	\N	\N
15201	4	3	oz	85	\N	\N
15202	1	3	oz	85	\N	\N
15203	1	3	oz	85	\N	\N
15204	1	1	fillet	124	\N	\N
15204	2	3	oz	85	\N	\N
15205	1	3	oz	85	\N	\N
15205	2	0.5	fillet	151	\N	\N
15206	1	0.5	fillet	137	\N	\N
15206	2	3	oz	85	\N	\N
15207	1	1	oz	28.35	\N	\N
15207	2	3	oz	85	\N	\N
15208	1	3	oz	85	\N	\N
15208	2	0.5	fillet	151	\N	\N
15209	1	3	oz	85	\N	\N
15209	2	0.5	fillet	154	\N	\N
15210	1	3	oz	85	\N	\N
15210	2	0.5	fillet	154	\N	\N
15211	1	3	oz	85	\N	\N
15211	2	0.5	fillet	154	\N	\N
15212	1	3	oz	85	\N	\N
15212	2	0.5	fillet	124	\N	\N
15213	1	1	fillet	50	\N	\N
15213	2	3	oz	85	\N	\N
15214	1	3	oz	85	\N	\N
15214	2	1	fillet	186	\N	\N
15215	1	1	fillet	144	\N	\N
15215	2	3	oz	85	\N	\N
15216	1	1	fillet	50	\N	\N
15216	2	3	oz	85	\N	\N
15217	1	1	fillet	124	\N	\N
15217	2	3	oz	85	\N	\N
15218	1	1	fillet	37	\N	\N
15218	2	3	oz	85	\N	\N
15219	1	1	fillet	62	\N	\N
15219	2	3	oz	85	\N	\N
15220	1	3	oz	85	\N	\N
15220	2	0.5	fillet	154	\N	\N
15221	1	3	oz	85	\N	\N
15222	1	3	oz	85	\N	\N
15222	2	0.5	fillet	159	\N	\N
15223	1	3	oz	85	\N	\N
15223	2	1	fillet	154	\N	\N
15224	1	0.5	fillet	119	\N	\N
15224	2	3	oz	85	\N	\N
15225	1	0.5	fillet	146	\N	\N
15225	2	3	oz	85	\N	\N
15226	1	3	oz	85	\N	\N
15226	2	1	crab	127	\N	\N
15227	1	3	oz	85	\N	\N
15228	1	3	oz	85	\N	\N
15228	2	1	lobster	163	\N	\N
15229	1	3	oz	85	\N	\N
15230	1	3	oz	85	\N	\N
15231	1	1	medium	25	\N	\N
15231	2	3	oz	85	\N	\N
15232	1	3	oz	85	\N	\N
15233	1	1	fillet	143	\N	\N
15233	2	3	oz	85	\N	\N
15234	1	3	oz	85	\N	\N
15234	2	1	fillet	159	\N	\N
15235	1	1	fillet	143	\N	\N
15235	2	3	oz	85	\N	\N
15236	1	3	oz	85	\N	\N
15236	2	0.5	fillet	198	\N	\N
15237	1	3	oz	85	\N	\N
15237	2	0.5	fillet	178	\N	\N
15238	1	3	oz	85	\N	\N
15238	2	1	fillet	159	\N	\N
15239	1	1	fillet	143	\N	\N
15239	2	3	oz	85	\N	\N
15240	1	1	fillet	79	\N	\N
15240	2	3	oz	85	\N	\N
15241	1	1	fillet	71	\N	\N
15241	2	3	oz	85	\N	\N
15242	1	3	oz	85	\N	\N
15242	2	8	crayfish	27	\N	\N
15243	1	3	oz	85	\N	\N
15244	1	3	oz	85	\N	\N
15244	2	6	medium	59	\N	\N
15245	1	3	oz	85	\N	\N
15245	2	6	medium	84	\N	\N
15246	1	3	oz	85	\N	\N
15246	2	6	medium	59	\N	\N
15247	1	3	oz	85	\N	\N
15247	2	0.5	fillet	178	\N	\N
15250	1	1	cup, sliced	127	\N	\N
15250	2	1	oz cooked, yield	17	\N	\N
15251	1	1	oz	28.35	\N	\N
15252	1	1	oz	28.35	\N	\N
15253	1	3	oz	85	\N	\N
15253	2	1	can total can contents	417	12	6.621
15260	1	3	oz	85	\N	\N
15260	2	1	can drained solids (total)	315	17	12.987
15261	1	1	fillet	116	43	35.949
15262	1	1	fillet	87	21	33.94
15264	1	3	oz	85	\N	\N
15264	2	1	can drained solids, bone and skin removed	247	12	15.86
15265	1	3	oz	85	\N	\N
15265	2	1	can drained solids, bone and skin removed	242	17	25.225
15266	1	3	oz	85	\N	\N
15267	1	3	oz	85	\N	\N
15268	1	3	oz	85	\N	\N
15269	1	3	oz	85	\N	\N
15270	1	3	oz	85	\N	\N
15271	1	3	oz	85	\N	\N
15274	1	1	filet	149	29	89.043
15274	2	1	fish	332	29	191.505
16001	1	1	cup	197	\N	\N
16002	1	1	cup	230	\N	\N
16003	1	1	cup	296	\N	\N
16004	1	1	slice	14.0	\N	\N
16005	1	1	cup	253	\N	\N
16006	1	1	cup	254	\N	\N
16007	1	1	cup	266	\N	\N
16008	1	1	cup	259	\N	\N
16009	1	1	cup	253	\N	\N
16010	1	1	cup	249	35	8.832
16011	1	1	cup	246	71	\N
16014	1	1	cup	194	\N	\N
16014	2	1	tbsp	12.1	\N	\N
16015	1	1	cup	172	\N	\N
16016	1	1	cup	184	\N	\N
16017	1	1	cup	185	\N	\N
16018	1	1	cup	240	\N	\N
16019	1	1	cup	195	\N	\N
16020	1	1	cup	177	\N	\N
16021	1	1	cup	260	\N	\N
16022	1	1	cup	184	\N	\N
16023	1	1	cup	177	\N	\N
16024	1	1	cup	183	\N	\N
16025	1	1	cup	177	\N	\N
16026	1	1	cup	262	\N	\N
16027	1	1	cup	184	\N	\N
16028	1	1	cup	177	\N	\N
16028	2	1	tbsp	11.0	\N	\N
16029	1	1	cup	256	\N	\N
16030	1	1	cup	184	\N	\N
16031	1	1	cup	177	\N	\N
16032	1	1	cup	184	\N	\N
16032	2	1	tbsp	12.2	\N	\N
16033	1	1	cup	177	\N	\N
16033	2	1	tbsp	11.0	\N	\N
16034	1	1	cup	256	1	\N
16034	2	1	tbsp	16	1	\N
16034	3	1	can	436	4	10.552
16035	1	1	cup	184	\N	\N
16036	1	1	cup	177	\N	\N
16037	1	1	cup	208	\N	\N
16038	1	1	cup	182	\N	\N
16039	1	1	cup	262	\N	\N
16040	1	1	cup	210	\N	\N
16041	1	1	cup	169	\N	\N
16042	1	1	cup	193	\N	\N
16042	2	1	tbsp	12.0	\N	\N
16043	1	1	cup	171	\N	\N
16043	2	1	tbsp	10.6	\N	\N
16044	1	1	cup	240	\N	\N
16044	2	1	can	442	4	11.707
16045	1	1	cup	215	\N	\N
16046	1	1	cup	179	\N	\N
16047	1	1	cup	196	\N	\N
16048	1	1	cup	177	\N	\N
16049	1	1	cup	202	\N	\N
16049	2	1	tbsp	12.6	\N	\N
16050	1	1	cup	179	\N	\N
16050	2	1	tbsp	11.2	\N	\N
16051	1	1	cup	262	\N	\N
16052	1	1	cup	150	\N	\N
16052	2	1	tbsp	9.4	\N	\N
16053	1	1	cup	170	\N	\N
16054	1	1	cup	256	\N	\N
16055	1	1	cup	103	\N	\N
16055	2	1	tbsp	6.0	\N	\N
16056	1	1	cup	200	\N	\N
16056	2	1	tbsp	12.5	\N	\N
16057	1	1	cup	164	\N	\N
16058	1	1	cup	240	\N	\N
16058	2	1	can (total can contents)	448	4	6.339
16059	1	1	cup	256	\N	\N
16059	2	1	tbsp	16	\N	\N
16060	1	1	cup	167	\N	\N
16061	1	1	cup	171	\N	\N
16062	1	1	cup	167	\N	\N
16062	2	1	tbsp	10.5	\N	\N
16063	1	1	cup	171	\N	\N
16064	1	1	cup	240	\N	\N
16065	1	1	cup	240	\N	\N
16067	1	1	cup	210	\N	\N
16068	1	1	cup	194	\N	\N
16069	1	1	cup	192	\N	\N
16069	2	1	tablespoon	12.0	\N	\N
16070	1	1	cup	198	\N	\N
16070	2	1	tbsp	12.3	\N	\N
16071	1	1	cup	178	\N	\N
16071	2	1	tbsp	11.1	\N	\N
16072	1	1	cup	188	\N	\N
16072	2	1	tbsp	11.7	\N	\N
16073	1	1	cup	241	\N	\N
16074	1	1	cup	202	\N	\N
16075	1	1	cup	182	\N	\N
16076	1	1	cup	180	\N	\N
16077	1	1	cup	166	\N	\N
16078	1	1	cup	196	\N	\N
16079	1	1	cup	177	\N	\N
16080	1	1	cup	207	\N	\N
16080	2	1	tbsp	13.0	\N	\N
16081	1	1	cup	202	\N	\N
16082	1	1	cup	140	\N	\N
16083	1	1	cup	207	\N	\N
16084	1	1	cup	180	\N	\N
16084	2	1	oz dry, yield after cooking	69	\N	\N
16085	1	1	cup	197	\N	\N
16085	2	1	lb	453.6	\N	\N
16086	1	1	cup	196	\N	\N
16086	2	1	tbsp	12.2	\N	\N
16087	1	1	oz	28.35	3	0
16087	2	1	cup	146	3	0
16088	1	1	cup in shell, edible yield	63	\N	\N
16088	2	1	cup, shelled	180	\N	\N
16088	3	1	oz shelled	28.35	\N	\N
16088	4	33	nuts	28	\N	\N
16089	1	1	cup, chopped	144	\N	\N
16089	2	1	oz shelled (32 nuts)	28.35	\N	\N
16090	1	1	oz	28.35	\N	\N
16090	2	1	peanut	1.0	\N	\N
16091	1	1	cup	146	\N	\N
16091	2	1	oz	28.35	\N	\N
16092	1	1	cup	147	\N	\N
16092	2	1	oz	28.35	\N	\N
16093	1	1	cup	146	\N	\N
16093	2	1	oz	28.35	\N	\N
16094	1	1	cup	144	\N	\N
16094	2	1	oz	28.35	\N	\N
16095	1	1	cup	146	1	\N
16095	2	1	oz	28.35	\N	\N
16096	1	1	cup	143	\N	\N
16096	2	1	oz	28.35	\N	\N
16097	1	2	tbsp	32	1	\N
16097	2	1	cup	258	1	\N
16098	1	2	tbsp	32	7	0
16098	2	1	cup	258	1	\N
16099	1	1	cup	60	\N	\N
16099	2	1	oz	28.35	\N	\N
16100	1	1	cup	60	\N	\N
16100	2	1	oz	28.35	\N	\N
16101	1	1	cup	205	\N	\N
16102	1	1	cup	168	\N	\N
16103	1	1	cup	238	110	\N
16103	2	1	can	442	13	6.748
16104	1	1	cup	144	\N	\N
16104	2	1	oz cooked, yield	16	\N	\N
16104	3	1	strip	5.0	\N	\N
16106	1	1	cup	88	\N	\N
16106	2	1	oz	28.35	\N	\N
16107	1	1	link	25	\N	\N
16107	2	1	patty	38	\N	\N
16107	3	1	slice	28	\N	\N
16108	1	1	cup	186	1	\N
16109	1	1	cup	172	\N	\N
16109	2	1	tbsp	10.7	\N	\N
16110	1	1	cup	172	\N	\N
16111	1	1	cup	93	\N	\N
16112	1	1	tbsp	17	\N	\N
16112	2	1	cup	275	\N	\N
16113	1	1	cup	175	\N	\N
16114	1	1	cup	166	\N	\N
16115	1	1	cup, stirred	84	\N	\N
16115	2	1	tbsp	5.2	\N	\N
16116	1	1	cup, stirred	85	\N	\N
16117	1	1	cup	105	6	3.534
16117	2	1	tbsp	6.6	2	\N
16118	1	1	cup, stirred	88	\N	\N
16118	2	1	tbsp	5.5	\N	\N
16119	1	1	cup	122	\N	\N
16120	1	1	cup	243	7	0
16120	2	1	fl oz	30.6	\N	\N
16121	1	1	oz	28.35	\N	\N
16122	1	1	oz	28.35	\N	\N
16123	1	1	tbsp	16	1	\N
16123	2	1	tsp	5.3	1	\N
16123	3	1	cup	255	1	\N
16123	4	1	individual packet	8.9	1	\N
16124	1	1	tbsp	18	\N	\N
16124	2	1	tsp	6.0	\N	\N
16125	1	1	tbsp	18	\N	\N
16125	2	1	tsp	6.0	\N	\N
16125	3	0.25	cup	58	\N	\N
16126	1	0.5	cup	126	\N	\N
16126	2	0.25	block	81	\N	\N
16126	3	0.2	block	91	\N	\N
16127	1	1	piece (2-1/2"" x 2-3/4"" x 1"")	120	\N	\N
16127	2	1	cup (1/2"" cubes)	248	\N	\N
16127	3	1	cubic inch	18	\N	\N
16127	4	0.25	block	116	\N	\N
16127	5	0.2	block	90	\N	\N
16128	1	1	piece	17	\N	\N
16129	1	1	oz	28.35	\N	\N
16129	2	1	piece	13.0	\N	\N
16130	1	1	cup	122	\N	\N
16132	1	1	block	11.0	\N	\N
16133	1	1	cup	167	\N	\N
16134	1	1	cup	171	\N	\N
16135	1	1	cup	182	\N	\N
16136	1	1	cup	172	\N	\N
16137	1	1	tablespoon	15.0	\N	\N
16137	2	1	cup	246	\N	\N
16138	1	1	patty (approx 2-1/4"" dia)	17	\N	\N
16139	1	1	cup	243	15	0
16139	2	1	fl oz	30.6	\N	\N
16144	1	1	cup	192	\N	\N
16145	1	1	can drained solids	266	4	8.549
16146	1	1	can drained solids	277	4	13.827
16147	1	1	pattie	70	16	2.309
16149	1	2	tbsp	31	\N	\N
16150	1	2	tablespoon	36	\N	\N
16155	1	2	tbsp	32	\N	\N
16155	2	1	cup	258	\N	\N
16156	1	2	tbsp	32	\N	\N
16156	2	1	cup	258	\N	\N
16157	1	1	cup	92	\N	\N
16158	1	1	tbsp	15.0	\N	\N
16158	2	1	cup	246	\N	\N
16159	1	0.2	block	91	\N	\N
16160	1	0.25	block	122	\N	\N
16161	1	1	slice	84	\N	\N
16162	1	1	slice	84	\N	\N
16163	1	1	slice	84	\N	\N
16164	1	1	slice	84	\N	\N
16165	1	1	slice	84	\N	\N
16166	1	1	cup	243	7	0
16166	2	1	fl oz	30.6	\N	\N
16167	1	2	tbsp	32	\N	\N
16167	2	1	cup	258	\N	\N
16168	1	1	cup	243	9	0
16168	2	1	fl oz	30.6	\N	\N
16171	1	1	cup	242	6	12.64
16171	2	1	can	444	6	7.245
16172	1	1	cup	231	6	5.755
16172	2	1	can	445	6	5.87
16173	1	1	cup	233	12	4.896
16173	2	1	tbsp	15	12	0.742
16200	1	0.5	cup	130	1	\N
16200	2	1	serving	130	1	\N
16201	1	0.5	cup	130	1	\N
16201	2	1	serving	130	1	\N
16202	1	0.5	cup	120	1	\N
16202	2	1	serving	120	1	\N
16203	1	0.5	cup	120	1	\N
16203	2	1	serving	120	1	\N
16204	1	0.5	cup	120	1	\N
16204	2	1	serving	120	1	\N
16210	1	0.2	package	79	1	\N
16211	1	0.2	package	79	1	\N
16212	1	0.2	package	79	1	\N
16213	1	0.2	package	79	1	\N
16214	1	0.2	package	91	1	\N
16215	1	1	cup	243	1	\N
16215	2	1	serving	243	1	\N
16216	1	1	cup	243	1	\N
16216	2	1	serving	243	1	\N
16219	1	1	cup	243	1	\N
16219	2	1	serving	243	1	\N
16222	1	1	cup	243	6	0
16223	1	1	cup	243	4	0
16225	1	1	cup	243	6	0
16227	1	1	cup	243	4	0
16228	1	1	cup	243	2	\N
16229	1	1	cup	243	2	\N
16230	1	1	cup	243	4	0
16231	1	1	cup	243	4	0
16235	1	1	cup	243	1	\N
16236	1	1	cup	243	1	\N
16237	1	1	cup	243	1	\N
16238	1	1	cup	243	1	\N
16239	1	1	cup	243	1	\N
16240	1	1	cup	243	1	\N
16241	1	1	cup	243	1	\N
16242	1	1	cup	243	1	\N
16243	1	1	cup	243	1	\N
16244	1	1	cup	243	1	\N
16245	1	1	cup	243	1	\N
16246	1	0.5	cup	122	1	\N
16247	1	1	cup	243	1	\N
16248	1	1	cup	243	1	\N
16249	1	1	cup	243	1	\N
16250	1	1	container	227	1	\N
16251	1	1	container	170	1	\N
16252	1	1	container	227	1	\N
16253	1	1	container	170	1	\N
16254	1	1	container	170	1	\N
16255	1	1	container	170	1	\N
16256	1	1	container	170	1	\N
16257	1	1	container	170	1	\N
16258	1	1	container	170	1	\N
16259	1	1	container	170	1	\N
16260	1	1	tbsp	15.0	1	\N
16261	1	1	tbsp	15.0	1	\N
16262	1	1	tbsp	15.0	1	\N
16271	1	0.2	package	79	1	\N
16272	1	0.2	package	91	1	\N
16273	1	3	oz	85	1	\N
16274	1	3	oz	85	1	\N
16275	1	3	oz	85	1	\N
16276	1	0.2	package	79	1	\N
16277	1	0.2	package	79	1	\N
16278	1	0.2	package	91	1	\N
16279	1	2	oz	56	1	\N
16279	2	3	oz	84	1	\N
16281	1	2	oz	56	1	\N
16281	2	3	oz	84	1	\N
16302	1	1	cup	230	\N	\N
16315	1	1	cup	172	\N	\N
16316	1	1	cup	240	\N	\N
16317	1	1	cup	185	\N	\N
16320	1	1	cup	177	\N	\N
16323	1	1	cup	177	\N	\N
16325	1	1	cup	177	\N	\N
16326	1	1	cup	262	\N	\N
16328	1	1	cup	177	\N	\N
16331	1	1	cup	177	\N	\N
16333	1	1	cup	177	\N	\N
16335	1	1	cup cup rinsed solids	158	4	8.084
16336	1	1	cup	177	\N	\N
16337	1	1	cup	256	1	\N
16337	2	1	can total can contents	436	4	10.552
16338	1	1	cup	182	\N	\N
16341	1	1	cup	169	\N	\N
16343	1	1	cup	171	\N	\N
16345	1	1	cup	169	4	1.711
16345	2	1	can	258	4	3.69
16346	1	1	cup	179	\N	\N
16347	1	1	cup	240	\N	\N
16347	2	1	can total can contents	442	4	11.707
16348	1	1	cup	177	\N	\N
16350	1	1	cup	179	\N	\N
16353	1	1	cup	170	\N	\N
16357	1	1	cup	164	\N	\N
16358	1	1	can drained	253	4	6.506
16359	1	1	can drained, rinsed	254	4	1.996
16359	2	1	cup drained, rinsed	152	4	2.391
16360	1	1	cup	240	1	\N
16360	2	1	can total can contents	448	4	6.339
16361	1	1	cup	171	\N	\N
16363	1	1	cup	171	\N	\N
16368	1	1	cup	194	\N	\N
16370	1	1	cup	198	\N	\N
16372	1	1	cup	188	\N	\N
16375	1	1	cup	182	\N	\N
16377	1	1	cup	166	\N	\N
16379	1	1	cup	177	\N	\N
16381	1	1	cup	202	\N	\N
16384	1	1	cup	180	\N	\N
16386	1	1	cup	196	\N	\N
16389	1	1	cup,	144	\N	\N
16389	2	1	oz shelled (32 nuts)	28.35	\N	\N
16390	1	1	cup	146	\N	\N
16390	2	1	oz	28.35	\N	\N
16390	3	1	peanut	1.0	\N	\N
16392	1	1	cup	147	\N	\N
16392	2	1	oz	28.35	\N	\N
16394	1	1	cup	144	\N	\N
16394	2	1	oz	28.35	\N	\N
16396	1	1	cup	143	\N	\N
16396	2	1	oz	28.35	\N	\N
16397	1	2	tbsp	32	1	\N
16397	2	1	cup	258	1	\N
16398	1	2	tbsp	32	\N	\N
16398	2	1	cup	258	\N	\N
16399	1	1	tbsp	16	4	1.06
16402	1	1	cup	168	\N	\N
16403	1	1	cup	238	84	\N
16403	2	1	tablespoon	16	\N	\N
16409	1	1	cup	172	\N	\N
16410	1	1	cup	172	\N	\N
16420	1	1	oz	28.35	\N	\N
16422	1	1	oz	28.35	\N	\N
16424	1	1	tbsp	14.2	11	1.471
16424	2	1	tsp	4.5	11	0.82
16424	3	1	cup	255	\N	\N
16425	1	1	tbsp	15	7	1.604
16425	2	1	tsp	4.9	7	0.69
16425	3	0.25	cup	58	\N	\N
16426	1	0.5	cup	126	\N	\N
16426	2	0.25	block	81	\N	\N
16427	1	0.5	cup	124	\N	\N
16427	2	0.25	block	116	\N	\N
16428	1	1	piece	17	\N	\N
16429	1	1	piece	13.0	\N	\N
16432	1	1	block	11.0	\N	\N
16434	1	1	cup	171	\N	\N
16436	1	1	cup	172	\N	\N
16500	1	2	links	46	1	\N
16502	1	1	link	51	1	\N
16504	1	6	pieces	80	1	\N
16505	1	1	piece	92	1	\N
16506	1	0.25	cup	55	1	\N
16507	1	1	slice , 5/8""	85	1	\N
16508	1	6	pieces	85	1	\N
16509	1	1	link	35	1	\N
16510	1	1	cup	230	1	\N
16511	1	2	slices	92	1	\N
16512	1	0.25	cup	55	1	\N
16513	1	2	pieces	90	1	\N
16514	1	2	pieces	85	1	\N
16515	1	1	link	31	1	\N
16516	1	2	slices	92	1	\N
16517	1	1	piece	92	1	\N
16518	1	1	link	38	1	\N
16519	1	1	link	48	1	\N
16521	1	0.5	cup	85	1	\N
16522	1	2	slices	72	1	\N
16523	1	0.25	cup	55	1	\N
16524	1	1	link	31	\N	\N
16525	1	2	slices (3/8"" thick)	55	1	\N
16526	1	1	slices , 3/8""	55	1	\N
16527	1	2	slices , 3/8""	55	1	\N
16528	1	1	slice , 3/4""	85	1	\N
16529	1	1	patty	64	1	\N
16531	1	2	links	45	1	\N
16532	1	1	slice , 5/8""	55	1	\N
16533	1	1	slice , 3/8""	55	1	\N
16534	1	1	piece	71	1	\N
16535	1	2	strip	16	1	\N
16536	1	1	slice , 3/8""	55	1	\N
16538	1	1	Patty	38	1	\N
16542	1	2	strips	16	1	\N
16546	1	2	links	45	1	\N
16548	1	1	burger	64	1	\N
16549	1	1	burger	71	1	\N
16551	1	1	burger	67	1	\N
16552	1	1	burger	64	1	\N
16554	1	1	burger	67	1	\N
16555	1	5	Wings	85	1	\N
16556	1	4	nuggets	86	1	\N
16557	1	1	patty	71	1	\N
16560	1	1	dog	71	1	\N
16561	1	4	pieces	76	1	\N
16565	1	0.667	cup	55	1	\N
16570	1	1	patty	71	1	\N
16579	1	1	patty	71	1	\N
16581	1	1	patty	96	1	\N
16584	1	1	patty	71	1	\N
16585	1	1	patty	71	1	\N
16586	1	1	patty	71	1	\N
16588	1	1	patty	67	1	\N
16590	1	1	sauce	142	1	\N
16591	1	1	link	40	1	\N
16592	1	1	burger	64	1	\N
16593	1	1	patty	38	1	\N
16594	1	1	entree	284	1	\N
16596	1	1	burger	114	1	\N
16600	1	1	package	269	1	\N
16601	1	1	patty	67	1	\N
16602	1	5	meatballs	80	1	\N
16603	1	1	biscuit	105	1	\N
16606	1	1	Burger	67	1	\N
16607	1	1	patty	71	1	\N
16608	1	1	patty	71	1	\N
16609	1	1	pattie	38	1	\N
16610	1	1	burger	67	1	\N
16611	1	5	Wings	85	1	\N
16615	1	0.5	cup	56	\N	\N
16616	1	5	nuggets	80	\N	\N
16617	1	1	entree	255	\N	\N
16618	1	1	burger	67	\N	\N
16619	1	1	entree	241	\N	\N
17000	1	3	oz	85	\N	\N
17000	2	1	roast with bone	325	14	103.1
17001	1	1	oz	28.35	\N	\N
17001	2	1	lb	453.6	\N	\N
17002	1	3	oz	85	\N	\N
17002	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	242	\N	\N
17003	1	1	oz	28.35	\N	\N
17003	2	1	lb	453.6	\N	\N
17004	1	3	oz	85	\N	\N
17004	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	187	\N	\N
17005	1	1	oz	28.35	\N	\N
17005	2	1	lb	453.6	\N	\N
17006	1	3	oz	85	\N	\N
17006	2	1	unit, cooked (yield from 1 lb raw meat)	286	\N	\N
17007	1	1	oz	28.35	\N	\N
17007	2	1	lb	453.6	\N	\N
17008	1	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	148	\N	\N
17008	2	3	oz	85	\N	\N
17009	1	1	oz	28.35	\N	\N
17009	2	1	lb	453.6	\N	\N
17010	1	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	128	\N	\N
17010	2	3	oz	85	\N	\N
17011	1	1	oz	28.35	\N	\N
17011	2	1	lb	453.6	\N	\N
17012	1	3	oz	85	\N	\N
17012	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	265	\N	\N
17013	1	1	oz	28.35	\N	\N
17013	2	1	lb	453.6	\N	\N
17014	1	3	oz	85	\N	\N
17014	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	218	\N	\N
17015	1	1	oz	28.35	\N	\N
17015	2	1	lb	453.6	\N	\N
17016	1	3	oz	85	\N	\N
17016	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	269	\N	\N
17017	1	1	oz	28.35	\N	\N
17017	2	1	lb	453.6	\N	\N
17018	1	3	oz	85	\N	\N
17018	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	238	\N	\N
17019	1	1	oz	28.35	\N	\N
17019	2	1	lb	453.6	\N	\N
17020	1	3	oz	85	\N	\N
17020	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	262	\N	\N
17021	1	1	oz	28.35	\N	\N
17021	2	1	lb	453.6	\N	\N
17022	1	3	oz	85	\N	\N
17022	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	201	\N	\N
17023	1	1	oz	28.35	\N	\N
17023	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 120 g)	95	\N	\N
17024	1	3	oz	85	\N	\N
17024	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 120 g)	64	\N	\N
17025	1	3	oz	85	\N	\N
17025	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	269	\N	\N
17026	1	1	oz	28.35	\N	\N
17026	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 120 g)	65	\N	\N
17027	1	3	oz	85	\N	\N
17027	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 120 g)	46	\N	\N
17028	1	3	oz	85	\N	\N
17028	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	193	\N	\N
17029	1	1	oz	28.35	\N	\N
17029	2	1	lb	453.6	\N	\N
17030	1	3	oz	85	\N	\N
17030	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	229	\N	\N
17031	1	3	oz	85	\N	\N
17031	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	255	\N	\N
17032	1	1	oz	28.35	\N	\N
17032	2	1	lb	453.6	\N	\N
17033	1	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	147	\N	\N
17033	2	3	oz	85	\N	\N
17034	1	3	oz	85	\N	\N
17034	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	159	\N	\N
17035	1	1	oz	28.35	\N	\N
17035	2	1	lb	453.6	\N	\N
17036	1	3	oz	85	\N	\N
17036	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	218	\N	\N
17037	1	3	oz	85	\N	\N
17037	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	248	\N	\N
17038	1	3	oz	85	\N	\N
17038	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	269	\N	\N
17039	1	1	oz	28.35	\N	\N
17039	2	1	lb	453.6	\N	\N
17040	1	3	oz	85	\N	\N
17040	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	174	\N	\N
17041	1	3	oz	85	\N	\N
17041	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	202	\N	\N
17042	1	3	oz	85	\N	\N
17042	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	217	\N	\N
17043	1	1	oz	28.35	\N	\N
17043	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 160 g)	133	\N	\N
17044	1	3	oz	85	\N	\N
17044	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 160 g)	70	\N	\N
17045	1	3	oz	85	\N	\N
17045	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 160 g)	93	\N	\N
17046	1	3	oz	85	\N	\N
17046	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	286	\N	\N
17047	1	1	oz	28.35	\N	\N
17047	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 160 g)	101	\N	\N
17048	1	3	oz	85	\N	\N
17048	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 160 g)	55	\N	\N
17049	1	3	oz	85	\N	\N
17049	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 160 g)	74	\N	\N
17050	1	3	oz	85	\N	\N
17050	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	224	\N	\N
17051	1	1	oz	28.35	\N	\N
17051	2	1	lb	453.6	\N	\N
17052	1	3	oz	85	\N	\N
17052	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	209	\N	\N
17053	1	3	oz	85	\N	\N
17053	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	252	\N	\N
17054	1	3	oz	85	\N	\N
17054	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	258	\N	\N
17055	1	1	oz	28.35	\N	\N
17055	2	1	lb	453.6	\N	\N
17056	1	3	oz	85	\N	\N
17056	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	168	\N	\N
17057	1	3	oz	85	\N	\N
17057	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	207	\N	\N
17058	1	3	oz	85	\N	\N
17058	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	210	\N	\N
17059	1	1	oz	28.35	\N	\N
17059	2	1	lb	453.6	\N	\N
17060	1	3	oz	85	\N	\N
17060	2	1	unit, cooked (yield from 1 lb raw meat)	272	\N	\N
17061	1	3	oz	85	\N	\N
17061	2	1	unit, cooked (yield from 1 lb raw meat)	327	\N	\N
17062	1	1	oz	28.35	\N	\N
17062	2	1	lb	453.6	\N	\N
17063	1	3	oz	85	\N	\N
17063	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	222	\N	\N
17064	1	1	oz	28.35	\N	\N
17064	2	1	lb	453.6	\N	\N
17065	1	3	oz	85	\N	\N
17065	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	164	\N	\N
17066	1	1	oz	28.35	\N	\N
17066	2	1	lb	453.6	\N	\N
17067	1	3	oz	85	\N	\N
17067	2	1	unit, cooked (yield from 1 lb raw meat)	286	\N	\N
17068	1	1	serving	115	1	\N
17069	1	1	serving	85	1	\N
17070	1	1	serving	115	1	\N
17071	1	1	serving	85	1	\N
17072	1	1	serving	115	1	\N
17073	1	3	oz	85	\N	\N
17073	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	258	\N	\N
17074	1	1	serving	115	1	\N
17075	1	3	oz	85	\N	\N
17075	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	218	\N	\N
17076	1	1	serving	115	1	\N
17077	1	3	oz	85	\N	\N
17077	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 85 g)	43	\N	\N
17078	1	1	serving	115	1	\N
17079	1	3	oz	85	\N	\N
17079	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 85 g)	30	\N	\N
17080	1	1	serving	115	1	\N
17081	1	1	serving	85	1	\N
17082	1	1	serving	115	1	\N
17083	1	1	serving	85	1	\N
17084	1	1	serving	115	1	\N
17085	1	3	oz	85	\N	\N
17085	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	206	\N	\N
17086	1	1	serving	115	1	\N
17087	1	3	oz	85	\N	\N
17087	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	157	\N	\N
17088	1	1	oz	28.35	\N	\N
17088	2	1	lb	453.6	\N	\N
17089	1	3	oz	85	\N	\N
17089	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	209	\N	\N
17090	1	1	oz	28.35	\N	\N
17090	2	1	lb	453.6	\N	\N
17091	1	3	oz	85	\N	\N
17091	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	192	\N	\N
17092	1	1	oz	28.35	\N	\N
17092	2	1	lb	453.6	\N	\N
17093	1	3	oz	85	\N	\N
17093	2	1	unit, cooked (yield from 1 lb raw meat)	290	\N	\N
17094	1	1	oz	28.35	\N	\N
17094	2	1	lb	453.6	\N	\N
17095	1	3	oz	85	\N	\N
17095	2	1	unit, cooked (yield from 1 lb raw meat)	272	\N	\N
17096	1	3	oz	85	\N	\N
17096	2	1	unit, cooked (yield from 1 lb raw meat)	295	\N	\N
17097	1	3	oz	85	\N	\N
17097	3	1	unit, cooked (yield from 1 lb raw meat)	304	\N	\N
17098	1	3	oz	85	\N	\N
17098	2	1	unit, cooked (yield from 1 lb raw meat)	358	\N	\N
17099	1	1	oz	28.35	\N	\N
17099	2	1	lb	453.6	\N	\N
17100	1	3	oz	85	\N	\N
17100	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	267	\N	\N
17101	1	3	oz	85	\N	\N
17101	2	1	unit, cooked (yield from 1 lb raw meat)	295	\N	\N
17102	1	3	oz	85	\N	\N
17102	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	289	\N	\N
17103	1	3	oz	85	\N	\N
17103	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	351	\N	\N
17104	1	3	oz	85	6	0
17104	2	1	roast	1495	6	327.402
17105	1	3	oz	85	\N	\N
17105	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 195 g)	80	\N	\N
17106	1	3	oz	85	\N	\N
17106	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	229	\N	\N
17107	1	3	oz	85	6	0
17107	2	1	roast	1495	6	327.402
17107	3	1	oz	28.35	\N	\N
17108	1	3	oz	85	\N	\N
17108	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 195 g)	69	\N	\N
17109	1	3	oz	85	\N	\N
17109	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	208	\N	\N
17110	1	1	oz	28.35	\N	\N
17110	2	1	lb	453.6	\N	\N
17111	1	3	oz	85	\N	\N
17111	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	177	\N	\N
17112	1	3	oz	85	\N	\N
17112	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	240	\N	\N
17113	1	1	oz	28.35	\N	\N
17113	2	1	lb	453.6	\N	\N
17114	1	3	oz	85	\N	\N
17114	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	163	\N	\N
17115	1	3	oz	85	\N	\N
17115	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	215	\N	\N
17116	1	1	oz	28.35	\N	\N
17116	2	1	lb	453.6	\N	\N
17117	1	3	oz	85	\N	\N
17117	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	191	\N	\N
17118	1	3	oz	85	\N	\N
17118	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	258	\N	\N
17119	1	1	oz	28.35	\N	\N
17119	2	1	lb	453.6	\N	\N
17120	1	3	oz	85	\N	\N
17120	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	182	\N	\N
17121	1	3	oz	85	\N	\N
17121	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	251	\N	\N
17122	1	1	oz	28.35	\N	\N
17122	2	1	steak, excluding refuse (yield from 1 raw steak, with refuse, weighing 385 g)	304	\N	\N
17123	1	3	oz	85	\N	\N
17123	2	1	steak, excluding refuse (yield from 1 raw steak, with refuse, weighing 385 g)	173	\N	\N
17124	1	3	oz	85	\N	\N
17124	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	283	\N	\N
17125	1	1	oz	28.35	\N	\N
17125	2	1	steak, excluding refuse (yield from 1 raw steak, with refuse, weighing 385 g)	289	\N	\N
17126	1	3	oz	85	\N	\N
17126	2	1	steak, excluding refuse (yield from 1 raw steak, with refuse, weighing 385 g)	160	\N	\N
17127	1	3	oz	85	\N	\N
17127	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	272	\N	\N
17128	1	3	oz	85	6	0
17128	2	1	chop	450	6	95.376
17129	1	3	oz	85	\N	\N
17129	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	186	\N	\N
17130	1	3	oz	85	\N	\N
17130	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	244	\N	\N
17131	1	3	oz	85	6	0
17131	2	1	chop	450	6	95.376
17131	3	1	oz	28.35	\N	\N
17132	1	3	oz	85	\N	\N
17132	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	174	\N	\N
17133	1	3	oz	85	\N	\N
17133	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	236	\N	\N
17134	1	1	oz	28.35	\N	\N
17134	2	1	lb	453.6	\N	\N
17135	1	3	oz	85	\N	\N
17135	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	205	\N	\N
17136	1	3	oz	85	\N	\N
17136	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	269	\N	\N
17137	1	1	oz	28.35	\N	\N
17137	2	1	lb	453.6	\N	\N
17138	1	3	oz	85	\N	\N
17138	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	183	\N	\N
17139	1	3	oz	85	\N	\N
17139	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	251	\N	\N
17140	1	1	oz	28.35	\N	\N
17140	2	1	lb	453.6	\N	\N
17141	1	3	oz	85	\N	\N
17141	2	1	unit, cooked (yield from 1 lb raw meat)	263	\N	\N
17142	1	3	oz	85	\N	\N
17142	2	1	oz	28.35	\N	\N
17142	3	4	oz	113	\N	\N
17143	1	3	oz	85	\N	\N
17143	2	1	unit, cooked (yield from 1 lb raw meat)	299	\N	\N
17144	1	1	oz	28.35	\N	\N
17144	2	1	lb	453.6	\N	\N
17145	1	3	oz	85	\N	\N
17145	2	1	piece, cooked (yield from 1 lb raw meat, boneless)	340	\N	\N
17146	1	1	oz	28.35	\N	\N
17146	2	1	lb	453.6	\N	\N
17147	1	3	oz	85	\N	\N
17147	2	1	piece, cooked (yield from 1 lb raw meat, boneless)	277	\N	\N
17148	1	3	oz	85	\N	\N
17149	1	1	patty (cooked from 4 oz raw)	85	\N	\N
17149	2	1	oz	28.35	\N	\N
17150	1	1	oz	28.35	\N	\N
17150	2	1	lb	453.6	\N	\N
17151	1	3	oz	85	\N	\N
17151	2	1	piece, cooked (yield from 1 lb raw meat, boneless)	313	\N	\N
17152	1	1	oz	28.35	\N	\N
17152	2	1	lb	453.6	\N	\N
17153	1	3	oz	85	\N	\N
17153	2	1	piece, cooked (yield from 1 lb raw meat, boneless)	340	\N	\N
17154	1	1	oz	28	\N	\N
17155	1	3	oz	85	\N	\N
17155	2	1	roast with bone	325	\N	\N
17156	1	1	oz	28.35	\N	\N
17156	2	1	lb	453.6	\N	\N
17157	1	3	oz	85	\N	\N
17157	2	1	piece, cooked (yield from 1 lb raw meat, boneless)	340	\N	\N
17158	1	1	oz	28.35	\N	\N
17158	2	1	lb	453.6	\N	\N
17159	1	3	oz	85	\N	\N
17159	2	1	piece, cooked (yield from 1 lb raw meat, boneless)	340	\N	\N
17160	1	1	oz	28.35	\N	\N
17160	2	1	lb	453.6	\N	\N
17161	1	3	oz	85	\N	\N
17161	2	1	piece, cooked (yield from 1 lb raw meat, boneless)	340	\N	\N
17162	1	1	oz	28.35	\N	\N
17162	2	1	lb	453.6	\N	\N
17163	1	3	oz	85	\N	\N
17163	2	1	piece, cooked (yield from 1 lb raw meat, boneless)	340	\N	\N
17164	1	1	oz	28.35	\N	\N
17164	2	1	lb	453.6	\N	\N
17165	1	3	oz	85	\N	\N
17165	2	1	piece, cooked (yield from 1 lb raw meat, boneless)	340	\N	\N
17166	1	1	oz	28.35	\N	\N
17166	2	1	lb	453.6	\N	\N
17167	1	3	oz	85	\N	\N
17167	2	1	piece, cooked (yield from 1 lb raw meat, boneless)	340	\N	\N
17168	1	1	oz	28.35	\N	\N
17168	2	1	lb	453.6	\N	\N
17169	1	3	oz	85	\N	\N
17169	2	1	piece, cooked (yield from 1 lb raw meat, boneless)	340	\N	\N
17170	1	1	oz	28.35	\N	\N
17170	2	1	lb	453.6	\N	\N
17171	1	3	oz	85	\N	\N
17171	2	1	piece, cooked (yield from 1 lb raw meat, boneless)	340	\N	\N
17172	1	1	oz	28.35	\N	\N
17172	2	1	lb	453.6	\N	\N
17173	1	3	oz	85	\N	\N
17173	2	1	piece, cooked (yield from 1 lb raw meat, boneless)	340	\N	\N
17174	1	1	oz	28.35	\N	\N
17174	2	1	lb	453.6	\N	\N
17175	1	3	oz	85	\N	\N
17175	2	1	piece, cooked (yield from 1 lb raw meat, boneless)	313	\N	\N
17176	1	3	oz	85	\N	\N
17176	2	1	piece, cooked (yield from 1 lb raw meat, boneless)	399	\N	\N
17177	1	1	oz	28.35	\N	\N
17177	2	1	lb	453.6	\N	\N
17178	1	3	oz	85	\N	\N
17178	2	1	piece, cooked (yield from 1 lb raw meat, boneless)	313	\N	\N
17179	1	3	oz	85	\N	\N
17179	2	1	piece, cooked (yield from 1 lb raw meat, boneless)	299	\N	\N
17180	1	1	oz	28.35	\N	\N
17180	2	1	lb	453.6	\N	\N
17181	1	3	oz	85	\N	\N
17181	2	1	piece, cooked (yield from 1 lb raw meat, boneless)	299	\N	\N
17182	1	3	oz	85	\N	\N
17182	2	1	piece, cooked (yield from 1 lb raw meat, boneless)	399	\N	\N
17183	1	1	oz	28.35	\N	\N
17183	2	1	lb	453.6	\N	\N
17184	1	3	oz	85	\N	\N
17184	2	1	piece, cooked (yield from 1 lb raw meat, boneless)	313	\N	\N
17185	1	1	oz	28.35	\N	\N
17185	2	4	oz	113	\N	\N
17186	1	3	oz	85	\N	\N
17186	2	1	unit, cooked (yield from 1 lb raw meat)	347	\N	\N
17187	1	3	oz	85	\N	\N
17187	2	1	unit, cooked (yield from 1 lb raw meat)	240	\N	\N
17188	1	1	oz	28.35	\N	\N
17188	2	4	oz	113	\N	\N
17189	1	3	oz	85	\N	\N
17189	2	1	unit, cooked (yield from 1 lb raw meat)	339	\N	\N
17190	1	3	oz	85	\N	\N
17190	2	1	unit, cooked (yield from 1 lb raw meat)	330	\N	\N
17191	1	1	oz	28.35	\N	\N
17191	2	4	oz	113	\N	\N
17192	1	3	oz	85	\N	\N
17192	2	1	unit, cooked (yield from 1 lb raw meat)	191	\N	\N
17193	1	1	oz	28.35	\N	\N
17193	2	4	oz	113	\N	\N
17194	1	3	oz	85	\N	\N
17194	2	1	unit, cooked (yield from 1 lb raw meat)	198	\N	\N
17195	1	1	oz	28.35	\N	\N
17195	2	4	oz	113	\N	\N
17196	1	3	oz	85	\N	\N
17196	2	1	unit, cooked (yield from 1 lb raw meat)	255	\N	\N
17197	1	1	oz	28.35	\N	\N
17197	2	4	oz	113	\N	\N
17198	1	3	oz	85	\N	\N
17198	2	1	unit, cooked (yield from 1 lb raw meat)	184	\N	\N
17199	1	1	oz	28.35	\N	\N
17199	2	4	oz	113	\N	\N
17200	1	3	oz	85	\N	\N
17200	2	1	unit, cooked (yield from 1 lb raw meat)	336	\N	\N
17201	1	3	oz	85	\N	\N
17201	2	1	unit, cooked (yield from 1 lb raw meat)	322	\N	\N
17202	1	1	oz	28.35	\N	\N
17202	2	1	lb	453.0	\N	\N
17203	1	1	slice	80	5	6.627
17204	1	1	slice	67	6	6.437
17205	1	1	oz	28.35	\N	\N
17205	2	4	oz	113	\N	\N
17206	1	3	oz	85	\N	\N
17206	2	1	unit, cooked (yield from 1 lb raw meat)	381	\N	\N
17207	1	1	oz	28.35	\N	\N
17207	2	4	oz	113	\N	\N
17208	1	3	oz	85	\N	\N
17208	2	1	unit, cooked (yield from 1 lb raw meat)	300	\N	\N
17209	1	1	oz	28.35	\N	\N
17209	2	8	oz	227	\N	\N
17210	1	1	oz	28.35	\N	\N
17210	2	4	oz	113	\N	\N
17211	1	3	oz	85	\N	\N
17211	2	1	unit, cooked (yield from 1 lb raw meat)	231	\N	\N
17212	1	1	oz	28.35	\N	\N
17212	2	4	oz	113	\N	\N
17213	1	3	oz	85	\N	\N
17213	2	1	unit, cooked (yield from 1 lb raw meat)	240	\N	\N
17214	1	1	oz	28.35	\N	\N
17214	2	4	oz	113	\N	\N
17215	1	3	oz	85	\N	\N
17215	2	1	unit, cooked (yield from 1 lb raw meat)	295	\N	\N
17216	1	1	oz	28.35	\N	\N
17216	2	4	oz	113	\N	\N
17217	1	3	oz	85	\N	\N
17217	2	1	unit, cooked (yield from 1 lb raw meat)	345	\N	\N
17218	1	1	oz	28.35	\N	\N
17218	2	4	oz	113	\N	\N
17219	1	3	oz	85	\N	\N
17220	1	1	oz	28.35	\N	\N
17220	2	4	oz	113	\N	\N
17221	1	3	oz	85	\N	\N
17221	2	1	unit, cooked (yield from 1 lb raw meat)	255	\N	\N
17222	1	1	oz	28.35	\N	\N
17222	2	4	oz	113	\N	\N
17223	1	3	oz	85	\N	\N
17223	2	1	unit, cooked (yield from 1 lb raw meat)	255	\N	\N
17224	1	1	oz	28.35	\N	\N
17224	2	4	oz	113	\N	\N
17225	1	3	oz	85	\N	\N
17225	2	1	unit, cooked (yield from 1 lb raw meat)	313	\N	\N
17226	1	1	oz	28.35	\N	\N
17226	2	1	lb	453.6	\N	\N
17227	1	3	oz	85	\N	\N
17227	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	250	\N	\N
17228	1	1	oz	28.35	\N	\N
17228	2	1	lb	453.6	\N	\N
17229	1	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	148	\N	\N
17229	2	3	oz	85	\N	\N
17230	1	1	oz	28.35	\N	\N
17230	2	1	lb	453.6	\N	\N
17231	1	3	oz	85	\N	\N
17231	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	260	\N	\N
17232	1	1	oz	28.35	\N	\N
17232	2	1	lb	453.6	\N	\N
17233	1	3	oz	85	\N	\N
17233	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	267	\N	\N
17234	1	1	oz	28.35	\N	\N
17234	2	1	lb	453.6	\N	\N
17235	1	3	oz	85	\N	\N
17235	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	260	\N	\N
17236	1	1	oz	28.35	\N	\N
17236	2	1	steak, excluding refuse (yield from 1 raw steak, with refuse, weighing 102 g)	79	\N	\N
17237	1	3	oz	85	\N	\N
17237	2	1	steak, excluding refuse (yield from 1 raw steak, with refuse, weighing 102 g)	53	\N	\N
17238	1	3	oz	85	\N	\N
17238	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	265	\N	\N
17239	1	1	oz	28.35	\N	\N
17239	2	1	lb	453.6	\N	\N
17240	1	3	oz	85	\N	\N
17240	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	222	\N	\N
17241	1	3	oz	85	\N	\N
17241	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	248	\N	\N
17242	1	1	oz	28.35	\N	\N
17242	2	1	lb	453.6	\N	\N
17243	1	3	oz	85	\N	\N
17243	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	213	\N	\N
17244	1	3	oz	85	\N	\N
17244	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	242	\N	\N
17245	1	3	oz	85	\N	\N
17245	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	263	\N	\N
17246	1	1	oz	28.35	\N	\N
17246	2	1	steak, excluding refuse (yield from 1 raw steak, with refuse, weighing 102 g)	84	\N	\N
17247	1	3	oz	85	\N	\N
17247	2	1	steak, excluding refuse (yield from 1 raw steak, with refuse, weighing 102 g)	45	\N	\N
17248	1	3	oz	85	\N	\N
17248	2	1	steak, excluding refuse (yield from 1 raw steak, with refuse, weighing 102 g)	59	\N	\N
17249	1	3	oz	85	\N	\N
17249	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	284	\N	\N
17250	1	1	oz	28.35	\N	\N
17250	2	1	lb	453.6	\N	\N
17251	1	3	oz	85	\N	\N
17251	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	207	\N	\N
17252	1	3	oz	85	\N	\N
17252	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	250	\N	\N
17253	1	3	oz	85	\N	\N
17253	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	256	\N	\N
17254	1	1	oz	28.35	\N	\N
17254	2	1	lb	453.6	\N	\N
17255	1	3	oz	85	\N	\N
17255	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	242	\N	\N
17256	1	1	oz	28.35	\N	\N
17256	2	1	lb	453.6	\N	\N
17257	1	3	oz	85	\N	\N
17257	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	168	\N	\N
17258	1	1	oz	28.35	\N	\N
17258	2	1	lb	453.6	\N	\N
17259	1	3	oz	85	\N	\N
17259	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	253	\N	\N
17260	1	1	oz	28.35	\N	\N
17260	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 85 g)	63	\N	\N
17261	1	3	oz	85	\N	\N
17261	2	1	chop, excluding refuse (yield from 1 raw chop, with refuse, weighing 85 g)	42	\N	\N
17262	1	1	oz	28.35	\N	\N
17262	2	1	lb	453.6	\N	\N
17263	1	3	oz	85	\N	\N
17263	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	233	\N	\N
17264	1	1	oz	28.35	\N	\N
17264	2	1	lb	453.6	\N	\N
17265	1	3	oz	85	\N	\N
17265	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	233	\N	\N
17267	1	1	oz	28.35	\N	\N
17267	2	1	lb	453.6	\N	\N
17267	3	4	oz	113	\N	\N
17268	1	1	oz	28.35	\N	\N
17268	2	1	lb	453.6	\N	\N
17268	3	4	oz	113	\N	\N
17269	1	1	oz	28.35	\N	\N
17269	2	1	lb	453.6	\N	\N
17269	3	4	oz	113	\N	\N
17270	1	1	oz	28.35	\N	\N
17271	1	1	oz	28.35	\N	\N
17271	2	1	lb	453.6	\N	\N
17272	1	3	oz	85	\N	\N
17272	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	283	\N	\N
17273	1	3	oz	85	\N	\N
17273	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	291	\N	\N
17274	1	3	oz	85	\N	\N
17274	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	274	\N	\N
17275	1	3	oz	85	\N	\N
17275	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	237	\N	\N
17276	1	1	oz	28.35	\N	\N
17276	2	1	lb	453.6	\N	\N
17277	1	3	oz	85	\N	\N
17277	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	194	\N	\N
17278	1	1	oz	28.35	\N	\N
17278	2	1	lb	453.6	\N	\N
17279	1	3	oz	85	\N	\N
17279	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	223	\N	\N
17280	1	1	oz	28.35	\N	\N
17280	2	1	lb	453.6	\N	\N
17280	3	3	oz	85	\N	\N
17281	1	3	oz	85	\N	\N
17281	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	270	\N	\N
17282	1	1	oz	28.35	\N	\N
17282	2	1	lb	453.6	\N	\N
17282	3	3	oz	85	\N	\N
17283	1	3	oz	85	\N	\N
17283	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	236	\N	\N
17284	1	1	oz	28.35	\N	\N
17284	2	1	lb	453.6	\N	\N
17284	3	3	oz	85	\N	\N
17285	1	3	oz	85	\N	\N
17285	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	248	\N	\N
17286	1	1	oz	28.35	\N	\N
17286	2	1	lb	453.6	\N	\N
17286	3	3	oz	85	\N	\N
17287	1	3	oz	85	\N	\N
17287	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	211	\N	\N
17288	1	1	oz	28.35	\N	\N
17288	2	1	lb	453.6	\N	\N
17288	3	3	oz	85	\N	\N
17289	1	3	oz	85	\N	\N
17289	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	180	\N	\N
17290	1	1	oz	28.35	\N	\N
17290	2	1	lb	453.6	\N	\N
17290	3	3	oz	85	\N	\N
17291	1	3	oz	85	\N	\N
17291	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	284	\N	\N
17292	1	1	oz	28.35	\N	\N
17292	2	1	lb	453.6	\N	\N
17292	3	3	oz	85	\N	\N
17293	1	3	oz	85	\N	\N
17293	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	251	\N	\N
17294	1	1	oz	28.35	\N	\N
17294	2	1	lb	453.6	\N	\N
17294	3	3	oz	85	\N	\N
17295	1	3	oz	85	\N	\N
17295	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	277	\N	\N
17296	1	1	oz	28.35	\N	\N
17296	2	1	lb	453.6	\N	\N
17296	3	3	oz	85	\N	\N
17297	1	3	oz	85	\N	\N
17297	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	246	\N	\N
17298	1	1	oz	28.35	\N	\N
17298	2	1	lb	453.6	\N	\N
17298	3	3	oz	85	\N	\N
17299	1	3	oz	85	\N	\N
17299	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	306	\N	\N
17300	1	1	oz	28.35	\N	\N
17300	2	1	lb	453.6	\N	\N
17300	3	3	oz	85	\N	\N
17301	1	3	oz	85	\N	\N
17301	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	259	\N	\N
17302	1	1	oz	28.35	\N	\N
17303	1	3	oz	85	\N	\N
17304	1	1	oz	28.35	\N	\N
17305	1	3	oz	85	\N	\N
17306	1	1	oz	28.35	\N	\N
17307	1	3	oz	85	\N	\N
17308	1	1	oz	28.35	\N	\N
17309	1	3	oz	85	\N	\N
17310	1	1	oz	28.35	\N	\N
17310	2	3	oz	85	\N	\N
17311	1	3	oz	85	\N	\N
17312	1	1	oz	28.35	\N	\N
17312	2	3	oz	85	\N	\N
17313	1	3	oz	85	\N	\N
17314	1	4	oz	114	\N	\N
17314	2	1	chop	63	24	20.104
17315	1	3	oz	85	\N	\N
17315	2	1	chop	54	24	17.428
17316	1	4	oz	114	\N	\N
17316	2	1	chop	63	24	20.104
17316	3	3	oz	85	\N	\N
17317	1	3	oz	85	\N	\N
17317	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	241	\N	\N
17317	3	1	chop	54	24	17.428
17318	1	1	oz	28.35	\N	\N
17318	2	1	lb	453.6	\N	\N
17318	3	3	oz	85	\N	\N
17319	1	3	oz	85	\N	\N
17319	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	262	\N	\N
17320	1	1	oz	28.35	\N	\N
17320	2	1	lb	453.6	\N	\N
17320	3	3	oz	85	\N	\N
17321	1	3	oz	85	\N	\N
17321	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	222	\N	\N
17322	1	1	oz	28.35	\N	\N
17322	2	3	oz	85	\N	\N
17323	1	3	oz	85	\N	\N
17324	1	1	oz	28.35	\N	\N
17324	2	3	oz	85	\N	\N
17325	1	3	oz	85	\N	\N
17326	1	1	oz	28.35	\N	\N
17326	2	1	lb	453.6	\N	\N
17326	3	3	oz	85	\N	\N
17327	1	3	oz	85	\N	\N
17327	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	273	\N	\N
17328	1	1	oz	28.35	\N	\N
17328	2	1	lb	453.6	\N	\N
17328	3	3	oz	85	\N	\N
17329	1	3	oz	85	\N	\N
17329	2	1	piece, cooked, excluding refuse (yield from 1 lb raw meat with refuse)	233	\N	\N
17330	1	1	serving ( 3 oz )	85	\N	\N
17330	2	1	patty	113	6	0.548
17331	1	1	patty ( yield from 112.7 g raw meat )	87	6	1.183
17331	2	1	serving ( 3 oz )	85	\N	\N
17332	1	1	serving ( 3 oz )	85	\N	\N
17332	2	1	steak ( yield from 309.7 g raw meat )	194	6	53.356
17333	1	1	serving ( 3 oz )	85	\N	\N
17333	2	1	roast ( yield from 1247 g raw meat ) ( 3 to 5 lb roast)	774	6	98.508
17334	1	1	serving ( 3 oz )	85	\N	\N
17334	2	1	roast (3 to 5 lb roast)	1237	6	67.793
17335	1	1	serving ( 3 oz )	85	\N	\N
17335	2	1	steak ( yield from 232.8 g raw meat )	179	6	17.041
17336	1	1	serving ( 3 oz )	85	\N	\N
17336	2	1	steak	180	6	32.412
17337	1	1	serving ( 3 oz )	85	\N	\N
17337	2	1	steak	489	6	75.719
17338	1	1	patty ( yield from 102.2 g raw meat )	102	5	25.431
17339	1	1	patty ( yield from 104.1 g raw meat )	95	5	3.887
17339	2	1	serving ( 3 oz )	85	\N	\N
17340	1	1	steak ( yield from 148.1 g raw meat )	114	7	36.725
17340	2	1	serving ( 3 oz )	85	\N	\N
17341	1	1	serving ( 3 oz )	85	\N	\N
17341	2	1	steak ( yield from 233.1 g raw meat )	176	8	61.154
17342	1	1	steak ( yield from 123.5 g raw meat )	92	8	36.673
17342	2	1	serving ( 3 oz )	85	\N	\N
17343	1	1	patty (cooked from 4 oz raw)	85	\N	\N
17343	2	1	oz	28.35	\N	\N
17344	1	1	patty	93	6	4.01
17344	2	1	serving ( 3 oz )	85	\N	\N
17345	1	1	steak	54	6	17.272
17345	2	1	serving ( 3 oz )	85	\N	\N
17346	1	1	serving ( 3 oz )	85	\N	\N
17346	2	1	roast (3 to 5 lb roast)	293	6	82.004
17347	1	1	serving ( 3 oz )	85	\N	\N
17347	2	1	roast ( yield from 271.8 g raw meat ) (0.5 to 1 lb roast)	202	6	106.802
17348	1	1	steak ( yield from 134.9 g raw meat )	102	6	7.501
17348	2	1	serving ( 3 oz )	85	\N	\N
17349	1	3	oz	85	\N	\N
17349	2	1	roast with bone	235	8	112.2
17350	1	3	oz	85	\N	\N
17350	2	1	roast with bone	235	\N	\N
17351	1	3	oz	85	\N	\N
17351	2	1	roast with bone	330	7	82.5
17352	1	3	oz	85	\N	\N
17352	2	1	roast with bone	330	\N	\N
17353	1	1	serving (4 oz)	113	\N	\N
17357	1	3	oz	85	\N	\N
17358	1	4	oz	113	\N	\N
17359	1	3	oz	85	\N	\N
17360	1	4	oz	113	\N	\N
17361	1	3	oz	85	\N	\N
17363	1	4	oz	113	\N	\N
17364	1	3	oz	85	\N	\N
17365	1	3	oz	85	\N	\N
17366	1	4	oz	113	\N	\N
17367	1	4	oz	113	\N	\N
17368	1	3	oz	85	\N	\N
17369	1	4	oz	113	\N	\N
17370	1	3	oz	85	\N	\N
17371	1	4	oz	113	\N	\N
17372	1	3	oz	85	\N	\N
17373	1	4	oz	113	\N	\N
17374	1	3	oz	85	\N	\N
17375	1	4	oz	113	\N	\N
17376	1	3	oz	85	\N	\N
17377	1	4	oz	113	\N	\N
17378	1	3	oz	85	\N	\N
17379	1	4	oz	113	\N	\N
17380	1	3	oz	85	\N	\N
17381	1	4	oz	113	\N	\N
17382	1	3	oz	85	\N	\N
17383	1	4	oz	113	\N	\N
17384	1	3	oz	85	\N	\N
17385	1	4	oz	113	\N	\N
17386	1	3	oz	85	\N	\N
17387	1	4	oz	113	\N	\N
17388	1	3	oz	85	\N	\N
17389	1	4	oz	113	\N	\N
17390	1	3	oz	85	\N	\N
17391	1	4	oz	113	\N	\N
17392	1	4	oz	113	\N	\N
17393	1	3	oz	85	\N	\N
17394	1	3	oz	85	\N	\N
17395	1	4	oz	113	\N	\N
17396	1	3	oz	85	\N	\N
17397	1	4	oz	113	\N	\N
17398	1	3	oz	85	\N	\N
17399	1	3	oz	85	\N	\N
17400	1	3	oz	85	\N	\N
17401	1	3	oz	85	\N	\N
17402	1	4	oz	113	\N	\N
17403	1	3	oz	85	\N	\N
17404	1	4	oz	113	\N	\N
17405	1	3	oz	85	\N	\N
17406	1	3	oz	85	\N	\N
17407	1	3	oz	85	\N	\N
17408	1	4	oz	113	\N	\N
17409	1	3	oz	85	\N	\N
17410	1	4	oz	113	\N	\N
17411	1	3	oz	85	\N	\N
17412	1	4	oz	113	\N	\N
17413	1	3	oz	85	\N	\N
17414	1	4	oz	113	\N	\N
17415	1	3	oz	85	\N	\N
17416	1	4	oz	113	\N	\N
17417	1	3	oz	85	\N	\N
17418	1	3	oz	85	\N	\N
17419	1	3	oz	85	\N	\N
17420	1	4	oz	113	\N	\N
17421	1	3	oz	85	\N	\N
17422	1	4	oz	113	\N	\N
17423	1	4	oz	113	\N	\N
17424	1	3	oz	85	6	0
17425	1	3	oz	85	6	0
17425	2	1	cutlet	44	6	11.026
17426	1	3	oz	85	6	0
17426	2	1	cutlet	55	6	13.45
17426	3	1	serving	113	6	0
17427	1	3	oz	85	6	0
17427	2	1	chop	153	6	22.971
17428	1	3	oz	85	6	0
17428	2	1	serving	113	6	0
17428	3	1	shank whole	1270	6	566.498
17429	1	3	oz	85	6	0
17429	2	1	shank cross cut	187	6	45.316
17430	1	3	oz	85	6	0
17430	2	1	chop	352	6	90.451
17435	1	3	oz	85	6	0
17435	2	1	serving	113	6	0
17435	3	1	shank whole	1270	6	566.498
17436	1	3	oz	85	6	0
17436	2	1	shank cross cut	187	6	45.316
17437	1	3	oz	85	6	0
17437	2	1	chop	153	6	22.971
17438	1	3	oz	85	6	0
17438	2	1	chop	352	6	90.451
17439	1	3	oz	85	\N	\N
17439	2	1	leg bottom, boneless	723	6	134.774
17440	1	3	oz	85	\N	\N
17440	2	1	leg hindshank, heel on	418	6	32.277
17441	1	4	oz	114	\N	\N
17441	2	1	leg hindshank, heel on	530	6	60.393
17442	1	3	oz	85	\N	\N
17442	2	1	roast	121	6	9.453
17443	1	4	oz	114	\N	\N
17443	2	1	roast	146	6	13.961
17444	1	4	oz	114	\N	\N
17444	2	1	leg bottom, boneless	989	5	216.455
17445	1	3	oz	85	\N	\N
17445	2	1	leg trotter off	1808	6	235.641
17446	1	4	oz	114	\N	\N
17446	2	1	leg trotter off	2674	6	240.529
17447	1	3	oz	85	\N	\N
17447	2	1	roast	329	6	19.416
17448	1	3	oz	85	\N	\N
17448	2	1	roast	447	5	6.612
17449	1	3	oz	85	\N	\N
17453	1	3	oz	85	\N	\N
17453	2	1	leg bottom, boneless	723	6	134.774
17454	1	4	oz	114	\N	\N
17454	2	1	leg bottom, boneless	989	5	216.455
17455	1	3	oz	85	\N	\N
17455	2	1	leg hindshank, heel on	418	6	32.277
17456	1	4	oz	114	\N	\N
17456	2	1	leg hindshank, heel on	530	6	60.393
17457	1	3	oz	85	\N	\N
17457	2	1	leg trotter off	1808	6	235.641
17458	1	4	oz	114	\N	\N
17458	2	1	leg trotter off	2674	6	240.529
17459	1	3	oz	85	\N	\N
17459	2	1	roast	121	6	9.453
17460	1	4	oz	114	\N	\N
17460	2	1	roast	146	6	13.961
17461	1	3	oz	85	\N	\N
17461	2	1	chop	43	24	10.761
17462	1	3	oz	85	\N	\N
17462	2	1	roast	329	6	19.416
17463	1	3	oz	85	\N	\N
17463	2	1	roast	447	5	6.612
17464	1	3	oz	85	\N	\N
17464	2	1	chop	43	24	10.761
18001	1	1	bagel	99	23	8.099
18001	2	1	mini bagel (2-1/2"" dia)	26	\N	\N
18001	3	1	small bagel (3"" dia)	69	14	11.387
18001	4	1	medium bagel (3-1/2"" to 4"" dia)	105	43	7.619
18001	5	1	large bagel (4-1/2"")	131	7	9.845
18001	6	1	oz	28.35	\N	\N
18002	1	1	mini bagel (2-1/2"" dia)	24	\N	\N
18002	2	1	small bagel (3"" dia)	65	1	\N
18002	3	1	medium bagel (3-1/2"" to 4"" dia)	99	\N	\N
18002	4	1	large bagel (4-1/2"")	123	1	\N
18002	5	1	oz	28.35	\N	\N
18003	1	1	oz	28.35	\N	\N
18003	2	1	mini bagel (2-1/2"" dia)	26	\N	\N
18003	3	1	small bagel (3"" dia)	69	14	11.387
18003	4	1	medium bagel (3-1/2"" to 4"" dia)	105	43	7.619
18003	5	1	large bagel (4-1/2"" dia)	131	7	9.845
18005	1	1	mini bagel (2-1/2"" dia)	26	\N	\N
18005	2	1	small bagel (3"" dia)	69	14	11.387
18005	3	1	medium bagel (3-1/2"" to 4"" dia)	105	43	7.619
18005	4	1	large bagel (4-1/2"" dia)	131	7	9.845
18005	5	1	oz	28.35	\N	\N
18006	1	1	mini bagel (2-1/2"" dia)	24	1	\N
18006	2	1	small bagel (3-1/2"" to 4""dia)	65	1	\N
18006	3	1	medium bagel (4"" dia)	99	1	\N
18006	4	1	large bagel (4-1/2"" dia)	123	1	\N
18006	5	1	oz	28.35	\N	\N
18007	1	1	mini bagel (2-1/2"" dia)	26	\N	\N
18007	2	1	small bagel (3"" dia)	69	14	11.387
18007	3	1	medium bagel (3-1/2"" to 4"" dia)	105	43	7.619
18007	4	1	large bagel (4-1/2"" dia)	131	7	9.845
18007	5	1	oz	28.35	\N	\N
18009	1	1	oz	28.35	\N	\N
18009	2	1	large	77	\N	\N
18009	3	1	medium	51	\N	\N
18009	4	1	small	35	\N	\N
18009	5	1	biscuit (2-1/2"" dia)	35	\N	\N
18010	1	1	cup, purchased	120	\N	\N
18010	2	1	cup, homemade	114	\N	\N
18010	3	1	cup, poured from box	128	\N	\N
18010	4	1	cup, spooned into cup	120	\N	\N
18010	5	0.33	cup (NLEA serving size)	40	\N	\N
18010	6	1	oz	28.35	\N	\N
18011	1	1	oz	28.35	\N	\N
18012	1	1	serving 1 biscuit	58	2	\N
18012	2	1	oz	28.35	\N	\N
18013	1	1	oz	28.35	\N	\N
18013	2	1	biscuit (2-1/4"" dia)	21	\N	\N
18014	1	1	biscuit	58	1	\N
18014	2	1	biscuit	43	12	13.259
18014	3	1	package	398	6	68.658
18014	4	1	oz	28.35	\N	\N
18015	1	1	biscuit	51	23	10.096
18015	2	1	biscuit (2-1/2"" dia)	27	\N	\N
18015	3	1	oz	28.35	\N	\N
18016	1	1	oz	28.35	\N	\N
18016	2	1	biscuit (4"" dia)	101	\N	\N
18016	3	1	small (1-1/2"" dia)	14.0	\N	\N
18016	4	1	biscuit (2-1/2"" dia)	60	\N	\N
18017	1	1	oz	28.35	\N	\N
18017	2	1	biscuit (2-1/2"" dia)	44	\N	\N
18019	1	1	oz	28.35	\N	\N
18019	2	1	individual loaf (include Keebler Elfin Loaves)	57	\N	\N
18019	3	1	slice	60	\N	\N
18021	1	1	oz	28.35	\N	\N
18021	2	1	slice	45	\N	\N
18022	1	1	oz	28.35	\N	\N
18022	2	1	package (8.5 oz)	241	\N	\N
18023	1	1	muffin	51	24	4.27
18023	2	1	piece	60	\N	\N
18023	3	1	oz	28.35	\N	\N
18024	1	1	oz	28.35	\N	\N
18024	2	1	piece	65	\N	\N
18025	1	1	oz	28.35	\N	\N
18025	2	1	cubic inch	3.2	\N	\N
18025	3	1	slice, large or thick	30	\N	\N
18025	4	1	slice, regular	25	\N	\N
18025	5	1	slice regular, crust not eaten	12.2	\N	\N
18025	6	1	slice	25	\N	\N
18025	7	1	slice, thin	20	\N	\N
18025	8	1	slice thin, crust not eaten	9.4	\N	\N
18027	1	1	oz	28.35	\N	\N
18027	2	1	slice (5"" x 3"" x 1/2"")	40	\N	\N
18028	1	1	oz	28.35	\N	\N
18028	2	1	slice (5"" x 3"" x 1/2"")	37	\N	\N
18029	1	1	oz	28.35	\N	\N
18029	2	1	slice	139	12	37.427
18030	1	1	oz	28.35	\N	\N
18030	2	1	slice, small	29	\N	\N
18030	3	1	slice, medium	59	\N	\N
18030	4	1	slice, large	88	\N	\N
18032	1	1	oz	28.35	\N	\N
18033	1	1	oz	28.35	\N	\N
18033	2	1	slice, large (4-1/2"" x 3-1/4"" x 3/4"")	30	\N	\N
18033	3	1	slice, medium	20	\N	\N
18033	4	1	slice, small (3-1/4"" x 2-1/2"" x 1/2"")	10.0	\N	\N
18036	1	1	oz	28.35	\N	\N
18036	2	1	slice regular	24	\N	\N
18036	3	1	slice large	38	\N	\N
18037	1	1	oz	28.35	\N	\N
18037	2	1	slice	30	\N	\N
18038	1	1	oz	28.35	\N	\N
18038	2	1	slice	27	\N	\N
18039	1	1	oz	28.35	\N	\N
18039	2	1	slice	27	\N	\N
18040	1	1	oz	28.35	\N	\N
18040	2	1	slice	25	\N	\N
18041	1	1	pita, large (6-1/2"" dia)	60	\N	\N
18041	2	1	pita, small  (4"" dia)	28	\N	\N
18042	1	1	pita, large (6-1/2"" dia)	64	\N	\N
18042	2	1	pita, small  (4"" dia)	28	\N	\N
18043	1	1	oz	28.35	\N	\N
18043	2	1	slice	19	\N	\N
18044	1	1	oz	28.35	\N	\N
18044	2	1	slice, regular	26	\N	\N
18044	3	1	slice, snack-size	7.0	\N	\N
18044	4	1	slice, thin	20	\N	\N
18044	5	1	slice (5"" x 4"" x 3/8"")	32	\N	\N
18045	1	1	oz	28.35	\N	\N
18045	2	1	slice (5"" x 4"" x 3/8"")	29	\N	\N
18047	1	1	oz	28.35	\N	\N
18047	2	1	slice, large	32	\N	\N
18047	3	1	slice	26	\N	\N
18047	4	1	slice, thin	23	\N	\N
18048	1	1	oz	28.35	\N	\N
18048	2	1	slice, large	29	\N	\N
18048	3	1	slice	24	\N	\N
18048	4	1	slice, thin	21	\N	\N
18049	1	1	oz	28.35	\N	\N
18049	2	1	slice	23	\N	\N
18050	1	1	oz	28.35	\N	\N
18050	2	1	slice	19	\N	\N
18051	1	1	oz	28.35	\N	\N
18051	2	1	slice	23	\N	\N
18053	1	1	oz	28.35	\N	\N
18053	2	1	slice	23	\N	\N
18053	3	1	slice, thick	32	\N	\N
18053	4	1	slice, thin	20	\N	\N
18055	1	1	oz	28.35	\N	\N
18055	2	1	slice	21	3	3.302
18057	1	1	oz	28.35	\N	\N
18057	2	1	slice	23	\N	\N
18059	1	1	oz	28.35	\N	\N
18059	2	1	slice	27	\N	\N
18060	1	1	oz	28.35	\N	\N
18060	2	1	slice, regular	32	\N	\N
18060	3	1	slice, snack-size	7.0	\N	\N
18060	4	1	slice, thin	25	\N	\N
18061	1	1	oz	28.35	\N	\N
18061	2	1	slice, large	29	\N	\N
18061	3	1	slice, regular	24	\N	\N
18061	4	1	slice, thin	18	\N	\N
18064	1	1	oz	28.35	\N	\N
18064	2	1	slice	29	21	2.416
18065	1	1	oz	28.35	\N	\N
18065	2	1	slice	24	15	2.905
18066	1	1	oz	28.35	\N	\N
18066	2	1	slice	36	\N	\N
18069	1	1	slice	29	12	3.932
18069	2	1	oz	28.35	\N	\N
18069	3	1	cup, crumbs	45	\N	\N
18069	4	1	cup, cubes	35	\N	\N
18069	5	1	slice, large	30	\N	\N
18069	6	1	slice	25	\N	\N
18069	7	1	slice crust not eaten	12.0	\N	\N
18069	8	1	slice, thin	20	\N	\N
18069	9	1	slice thin, crust not eaten	9.0	\N	\N
18069	10	1	slice, very thin	15.0	\N	\N
18070	1	1	oz	28.35	\N	\N
18070	2	1	cup, crumbs	45	\N	\N
18070	3	1	cup, cubes	42	\N	\N
18070	4	1	slice, large	27	\N	\N
18070	5	1	slice crust not eaten	11.0	\N	\N
18070	6	1	slice, thin	17	\N	\N
18070	7	1	slice thin, crust not eaten	8.0	\N	\N
18070	8	1	slice, very thin	13.0	\N	\N
18070	9	1	slice	22	\N	\N
18071	1	1	oz	28.35	\N	\N
18071	2	1	slice	44	\N	\N
18073	1	1	oz	28.35	\N	\N
18073	2	1	slice	42	\N	\N
18073	3	1	slice, thin (3-3/4"" x 5"" x 3/8"")	33	\N	\N
18075	1	1	slice	32	19	7.086
18075	2	1	oz	28.35	\N	\N
18076	1	1	oz	28.35	\N	\N
18076	2	1	slice	25	\N	\N
18077	1	1	oz	28.35	\N	\N
18077	2	1	slice, regular (4"" x 5"" x 3/4"")	46	\N	\N
18077	3	1	slice, thin (3-3/4"" x 5"" x 3/8"")	33	\N	\N
18078	1	1	oz	28.35	\N	\N
18078	2	1	slice	42	\N	\N
18078	3	1	slice, thin (3-3/4"" x 5"" x 3/8"")	30	\N	\N
18079	1	1	oz	28.35	\N	\N
18079	2	1	cup	108	\N	\N
18080	1	1	cup, small pieces	46	\N	\N
18080	2	1	stick, small (approx 4-1/4"" long)	5.0	\N	\N
18080	3	1	stick (7-5/8"" x 5/8"")	10.0	\N	\N
18080	4	1	stick (9-1/4"" x 3/8"")	6.0	\N	\N
18081	1	1	oz	28.35	\N	\N
18081	2	1	package (6 oz)	170	\N	\N
18082	1	1	oz	28.35	\N	\N
18082	2	0.5	cup	100	\N	\N
18084	1	1	oz	28.35	\N	\N
18084	2	1	package (6 oz)	170	\N	\N
18085	1	1	oz	28.35	\N	\N
18085	2	0.5	cup	100	\N	\N
18086	1	1	piece (1/12 of 12 oz cake)	28	\N	\N
18086	2	1	cake (9"" dia x 4"")	340	\N	\N
18087	1	1	serving	38	1	\N
18087	2	1	package (14.5 oz)	411	\N	\N
18087	3	1	oz	28.35	\N	\N
18088	1	1	piece (1/12 of 10"" dia)	50	\N	\N
18088	2	1	tube cake (10"" dia, 4-3/8"" high)	596	\N	\N
18090	1	1	oz	28.35	\N	\N
18090	2	1	piece (1/6 of pie)	92	\N	\N
18092	1	1	oz	28.35	\N	\N
18092	2	1	package (18 oz)	510	\N	\N
18095	1	1	oz	28.35	\N	\N
18095	2	1	piece (1/8 cake)	71	\N	\N
18096	1	1	piece (1/12 of a cake)	138	12	34.479
18096	2	1	cake	1660	12	413.751
18096	3	1	piece (1/8 of 18 oz cake)	64	\N	\N
18096	4	1	oz	28.35	\N	\N
18097	1	1	oz	28.35	\N	\N
18097	2	1	package (18.25 oz)	517	\N	\N
18101	1	1	piece (1/12 of 9"" dia)	95	\N	\N
18101	2	1	cake, 2-layer (8"" or 9"" dia)	1137	\N	\N
18102	1	1	oz	28.35	\N	\N
18102	2	1	piece (1/12 of 9"" dia)	112	\N	\N
18103	1	1	oz	28.35	\N	\N
18103	2	1	piece (1/6 of 16 oz cake)	76	\N	\N
18104	1	1	oz	28.35	\N	\N
18104	2	1	individual cake	57	\N	\N
18104	3	1	piece (1/9 of 20 oz cake)	63	\N	\N
18105	1	1	oz	28.35	\N	\N
18105	2	1	piece (1/6 of 19 oz cake)	90	\N	\N
18106	1	1	oz	28.35	\N	\N
18106	2	1	piece (1/8 cake)	50	\N	\N
18107	1	1	oz	28.35	\N	\N
18107	2	1	package (10.5 oz)	298	\N	\N
18108	1	1	oz	28.35	\N	\N
18108	2	1	piece (1/8 of 8"" x 5-3/4"" cake)	56	\N	\N
18110	1	1	oz	28.35	\N	\N
18110	2	1	piece	43	\N	\N
18112	1	1	serving	43	1	\N
18112	2	1	package (18.25 oz)	517	\N	\N
18112	3	1	oz	28.35	\N	\N
18114	1	1	oz	28.35	\N	\N
18114	2	1	package (14.5 oz)	411	\N	\N
18116	1	1	oz	28.35	\N	\N
18116	2	1	piece (1/9 of 8"" square)	74	\N	\N
18117	1	1	oz	28.35	\N	\N
18117	2	1	package (18.25 oz)	517	\N	\N
18119	1	1	oz	28.35	\N	\N
18119	2	1	piece (1/9 of 8"" square)	115	\N	\N
18120	1	0.167	loaf 1/6 of the loaf	61	17	10.922
18120	2	1	piece individually wrapped cake	49	1	\N
18121	1	1	piece (1/10 of 10.6 oz cake)	30	\N	\N
18121	2	1	piece (1/12 of 12 oz cake)	28	\N	\N
18121	3	1	snack cake (2.5 oz)	71	\N	\N
18126	1	1	oz	28.35	\N	\N
18127	1	1	oz	28.35	\N	\N
18127	2	1	cupcake	50	\N	\N
18128	1	1	oz	28.35	\N	\N
18128	2	1	cake	42	8	4.129
18131	1	1	oz	28.35	\N	\N
18131	2	1	package (8 oz)	227	\N	\N
18133	1	1	oz	28.35	\N	\N
18133	2	1	piece (1/12 of 16 oz cake)	38	\N	\N
18134	1	1	oz	28.35	\N	\N
18134	2	1	piece (1/12 of 10 inch cake)	63	\N	\N
18135	1	1	oz	28.35	\N	\N
18135	2	1	package (18.50 oz)	524	\N	\N
18139	1	1	piece (1/12 of 9"" dia)	74	\N	\N
18139	2	1	cake, 2-layer (8"" or 9"" dia)	887	\N	\N
18140	1	1	piece (1/12 of a cake)	144	12	35.677
18140	2	1	cake	1729	12	428.122
18140	3	1	piece (1/8 of 18 oz cake)	64	\N	\N
18140	4	1	oz	28.35	\N	\N
18141	1	1	serving	67	1	\N
18141	2	1	oz	28.35	\N	\N
18142	1	1	oz	28.35	\N	\N
18142	2	1	package (18.50 oz)	524	\N	\N
18144	1	1	serving	43	1	\N
18144	2	1	package (18.50 oz)	524	\N	\N
18144	3	1	oz	28.35	\N	\N
18146	1	1	piece (1/12 of 8"" dia)	68	\N	\N
18146	2	1	cake, 2-layer (8"" dia)	817	\N	\N
18147	1	1	oz	28.35	\N	\N
18147	2	1	piece (1/6 of 17 oz cake)	80	\N	\N
18147	3	1	piece (1 NLEA serving)	125	\N	\N
18148	1	1	oz	28.35	\N	\N
18148	2	1	piece (1/12 of 9"" dia)	99	\N	\N
18151	1	1	oz	28.35	\N	\N
18151	2	1	square, large (2-3/4"" sq x 7/8"")	56	\N	\N
18151	3	1	package, Little Debbie (twin wrapped)	61	\N	\N
18152	1	1	oz	28.35	\N	\N
18152	2	1	package (21.5 oz)	610	\N	\N
18154	1	1	oz	28.35	\N	\N
18154	2	1	brownie (2"" square)	24	\N	\N
18155	1	1	oz	28.35	\N	\N
18155	2	1	cookie	5.0	\N	\N
18156	1	1	oz	28.35	\N	\N
18156	2	1	cookie	21	\N	\N
18157	1	1	oz	28.35	\N	\N
18157	2	1	cup, crumbs	112	\N	\N
18157	3	1	wafer	6.0	\N	\N
18158	1	1	serving 3 cookies	34	1	\N
18158	2	1	oz	28.35	\N	\N
18159	1	1	cookie	12.9	24	1.989
18159	2	1	cookie Pepperidge Farm Chocolate Chunk Pecan	12.0	\N	\N
18159	3	1	oz	28.35	\N	\N
18159	4	1	cookie (average weight of 1 cookie, variety of brands)	12.2	18	2.758
18159	5	1	cookie Pepperidge Farm Chocolate Chunk Pecan	12.0	\N	\N
18159	6	1	cookie, big (3-1/2"" - 4"" dia) (include Grandma brand)	40	\N	\N
18159	7	1	cookie, medium (2-1/4"" dia)	10.0	\N	\N
18159	8	1	cookie, large (include Keebler Rich 'n Chips, Pecan Chips Delux)	14.0	\N	\N
18159	9	1	cookie, bite size (include Mini Chips Ahoy!)	2.2	\N	\N
18160	1	1	cookie	14.2	12	0.749
18160	2	1	oz	28.35	\N	\N
18160	3	1	cookie	15.0	\N	\N
18160	4	1	cookie (average weight of 1 cookie)	12.2	18	2.758
18161	1	1	oz	28.35	\N	\N
18161	2	1	package (17.5 oz)	496	\N	\N
18163	1	1	serving	33	2	\N
18163	2	1	portion, dough spoon from roll	29	3	4.219
18163	3	1	oz	28.35	\N	\N
18164	1	1	oz	28.35	\N	\N
18164	2	1	cookie, medium (2-1/4"" dia)	12.0	\N	\N
18165	1	1	oz	28.35	\N	\N
18165	2	1	bar (2"" square)	32	\N	\N
18165	3	1	cookie, medium (2-1/4"" dia)	16	\N	\N
18166	1	3	cookie	36	24	3.797
18166	2	1	oz	28.35	\N	\N
18167	1	1	oz	28.35	\N	\N
18167	2	1	cookie	17	\N	\N
18168	1	1	oz	28.35	\N	\N
18168	2	1	cookie	13.0	\N	\N
18170	1	1	oz	28.35	\N	\N
18170	2	1	Figaroo (2 square halves)	43	\N	\N
18170	3	1	cookie	16	\N	\N
18170	4	1	individual package (2 oz package containing 2 3"" bars)	57	\N	\N
18171	1	1	oz	28.35	\N	\N
18171	2	1	cookie	8.0	\N	\N
18172	1	1	oz	28.35	\N	\N
18172	2	1	cookie	7.0	\N	\N
18172	3	1	large (approx 3-1/2"" to 4"" dia)	32	\N	\N
18173	1	1	oz	28.35	\N	\N
18173	2	1	cracker	15	30	0.711
18173	3	1	cup, crushed	84	\N	\N
18173	4	1	large rectangular piece or 2 squares or 4 small rectangular pieces	14.0	\N	\N
18174	1	3	pieces	27	1	\N
18174	2	1	oz	28.35	\N	\N
18175	1	1	oz	28.35	\N	\N
18175	2	1	anisette sponge (4"" x 1-1/8"" x 7/8"")	13.0	\N	\N
18175	3	1	breakfast treat (approx 4"" x 2"" x 7/8"")	24	\N	\N
18175	4	1	ladyfinger	11.0	\N	\N
18176	1	1	oz	28.35	\N	\N
18176	2	1	Fudge Marshmallow	28	\N	\N
18176	3	1	pie, marshmallow (3"" dia x 3/4"")	39	\N	\N
18176	4	1	cookie, small (1-3/4"" dia x 3/4"")	13.0	\N	\N
18177	1	1	oz	28.35	\N	\N
18177	2	1	large (3-1/2"" to 4"" dia) (include Archway brand)	32	\N	\N
18177	3	1	medium	15.0	\N	\N
18177	4	1	cookie, Little Debbie	20	\N	\N
18178	1	1	oz	28.35	\N	\N
18178	2	1	cookie, big (3-1/2"" - 4"" dia) (include Archway brand, Grandma brand)	25	\N	\N
18178	3	1	large	18	\N	\N
18179	1	1	oz	28.35	\N	\N
18179	2	1	cookie	15.0	\N	\N
18180	1	1	oz	28.35	\N	\N
18180	2	1	package (17.5 oz)	496	\N	\N
18182	1	1	oz	28.35	\N	\N
18182	2	1	portion, dough for 1 cookie	16	\N	\N
18183	1	1	oz	28.35	\N	\N
18183	2	1	cookie	12.0	\N	\N
18184	1	1	oz	28.35	\N	\N
18184	2	1	cookie (2-5/8"" dia)	15.0	\N	\N
18185	1	1	oz	28.35	\N	\N
18185	2	1	cookie	31	9	3.934
18186	1	1	oz	28.35	\N	\N
18186	2	1	cookie	15.0	\N	\N
18187	1	1	oz	28.35	\N	\N
18187	2	1	portion, dough for 1 cookie	16	\N	\N
18188	1	1	oz	28.35	\N	\N
18188	2	1	cookie	12.0	\N	\N
18189	1	1	oz	28.35	\N	\N
18189	2	1	cookie (3"" dia)	20	\N	\N
18190	1	1	oz	28.35	\N	\N
18190	2	1	cookie	14.0	\N	\N
18191	1	1	oz	28.35	\N	\N
18191	2	1	cookie	15.0	\N	\N
18192	1	1	oz	28.35	\N	\N
18192	2	1	cookie	11.8	21	4.074
18193	1	1	oz	28.35	\N	\N
18193	2	1	cookie (2"" dia)	14.0	\N	\N
18196	1	1	oz	28.35	\N	\N
18196	2	1	package (8.5 oz)	241	\N	\N
18198	1	1	oz	28.35	\N	\N
18198	2	1	cookie, medium (1-5/8"" dia)	7.0	\N	\N
18199	1	1	oz	28.35	\N	\N
18199	2	1	cookie	10.0	\N	\N
18200	1	1	oz	28.35	\N	\N
18200	2	1	cookie, medium (1-5/8"" dia)	7.0	\N	\N
18201	1	1	oz	28.35	\N	\N
18201	2	1	cookie	10.0	\N	\N
18202	1	1	oz	28.35	\N	\N
18202	2	1	wafer	4.0	\N	\N
18204	1	1	oz	28.35	\N	\N
18204	2	1	cookie	17	16	7.396
18205	1	1	serving	33	2	\N
18205	2	1	cookie dough for 1rolled cookie	17	3	0.747
18205	3	1	cookie 1 pre-sliced cookie dough	26	5	0.446
18205	4	1	oz	28.35	\N	\N
18206	1	1	oz	28.35	\N	\N
18206	2	1	cookie 1 rolled cookie dough	15.0	3	1.141
18206	3	1	cookie 1 pre-sliced cookie dough	23	5	0.449
18208	1	1	oz	28.35	\N	\N
18208	2	1	cookie (3"" dia)	14.0	\N	\N
18209	1	3	cookies	36	\N	\N
18209	2	1	cookie	10.1	12	2.603
18209	3	1	oz	28.35	\N	\N
18210	1	1	oz	28.35	\N	\N
18210	2	1	cookie, oval (3-1/8"" x 1-1/4"" x 3/8"")	15.0	\N	\N
18210	3	1	cookie, round (1-3/4"" dia)	10.0	\N	\N
18211	1	1	oz	28.35	\N	\N
18211	2	1	sheet	245	\N	\N
18211	3	1	shell	40	\N	\N
18212	1	1	oz	28.35	\N	\N
18212	2	1	cup, crumbs	80	\N	\N
18212	3	1	large	6.0	\N	\N
18212	4	1	medium	4.0	\N	\N
18212	5	1	small	3.0	\N	\N
18213	1	8	wafers	30	31	1.816
18213	2	8	wafers mini wafers	11.6	2	\N
18214	1	0.5	oz	14.2	\N	\N
18214	2	1	cup, bite size	62	\N	\N
18214	3	1	cup, crushed	72	\N	\N
18214	4	1	gold fish	0.6	\N	\N
18214	5	1	bag, single serving	28	\N	\N
18214	6	1	snack stick	2.0	\N	\N
18214	7	1	cracker (1"" square)	1.0	\N	\N
18215	1	0.5	oz	14.2	\N	\N
18215	2	1	cup, crushed	83	\N	\N
18215	3	6	cracker	39	\N	\N
18215	4	1	sandwich	6.5	\N	\N
18216	1	0.5	oz	14.2	\N	\N
18216	2	1	cup, crushed	55	\N	\N
18216	3	1	crispbread	10.0	\N	\N
18216	4	1	wafer, thin	2.0	\N	\N
18216	5	1	wafer	10.0	\N	\N
18216	6	1	cracker, Norwegian flatbread (4-3/4"" x 2-3/4"" x 1/16"")	5.8	\N	\N
18216	7	1	wafer, Rye Krisp (triple cracker)	25	\N	\N
18216	8	1	crispbread, Wasa rye	10.0	\N	\N
18217	1	0.5	oz	14.2	\N	\N
18217	2	1	matzo	28	\N	\N
18218	1	0.5	oz	14.2	\N	\N
18218	2	1	matzo	28	\N	\N
18219	1	0.5	oz	14.2	\N	\N
18219	2	1	matzo	28	\N	\N
18220	1	0.5	oz	14.2	\N	\N
18220	2	1	cup pieces	30	\N	\N
18220	3	1	cup, rounds	33	\N	\N
18220	4	1	melba round	3.0	\N	\N
18220	5	1	piece (3-3/4"" x 1-3/4"" x 1/8"")	5.0	\N	\N
18221	1	0.5	oz	14.2	\N	\N
18221	2	1	toast	5.0	\N	\N
18222	1	0.5	oz	14.2	\N	\N
18222	2	1	toast	5.0	\N	\N
18223	1	0.5	oz	14.2	\N	\N
18223	2	1	cracker	11.0	\N	\N
18224	1	0.5	oz	14.2	\N	\N
18224	2	1	rusk	10.0	\N	\N
18225	1	0.5	oz	14.2	\N	\N
18225	2	1	cracker, sandwich	7.0	\N	\N
18226	1	0.5	oz	14.2	\N	\N
18226	2	1	cup, crushed	61	\N	\N
18226	3	1	cracker (4-1/2"" x 2-1/2"" x 1/8"")	11.0	\N	\N
18226	4	1	cracker, triple	25	\N	\N
18227	1	0.5	oz	14.2	\N	\N
18227	2	1	cracker, triple	22	\N	\N
18228	1	5	crackers	14.9	22	1.094
18228	2	0.5	oz	14.2	\N	\N
18228	3	1	cup, crushed	70	\N	\N
18228	4	5	crackers square (1 serving)	15.0	\N	\N
18228	5	1	cracker square	3.0	24	0.138
18228	6	1	cracker, round large	10.0	\N	\N
18228	7	1	cracker, oyster	1.0	\N	\N
18228	8	1	cracker, rectangle	6.0	\N	\N
18228	9	1	cup oyster crackers	45	\N	\N
18229	1	5	crackers	16	24	0.869
18229	2	5	crackers, regular size, round (1 serving)	16	2	\N
18229	3	1	cracker, round	3.2	8	0.141
18229	4	1	cracker, rectangular	4.0	\N	\N
18229	5	1	cup crushed	52	8	1.581
18230	1	0.5	oz	14.2	\N	\N
18230	2	1	cracker, sandwich	7.0	\N	\N
18231	1	0.5	oz	14.2	\N	\N
18231	2	1	cracker, sandwich	7.0	\N	\N
18232	1	16	crackers 1 serving	34	23	6.645
18232	2	2	crackers 1 serving	14.5	1	\N
18233	1	0.5	oz	14.2	\N	\N
18233	2	1	cracker, sandwich	7.0	\N	\N
18234	1	0.5	oz	14.2	\N	\N
18234	2	1	cracker, sandwich	7.0	\N	\N
18235	1	1	serving	28	\N	\N
18235	2	6	crackers, Triscuits, regular size	28	\N	\N
18235	3	1	cracker	4.6	12	0.275
18235	4	0.5	oz	14.2	\N	\N
18235	5	1	cup, crushed	94	\N	\N
18235	6	10	Triscuit Bits	10.0	\N	\N
18236	1	1	oz	28.35	\N	\N
18236	2	1	cup	115	\N	\N
18237	1	1	oz	28.35	\N	\N
18237	2	1	eclair (5"" x 2"" x 1-3/4"")	48	\N	\N
18237	3	1	cream puff shell	66	\N	\N
18239	1	1	oz	28.35	\N	\N
18239	2	1	croissant, mini	28	\N	\N
18239	3	1	croissant, small	42	\N	\N
18239	4	1	croissant, medium	57	\N	\N
18239	5	1	croissant, large	67	\N	\N
18240	1	1	oz	28.35	\N	\N
18240	2	1	croissant, medium	57	\N	\N
18241	1	1	oz	28.35	\N	\N
18241	2	1	croissant, small	42	\N	\N
18241	3	1	croissant, medium	57	\N	\N
18241	4	1	croissant, large	67	\N	\N
18242	1	0.5	oz	14.2	\N	\N
18242	2	1	cup	30	\N	\N
18243	1	0.5	oz	14.2	\N	\N
18243	2	1	cup	40	\N	\N
18243	3	1	package, fast food	10.0	\N	\N
18243	4	4	cubes	1.0	\N	\N
18244	1	1	oz	28.35	\N	\N
18244	2	1	large (approx 7"" dia)	142	\N	\N
18244	3	1	small or frozen (approx 3"" dia)	35	\N	\N
18244	4	1	pastry (4-1/4"" dia)	65	\N	\N
18244	5	1	Toaster Strudel	53	\N	\N
18244	6	1	piece (1/8 of 15 oz ring)	53	\N	\N
18245	1	1	oz	28.35	\N	\N
18245	2	1	pastry	71	\N	\N
18246	1	1	oz	28.35	\N	\N
18246	2	1	large (approx 7"" dia)	142	\N	\N
18246	3	1	small or frozen (approx 3"" dia)	35	\N	\N
18246	4	1	pastry (4-1/4"" dia)	71	\N	\N
18246	5	1	Toaster Strudel	53	\N	\N
18246	6	1	piece (1/8 of 15 oz ring)	53	\N	\N
18247	1	1	oz	28.35	\N	\N
18247	2	1	pastry (4-1/4"" dia)	65	\N	\N
18247	3	1	piece (1/8 of 15 oz ring)	53	\N	\N
18248	1	1	donut	40	9	9.151
18248	2	1	oz	28.35	\N	\N
18248	3	1	doughnut stick	52	\N	\N
18248	4	1	doughnut, long type (twist) (4-1/2"" long)	52	\N	\N
18248	5	1	doughnut medium (3-1/4"" dia)	54	10	6.816
18248	6	1	doughnut, mini (1-1/2"" dia) or doughnut hole	14.0	\N	\N
18248	7	1	doughnut, large (4"" dia)	71	\N	\N
18249	1	1	oz	28.35	\N	\N
18249	2	1	donettes (2"" dia)	18	10	2.323
18249	3	1	doughnut, medium (approx 3"" dia)	43	\N	\N
18249	4	1	doughnut large (approx 3-1/2"" dia)	67	8	8.752
18250	1	1	oz	28.35	\N	\N
18250	2	1	doughnut, medium (approx 3"" dia)	45	\N	\N
18251	1	1	oz	28.35	\N	\N
18251	2	1	doughnut (3-3/4"" dia)	60	\N	\N
18251	3	1	doughnut, medium (approx 3"" dia)	42	\N	\N
18253	1	1	oz	28.35	\N	\N
18253	2	1	cruller (3"" dia)	41	\N	\N
18254	1	1	oz	28.35	\N	\N
18254	2	1	doughnut oval (3-1/2"" x 2-1/2"")	85	\N	\N
18255	1	1	oz	28.35	\N	\N
18255	2	1	doughnut hole	13.0	\N	\N
18255	3	1	doughnut stick	56	\N	\N
18255	4	1	extra large (approx 5"" dia)	122	\N	\N
18255	5	1	jumbo (approx 6"" dia)	157	\N	\N
18255	6	1	doughnut, large (approx 4-1/4"" dia)	75	\N	\N
18255	7	1	doughnut, long type (twist) approx 5-1/4"" x 2-1/2"" x 1-1/2"" high)	90	\N	\N
18255	8	1	doughnut medium (approx 3-3/4"" dia)	64	20	12.312
18255	9	1	doughnut, small (approx 3"" dia)	31	\N	\N
18255	10	1	doughnut (approx 1-1/2 oz)	42	\N	\N
18255	11	1	doughnut (3-3/4"" dia)	60	\N	\N
18255	12	1	honeybun (4"" x 3"")	65	\N	\N
18255	13	1	honeybun (4-1/2"" x 3-1/2"")	78	\N	\N
18255	14	1	honeybun (5"" x 3-1/2"")	85	\N	\N
18255	15	1	doughnut, medium (approx 3-3/4"" dia)	60	\N	\N
18255	16	1	doughnut	63	15	10.892
18256	1	1	oz	28.35	\N	\N
18256	2	1	doughnut oval (3-1/2"" x 2-1/2"")	85	\N	\N
18258	1	1	oz	28.35	\N	\N
18258	2	1	muffin	57	\N	\N
18259	1	1	oz	28.35	\N	\N
18259	2	1	muffin	52	\N	\N
18260	1	1	oz	28.35	\N	\N
18260	2	1	muffin	66	\N	\N
18261	1	1	oz	28.35	\N	\N
18261	2	1	muffin	61	\N	\N
18262	1	1	oz	28.35	\N	\N
18262	2	1	muffin	57	\N	\N
18263	1	1	oz	28.35	\N	\N
18263	2	1	muffin	52	\N	\N
18264	1	1	oz	28.35	\N	\N
18264	2	1	muffin	57	\N	\N
18265	1	1	oz	28.35	\N	\N
18265	2	1	muffin	52	\N	\N
18266	1	1	oz	28.35	\N	\N
18266	2	1	muffin	66	\N	\N
18267	1	1	oz	28.35	\N	\N
18267	2	1	muffin	61	\N	\N
18268	1	1	oz	28.35	\N	\N
18268	2	1	piece	59	\N	\N
18269	1	1	oz	28.35	\N	\N
18269	2	1	slice	65	\N	\N
18270	1	1	oz	28.35	\N	\N
18270	2	1	cup	152	\N	\N
18270	3	1	hush puppy	22	\N	\N
18271	1	1	oz	28.35	\N	\N
18271	2	1	cone	4.0	\N	\N
18271	3	1	large waffle cone	29	\N	\N
18272	1	1	oz	28.35	\N	\N
18272	2	1	cone	10.0	\N	\N
18273	1	1	oz	28.35	\N	\N
18273	2	1	muffin	57	\N	\N
18274	1	1	oz	28.35	\N	\N
18274	2	1	mini (1-1/4"" dia)	17	19	6.369
18274	3	1	small (2-3/4"" dia x 2"")	66	15	10.207
18274	4	1	medium	113	11	8.142
18274	5	1	large (3-1/4"" dia x 2-3/4"")	139	8	6.27
18274	6	1	extra large	168	23	8.164
18274	7	1	muffin	31	27	30.394
18275	1	1	serving	43	1	\N
18275	2	1	package, mix + drained berries	356	\N	\N
18275	3	1	oz	28.35	\N	\N
18277	1	1	oz	28.35	\N	\N
18277	2	1	muffin, toaster	33	\N	\N
18278	1	1	oz	28.35	\N	\N
18278	2	1	muffin	57	\N	\N
18279	1	1	oz	28.35	\N	\N
18279	2	1	mini	17	19	6.369
18279	3	1	small	66	15	10.207
18279	4	1	medium	113	11	8.142
18279	5	1	large	139	8	6.27
18279	6	1	extra large	168	23	8.164
18280	1	1	oz	28.35	\N	\N
18281	1	1	oz	28.35	\N	\N
18281	2	1	muffin, toaster	33	\N	\N
18282	1	1	oz	28.35	\N	\N
18282	2	1	muffin (2-3/4"" dia x 2"")	57	\N	\N
18283	1	1	oz	28.35	\N	\N
18283	2	1	mini	17	19	6.369
18283	3	1	small	66	15	10.207
18283	4	1	medium	113	11	8.142
18283	5	1	large	139	8	6.27
18283	6	1	extra large	168	23	8.164
18284	1	1	oz	28.35	\N	\N
18284	2	1	package (7 oz)	198	\N	\N
18288	1	1	oz	28.35	\N	\N
18288	2	1	pancake	41	35	1.338
18288	3	1	pancake (6"" dia)	73	\N	\N
18288	4	1	mini pancake	10.1	64	0.772
18288	5	1	pancake	40	12	1.064
18289	1	0.333	cup	52	32	5.301
18289	2	1	oz	28.35	\N	\N
18289	3	1	cup, poured from box	130	\N	\N
18290	1	1	oz	28.35	\N	\N
18290	2	1	pancake (4"" dia)	38	\N	\N
18290	3	1	pancake (6"" dia)	77	\N	\N
18291	1	1	oz	28.35	\N	\N
18291	2	1	cup, poured from box	112	\N	\N
18292	1	1	oz	28.35	\N	\N
18292	2	1	pancake (4"" dia)	38	\N	\N
18292	3	1	pancake (6"" dia)	77	\N	\N
18293	1	1	oz	28.35	\N	\N
18293	2	1	pancake (4"" dia)	38	\N	\N
18293	3	1	pancake (6"" dia)	77	\N	\N
18294	1	1	oz	28.35	\N	\N
18294	2	1	pancake (4"" dia)	38	\N	\N
18294	3	1	pancake (6"" dia)	77	\N	\N
18295	1	1	oz	28.35	\N	\N
18295	2	1	cup, poured from box	122	\N	\N
18297	1	1	oz	28.35	\N	\N
18297	2	1	package (8 oz)	227	\N	\N
18299	1	1	oz	28.35	\N	\N
18299	2	1	cup, poured from box	140	\N	\N
18300	1	1	oz	28.35	\N	\N
18300	2	1	pancake (4"" dia)	44	\N	\N
18300	3	1	pancake (6"" dia)	129	\N	\N
18301	1	1	oz	28.35	\N	\N
18301	2	1	piece (1/8 of 9"" dia)	125	\N	\N
18301	3	1	piece (1/6 of 8"" pie)	117	\N	\N
18302	1	1	oz	28.35	\N	\N
18302	2	1	piece (1/8 of 9"" dia)	155	\N	\N
18303	1	1	oz	28.35	\N	\N
18303	2	1	piece (1/8 of 9"" dia)	92	\N	\N
18303	3	1	piece (1/6 of 8"" pie)	123	\N	\N
18304	1	1	oz	28.35	\N	\N
18304	2	1	pie (9"" dia)	1186	\N	\N
18304	3	1	piece (1/8 of 9"" dia)	144	\N	\N
18305	1	1	oz	28.35	\N	\N
18305	2	1	piece (1/8 of 9"" dia)	125	\N	\N
18305	3	1	piece (1/6 of 8"" pie)	117	\N	\N
18306	1	1	oz	28.35	\N	\N
18306	2	1	piece (1/8 of 9"" dia)	147	\N	\N
18308	1	1	oz	28.35	\N	\N
18308	2	1	piece (1/8 of 9"" dia)	125	\N	\N
18308	3	1	piece (1/6 of 8"" pie)	117	\N	\N
18309	1	1	oz	28.35	\N	\N
18309	2	1	piece (1/8 of 9"" dia)	180	\N	\N
18310	1	1	serving .167 pie	120	1	\N
18310	2	1	oz	28.35	\N	\N
18310	3	1	piece (1/4 of 6"" pie)	99	\N	\N
18310	4	1	piece (1/6 of 8"" pie)	113	\N	\N
18312	1	1	oz	28.35	\N	\N
18312	2	1	piece (1/8 of 9"" dia)	95	\N	\N
18313	1	1	oz	28.35	\N	\N
18313	2	1	piece (1/6 of 7"" pie)	64	\N	\N
18313	3	1	piece (1/8 of 7"" pie)	48	\N	\N
18314	1	1	oz	28.35	\N	\N
18314	2	1	piece (1/8 of 9"" dia)	94	\N	\N
18316	1	1	oz	28.35	\N	\N
18316	2	1	piece (1/6 of 8"" pie)	104	\N	\N
18317	1	1	oz	28.35	\N	\N
18317	2	1	piece (1/6 of 8"" pie)	105	\N	\N
18319	1	1	oz	28.35	\N	\N
18319	2	1	pie (5"" x 3-3/4"")	128	\N	\N
18320	1	1	oz	28.35	\N	\N
18320	2	1	piece (1/6 of 8"" pie)	113	\N	\N
18321	1	1	oz	28.35	\N	\N
18321	2	1	piece (1/8 of 9"" dia)	127	\N	\N
18322	1	1	oz	28.35	\N	\N
18322	2	1	piece (1/8 of 9"" dia)	165	\N	\N
18323	1	1	oz	28.35	\N	\N
18323	2	1	piece (1/6 of 8"" pie)	117	\N	\N
18324	1	1	oz	28.35	\N	\N
18324	2	1	slice	133	8	8.558
18324	3	1	pie	833	8	121.506
18325	1	1	oz	28.35	\N	\N
18325	2	1	piece (1/8 of 9"" dia)	122	\N	\N
18326	1	1	oz	28.35	\N	\N
18326	2	1	slice	133	12	3.072
18326	3	1	pie	995	12	17.04
18327	1	1	oz	28.35	\N	\N
18327	2	1	piece (1/8 of 9"" dia)	155	\N	\N
18328	1	1	oz	28.35	\N	\N
18328	2	1	piece (1/8 of 9"" dia)	126	\N	\N
18332	1	1	oz	28.35	\N	\N
18332	2	1	package (10 oz)	284	\N	\N
18333	1	1	piece (1/8 of 9"" crust)	20	\N	\N
18333	2	1	crust, single 9""	160	\N	\N
18334	1	1	piece (1/8 of 9"" crust)	18	\N	\N
18334	2	1	pie crust (average weight of 1 frozen crust)	173	8	32.471
18335	1	1	pie crust (average weight of 1 baked crust)	154	8	30.968
18336	1	1	piece (1/8 of 9"" crust)	23	\N	\N
18336	2	1	crust, single 9""	180	\N	\N
18337	1	1	oz	28.35	\N	\N
18337	2	1	shell	47	\N	\N
18338	1	1	oz	28.35	\N	\N
18338	2	1	sheet dough	19	\N	\N
18339	1	1	oz	28.35	\N	\N
18339	2	1	package (6 oz)	170	\N	\N
18342	1	1	roll (1 oz)	28	\N	\N
18342	2	1	each (pan, dinner, or small roll) (2"" square, 2"" high)	25	6	4.135
18342	3	1	roll (hamburger, frankfurter, onion roll, bun, large roll)	43	\N	\N
18342	4	1	roll (foot long frankfurter roll)	86	\N	\N
18344	1	1	oz	28.35	\N	\N
18344	2	1	roll (2-1/2"" dia)	35	\N	\N
18345	1	1	oz	28.35	\N	\N
18345	2	1	roll	33	\N	\N
18346	1	1	large (approx 3-1/2"" to 4"" dia)	43	\N	\N
18346	2	1	medium	36	\N	\N
18346	3	1	small (2-3/8"" dia)	28	\N	\N
18347	1	1	roll (1 oz)	28	\N	\N
18348	1	1	roll (1 oz)	28	\N	\N
18348	2	1	roll (hamburger, frankfurter roll)	43	\N	\N
18348	3	1	roll, large submarine, hoagie	135	\N	\N
18348	4	1	medium (2-1/2"" dia)	36	\N	\N
18348	5	1	roll medium submarine, hoagie	94	\N	\N
18348	6	1	roll (small submarine, hoagie roll)	65	\N	\N
18349	1	1	oz	28.35	\N	\N
18349	2	1	roll	38	\N	\N
18350	1	1	roll 1 serving	44	10	3.504
18350	2	1	oz	28.35	\N	\N
18351	1	1	oz	28.35	\N	\N
18351	2	1	roll	43	\N	\N
18352	1	1	oz	28.35	\N	\N
18352	2	1	roll	43	\N	\N
18353	1	1	oz	28.35	\N	\N
18353	2	1	roll (3-1/2"" dia)	57	\N	\N
18354	1	1	oz	28.35	\N	\N
18354	2	1	piece	71	\N	\N
18355	1	1	oz	28.35	\N	\N
18355	2	1	roll	66	\N	\N
18356	1	1	oz	28.35	\N	\N
18356	2	1	large	83	\N	\N
18356	3	1	roll (2-3/4"" square)	60	\N	\N
18357	1	1	oz	28.35	\N	\N
18357	2	1	roll	30	\N	\N
18358	1	1	oz	28.35	\N	\N
18358	2	1	roll	30	\N	\N
18360	1	1	shell	12.9	31	1.68
18360	2	1	taco	12.7	15	0.942
18360	3	1	medium (approx 5"" dia)	13.3	\N	\N
18360	4	1	large (6-1/2"" dia)	21	\N	\N
18360	5	1	miniature (3"" dia)	5.0	\N	\N
18360	6	1	oz	28.35	\N	\N
18361	1	1	oz	28.35	\N	\N
18361	2	1	pastry	51	1	\N
18362	1	1	oz	28.35	\N	\N
18362	2	1	pastry	54	4	1.832
18363	1	1	oz	28.35	\N	\N
18363	2	1	enchilada	19	20	0.626
18363	3	1	tortilla	24	404	5.405
18364	1	1	tortilla	48	31	11.188
18364	2	1	oz	28.35	\N	\N
18364	3	1	tortilla medium (approx 6"" dia)	30	120	2.984
18364	4	1	package	407	26	75.7
18364	5	1	tortilla (approx 10"" dia)	72	\N	\N
18364	6	1	tortilla (approx 12"" dia)	117	\N	\N
18364	7	1	tortilla (approx 7-8"" dia)	49	\N	\N
18365	1	1	oz	28.35	\N	\N
18365	2	1	waffle, square (4"" square) (include frozen)	35	\N	\N
18367	1	1	oz	28.35	\N	\N
18367	2	1	waffle, round (7"" dia)	75	\N	\N
18368	1	1	oz	28.35	\N	\N
18368	2	1	wrapper, eggroll (7"" square)	32	\N	\N
18368	3	1	wrapper, wonton (3-1/2"" square)	8.0	\N	\N
18369	1	1	tsp	4.6	\N	\N
18369	2	0.5	tsp	2.3	\N	\N
18370	1	1	tsp	4.6	\N	\N
18370	2	0.5	tsp	2.3	\N	\N
18371	1	1	tsp	5.0	\N	\N
18371	2	0.5	tsp	2.5	\N	\N
18372	1	1	tsp	4.6	\N	\N
18372	2	0.5	tsp	2.3	\N	\N
18373	1	1	tsp	3.0	\N	\N
18373	2	0.5	tsp	1.5	\N	\N
18374	1	1	cake (0.6 oz)	17	\N	\N
18375	1	1	tsp	4.0	\N	\N
18375	2	1	tbsp	12.0	\N	\N
18375	3	1	packet	7.2	3	0.173
18376	1	1	oz	28.35	\N	\N
18376	2	1	cup	120	\N	\N
18377	1	1	oz	28.35	\N	\N
18377	2	1	cookie (2-5/8"" dia)	15.0	\N	\N
18378	1	1	oz	28.35	\N	\N
18378	2	1	cookie, medium (2-1/4"" dia)	16	\N	\N
18383	1	1	oz	28.35	\N	\N
18383	2	1	slice	17	\N	\N
18384	1	1	oz	28.35	\N	\N
18384	2	1	slice	25	\N	\N
18385	1	1	oz	28.35	\N	\N
18385	2	1	slice	25	\N	\N
18386	1	1	oz	28.35	\N	\N
18386	2	1	muffin, toaster	31	\N	\N
18388	1	1	oz	28.35	\N	\N
18388	2	1	muffin, toaster	34	\N	\N
18390	1	1	oz	28.35	\N	\N
18390	2	1	pancake (4"" dia)	38	\N	\N
18390	3	1	pancake (6"" dia)	77	\N	\N
18396	1	1	oz	28.35	\N	\N
18396	2	1	large roll or bun (3-1/2"" dia)	43	\N	\N
18396	3	1	roll (2-1/2"" dia)	35	\N	\N
18399	1	1	piece (1/8 of 9"" crust)	30	\N	\N
18399	2	1	crust, single 9""	244	\N	\N
18400	1	0.5	oz	14.2	\N	\N
18400	2	1	matzo	28	\N	\N
18401	1	1	cup	129	\N	\N
18401	2	1	crust, single 9""	176	\N	\N
18401	3	1	piece (1/8 of 9"" crust)	22	\N	\N
18402	1	1	piece (1/8 of 9"" crust)	24	\N	\N
18402	2	1	crust, single 9""	194	\N	\N
18403	1	1	oz	28.35	\N	\N
18403	2	1	waffle, round (4"" dia)	33	\N	\N
18403	3	1	waffle, square (4"" square)	33	\N	\N
18406	1	1	oz	28.35	\N	\N
18406	2	1	mini bagel (2-1/2"" dia)	26	\N	\N
18406	3	1	small bagel (3"" dia)	69	14	11.387
18406	4	1	medium bagel (3-1/2"" to 4"" dia)	105	43	7.619
18406	5	1	large bagel (4-1/2"" dia)	131	7	9.845
18407	1	1	oz	28.35	\N	\N
18407	2	1	mini bagel (2-1/2"" dia)	26	\N	\N
18407	3	1	small bagel (3"" dia)	69	14	11.387
18407	4	1	medium bagel (3-1/2"" to 4"")	105	43	7.619
18407	5	1	large bagel (4-1/2"" dia)	131	7	9.845
18408	1	1	oz	28.35	\N	\N
18408	2	1	mini bagel (2-1/2"" dia)	26	\N	\N
18408	3	1	small bagel (3"" dia)	69	14	11.387
18408	4	1	medium bagel (3-1/2"" to 4"" dia)	105	43	7.619
18408	5	1	large bagel (4-1/2"" dia)	131	7	9.845
18412	1	1	oz	28.35	\N	\N
18412	2	1	package (8.5 oz)	241	\N	\N
18413	1	1	oz	28.35	\N	\N
18413	2	1	pita, large (6-1/2"" dia)	60	\N	\N
18414	1	1	oz	28.35	\N	\N
18414	2	1	slice, large	32	\N	\N
18414	3	1	slice	26	\N	\N
18414	4	1	slice, thin	23	\N	\N
18416	1	1	oz	28.35	\N	\N
18416	2	1	cup, crumbs	45	\N	\N
18416	3	1	cup, cubes	35	\N	\N
18416	4	1	slice, large	30	\N	\N
18416	5	1	slice	25	\N	\N
18416	6	1	slice, thin	20	\N	\N
18417	1	1	oz	28.35	\N	\N
18417	2	1	individual cake	57	\N	\N
18417	3	1	piece (1/9 of 20 oz cake)	63	\N	\N
18418	1	1	piece (1/10 of 10.6 oz cake)	30	\N	\N
18418	2	1	piece (1/12 of 12 oz cake)	28	\N	\N
18418	3	1	snack cake (2.5 oz)	71	\N	\N
18419	1	1	oz	28.35	\N	\N
18419	2	1	package (18.50 oz)	524	\N	\N
18420	1	1	oz	28.35	\N	\N
18420	2	1	package (18.50 oz)	524	\N	\N
18421	1	1	oz	28.35	\N	\N
18421	2	1	cookie	5.0	\N	\N
18422	1	1	oz	28.35	\N	\N
18422	2	1	cookie, medium (2-1/4"" dia)	10.0	\N	\N
18422	3	1	cookie, bite size (include Mini Chips Ahoy!)	2.2	\N	\N
18423	1	1	oz	28.35	\N	\N
18423	2	1	anisette sponge (4"" x 1-1/8"" x 7/8"")	13.0	\N	\N
18423	3	1	breakfast treat (approx 4"" x 2"" x 7/8"")	24	\N	\N
18423	4	1	ladyfinger	11.0	\N	\N
18424	1	0.5	oz	14.2	\N	\N
18424	2	1	cup, crushed	70	\N	\N
18424	3	1	cup pieces	30	\N	\N
18424	4	1	cup, rounds	33	\N	\N
18424	5	1	melba round	3.0	\N	\N
18424	6	1	piece (3-3/4"" x 1-3/4"" x 1/8"")	5.0	\N	\N
18424	7	1	toast	5.0	\N	\N
18425	1	0.5	oz	14.2	\N	\N
18425	2	1	cup oyster crackers	45	\N	\N
18425	3	1	cracker	3.0	24	0.138
18425	4	1	cracker, round large	10.0	\N	\N
18425	5	1	cracker, oyster	1.0	\N	\N
18425	6	1	cracker, rectangle	6.0	\N	\N
18426	1	0.5	oz	14.2	\N	\N
18426	2	1	cracker	3.0	\N	\N
18427	1	0.5	oz	14.2	\N	\N
18427	2	1	cup, bite size	62	\N	\N
18427	3	1	cup, crushed	72	\N	\N
18427	4	1	cracker, rectangular	4.0	\N	\N
18427	5	1	cracker, oval	3.0	\N	\N
18427	6	1	cracker, round	3.0	\N	\N
18428	1	0.5	oz	14.2	\N	\N
18428	2	1	cup, crushed	83	\N	\N
18428	3	1	cracker	2.0	\N	\N
18428	4	1	cracker, thin square	2.0	\N	\N
18429	1	0.5	oz	14.2	\N	\N
18429	2	1	cup, crushed	94	\N	\N
18429	3	1	cracker	4.0	\N	\N
18429	4	1	cracker, square	4.0	\N	\N
18429	5	10	Triscuit Bits	10.0	\N	\N
18430	1	1	oz	28.35	\N	\N
18430	2	1	large (approx 7"" dia)	142	\N	\N
18430	3	1	small or frozen (approx 3"" dia)	35	\N	\N
18430	4	1	pastry (4-1/4"" dia)	65	\N	\N
18430	5	1	Toaster Strudel	53	\N	\N
18430	6	1	piece (1/8 of 15 oz ring)	53	\N	\N
18431	1	1	oz	28.35	\N	\N
18431	2	1	container (3 oz)	142	\N	\N
18431	3	1	small or frozen (approx 3"" dia)	35	\N	\N
18431	4	1	pastry (4-1/4"" dia)	71	\N	\N
18431	5	1	Toaster Strudel	53	\N	\N
18431	6	1	piece (1/8 of 15 oz ring)	53	\N	\N
18432	1	1	oz	28.35	\N	\N
18432	2	1	slice	23	\N	\N
18433	1	1	oz	28.35	\N	\N
18433	2	1	pastry	71	\N	\N
18434	1	0.5	oz	14.2	\N	\N
18434	2	1	cup Cheez-its	62	\N	\N
18434	3	1	cup, crushed	72	\N	\N
18434	4	1	gold fish	0.6	\N	\N
18434	5	1	cracker (1"" square)	1.0	\N	\N
18435	1	1	oz	28.35	\N	\N
18435	2	1	pastry (4-1/4"" dia)	71	\N	\N
18436	1	1	oz	28.35	\N	\N
18436	2	1	doughnut, medium (3-1/4"" dia)	60	\N	\N
18437	1	1	oz	28.35	\N	\N
18437	2	1	muffin	57	\N	\N
18438	1	1	oz	28.35	\N	\N
18438	2	1	muffin	57	\N	\N
18439	1	1	oz	28.35	\N	\N
18439	2	1	muffin	57	\N	\N
18443	1	1	oz	28.35	\N	\N
18443	2	1	piece (1/8 of 9"" dia)	125	\N	\N
18443	3	1	piece (1/6 of 8"" pie)	117	\N	\N
18444	1	1	oz	28.35	\N	\N
18444	2	1	pie (5"" x 3-3/4"")	128	\N	\N
18445	1	1	oz	28.35	\N	\N
18445	2	1	pie (5"" x 3-3/4"")	128	\N	\N
18446	1	1	crust, single 9""	142	\N	\N
18446	2	1	piece (1/8 of 9"" crust)	16	\N	\N
18447	1	1	oz	28.35	\N	\N
18447	2	1	package (6 oz)	170	\N	\N
18448	1	1	oz	28.35	\N	\N
18448	2	1	medium (approx 5"" dia)	13.0	\N	\N
18448	3	1	miniature (3"" dia)	5.0	\N	\N
18449	1	1	oz	28.35	\N	\N
18449	2	1	tortilla, medium (approx 6"" dia)	26	\N	\N
18450	1	1	oz	28.35	\N	\N
18450	2	1	tortilla, medium (approx 6"" dia)	32	\N	\N
18450	3	1	tortilla (approx 10"" dia)	72	\N	\N
18450	4	1	tortilla (approx 12"" dia)	117	\N	\N
18450	5	1	tortilla (approx 7-8"" dia)	49	\N	\N
18451	1	1	oz	28.35	\N	\N
18451	2	1	cake	340	\N	\N
18453	1	1	oz	28.35	\N	\N
18453	2	1	package (18.50 oz)	524	\N	\N
18457	1	3	saltines	15.0	\N	\N
18457	2	6	saltines	30	\N	\N
18459	1	1	tart	52	\N	\N
18476	1	1	pastry	52	\N	\N
18477	1	1	pastry	52	\N	\N
18478	1	1	pastry	50	\N	\N
18479	1	1	pastry	50	1	\N
18481	1	1	pastry	52	\N	\N
18482	1	1	pastry	52	1	\N
18486	1	1	pastry	52	\N	\N
18487	1	1	pastry	52	\N	\N
18488	1	1	pastry	52	\N	\N
18489	1	1	pastry	52	1	\N
18490	1	1	pastry	52	1	\N
18494	1	1	pastry	50	1	\N
18497	1	1	pastry	50	1	\N
18499	1	3	pancakes (NLEA serving)	116	\N	\N
18501	1	1	bar (NLEA serving)	116	\N	\N
18505	1	2	waffles 1 serving	70	1	\N
18505	2	1	round waffle (4"" dia) (include frozen)	35	\N	\N
18506	1	2	waffles 1 serving	70	1	\N
18506	2	1	waffle, round (4"" dia) (include frozen)	35	\N	\N
18507	1	1	waffle, round (4"" dia) (include frozen)	35	\N	\N
18507	2	1	serving	70	\N	\N
18513	1	1	serving	24	\N	\N
18522	1	1	serving	24	\N	\N
18524	1	1	serving	22	\N	\N
18527	1	1	serving	25	\N	\N
18528	1	1	serving	24	\N	\N
18529	1	1	serving	26	\N	\N
18532	1	1	serving	28	\N	\N
18533	1	1	serving	28	\N	\N
18535	1	1	serving	26	\N	\N
18537	1	1	serving	25	\N	\N
18538	1	1	serving	26	\N	\N
18539	1	1	serving	26	\N	\N
18540	1	1	serving	20	\N	\N
18541	1	1	serving	21	\N	\N
18544	1	1	serving	25	\N	\N
18547	1	1	serving	25	\N	\N
18562	1	1	serving	32	\N	\N
18566	1	1	muffin	31	\N	\N
18567	1	1	NLEA serving (makes 1/2 cup prepared)	28	\N	\N
18603	1	1	serving	67	\N	\N
18608	1	1	serving	31	\N	\N
18609	1	8	cookies	30	1	\N
18610	1	1	serving	40	\N	\N
18612	1	1	serving	57	\N	\N
18614	1	1	serving	28	\N	\N
18615	1	1	serving	41	\N	\N
18616	1	1	serving	51	\N	\N
18617	1	1	serving	28	\N	\N
18619	1	1	serving	11.0	\N	\N
18621	1	1	cracker	3.3	12	0.108
18621	2	5	cracker (1 NLEA serving)	16	\N	\N
18629	1	1	biscuit	64	\N	\N
18629	2	1	serving	64	\N	\N
18630	1	1	serving 2 cookies	38	\N	\N
18631	1	1	serving	52	\N	\N
18632	1	1	serving	30	\N	\N
18633	1	1	biscuit	34	\N	\N
18634	1	1	serving	34	\N	\N
18635	1	1	serving 1 roll with icing	44	1	\N
18637	1	1	serving	28	\N	\N
18639	1	1	serving	57	\N	\N
18640	1	1	eclair, frozen	59	\N	\N
18641	1	1	serving	43	\N	\N
18642	1	1	serving	43	\N	\N
18651	1	1	serving	16	\N	\N
18927	1	6	cracker 1 cracker = 6.5g	39	\N	\N
18927	2	1	sandwich	6.5	\N	\N
18932	1	1	waffle, square	39	10	1.711
18932	2	1	waffle, round	38	40	3.095
18933	1	1	oz	28	\N	\N
18933	2	1	waffle round (4"" dia)	33	\N	\N
18933	3	1	waffle square (4"" square)	33	\N	\N
18934	1	1	waffle	35	\N	\N
18935	1	1	waffle, round (4""dia)	32	\N	\N
18936	1	1	oz	28.35	\N	\N
18936	2	1	pancake	38	5	0.471
18936	3	1	serving (3 pancakes)	144	\N	\N
18938	1	1	piece	53	34	1.48
18938	2	1	oz	28.35	\N	\N
18939	1	1	pastry	51	8	2.641
18940	1	1	muffin small	71	1	\N
18940	2	1	oz	28.35	\N	\N
18942	1	1	oz	28.35	\N	\N
18942	2	1	crust	183	8	6.897
18943	1	1	crust	182	10	8.513
18944	1	0.125	pie 1 pie (1/8 of 9"" pie)	131	2	\N
18944	2	1	slice	137	12	8.197
18944	3	1	pie	1137	12	117.634
18944	4	1	oz	28.35	\N	\N
18945	1	1	pie crust (average weight)	225	12	41.843
18946	1	1	pie crust	198	8	11.621
18947	1	1	pie crust (average weight)	202	12	40.379
18948	1	1	pie crust (average weight)	229	8	11.202
18949	1	1	serving	29	\N	\N
18949	2	1	cracker	4.2	12	0.287
18949	3	6	Triscuits, regular size	29	\N	\N
18950	1	1	serving	29	\N	\N
18950	2	1	cracker	1.8	12	0.106
18950	3	16	crackers, Wheat Thins	29	\N	\N
18951	1	2	waffles	70	1	\N
18952	1	1	piece	12.3	15	0.446
18952	2	3	pieces (mean serving weight, aggregated over brands)	37	2	\N
18953	1	1	serving (approximate serving size)	55	\N	\N
18953	2	1	cake square (average weight of whole item)	399	3	6.676
18954	1	1	serving	55	1	\N
18954	2	1	cake square	622	4	142.463
18955	1	1	slice (average weight of 1 slice)	63	9	27.206
18956	1	1	piece	42	\N	\N
18957	1	1	slice	39	3	3.612
18957	2	1	loaf	311	1	\N
18958	1	1	piece (1 serving)	42	\N	\N
18959	1	1	piece	86	9	7.925
18960	1	1	serving (1 NLEA serving - about 4 crackers)	30	\N	\N
18960	2	1	cracker	12.7	2	\N
18961	1	11	crackers (1 NLEA serving)	31	\N	\N
18961	2	1	cracker	3.1	11	0.093
18962	1	10	crackers (1 NLEA serving)	32	\N	\N
18962	2	1	cracker	3.1	4	0.163
18963	1	1	slice presliced	43	6	3.208
18963	2	1	slice	59	14	8.544
18964	1	1	bun	65	20	32.286
18965	1	1	serving	30	1	\N
18966	1	1	serving	14.0	1	\N
18967	1	1	slice	28	2	\N
18968	1	1	bagel	98	1	\N
18969	1	4	oz	113	1	\N
18970	1	1	tortilla	49	30	12.001
18970	2	1	package	484	30	100.029
18971	1	1	slice	32	1	\N
18972	1	1	slice	48	1	\N
18973	1	1	piece	57	1	\N
18974	1	15	cracker	30	1	\N
18975	1	15	crackers	30	1	\N
18976	1	18	cracker	30	1	\N
18977	1	15	crackers	31	1	\N
18978	1	2	pieces	72	1	\N
18979	1	7	cracker	30	1	\N
18980	1	2	pieces	72	1	\N
18981	1	15	crackers	30	1	\N
18982	1	7	cracker	30	1	\N
18983	1	1	package	39	1	\N
18984	1	1	package	39	1	\N
18985	1	1	package	39	1	\N
18986	1	1	package	39	1	\N
18987	1	1	package	36	1	\N
18988	1	1	package	36	1	\N
18989	1	1	package	36	1	\N
18990	1	1	package	39	1	\N
18991	1	4	cookies	31	1	\N
18992	1	12	chips	28	1	\N
18993	1	1	cookie	30	1	\N
18994	1	1	cookie	30	1	\N
18995	1	1	bscuit	105	1	\N
18996	1	1	bscuit	105	1	\N
18997	1	2	pieces	90	1	\N
18998	1	2	pieces	90	1	\N
18999	1	1	set	46	1	\N
19001	1	1	bar	35	\N	\N
19002	1	1	oz	28.35	\N	\N
19002	2	1	piece, large	20	\N	\N
19002	3	1	oz	28.35	5	0
19003	1	1	oz	28	22	0
19003	2	1	oz	28.35	\N	\N
19003	3	1	bag (7 oz)	198	\N	\N
19004	1	1	oz	28.35	\N	\N
19004	2	1	bag (7 oz)	198	\N	\N
19005	1	1	oz	28.35	\N	\N
19007	1	1	oz	28.35	\N	\N
19007	2	2	oz	57	\N	\N
19008	1	1	oz	28.35	\N	\N
19008	2	1	package 1.25 oz	35	\N	\N
19009	1	1	oz	28.35	\N	\N
19009	2	2	oz	57	\N	\N
19009	3	1	cup	85	\N	\N
19010	1	1	bar (1 oz)	28	\N	\N
19013	1	1	oz	28.35	\N	\N
19013	2	1	package	27	\N	\N
19013	3	1	packet (.75 oz)	21	\N	\N
19014	1	1	large	21	\N	\N
19014	2	1	small	14.0	\N	\N
19015	1	1	bar	21	\N	\N
19015	2	1	bar (1 oz)	28	\N	\N
19015	3	1	bar	25	\N	\N
19016	1	1	oz	28.35	\N	\N
19016	2	1	bar	24	\N	\N
19017	1	1	oz	28.35	\N	\N
19017	2	1	bar	24	\N	\N
19018	1	1	cup	334	\N	\N
19018	2	0.25	cup	84	\N	\N
19020	1	1	bar (1 oz)	28	\N	\N
19021	1	1	bar (1 oz)	28	\N	\N
19022	1	1	bar (1.5 oz)	43	\N	\N
19022	2	1	bar (1 oz)	28	\N	\N
19024	1	1	bar (1.25 oz)	35	\N	\N
19024	2	1	bar (1 oz)	28	\N	\N
19026	1	1	oz	28.35	\N	\N
19026	2	1	bar	37	\N	\N
19027	1	1	bar (1 oz)	28	\N	\N
19030	1	1	serving	20	\N	\N
19031	1	1	oz	28.35	\N	\N
19031	2	2	oz	57	\N	\N
19033	1	1	oz	28.35	\N	\N
19033	2	1	cup	47	4	5.35
19033	3	1	package	49	\N	\N
19034	1	1	cup	8.0	\N	\N
19034	2	1	oz	28.35	\N	\N
19035	1	1	cup	11.0	\N	\N
19035	2	1	oz	28.35	\N	\N
19036	1	1	cake	10.0	\N	\N
19036	2	2	cakes	20	\N	\N
19038	1	1	oz (approx 2/3 cup)	28.35	\N	\N
19038	2	2	oz	57	\N	\N
19039	1	1	oz	28.35	\N	\N
19040	1	1	cup	11.0	\N	\N
19040	2	1	oz	28.35	\N	\N
19041	1	1	oz	28.35	\N	\N
19041	2	0.5	oz	14.2	\N	\N
19042	1	1	oz	28.35	\N	\N
19042	2	1	bag (7 oz)	198	\N	\N
19043	1	1	oz	28.35	\N	\N
19043	2	1	bag (7 oz)	198	\N	\N
19045	1	1	oz	28.35	\N	\N
19045	2	1	can (6 oz)	170	\N	\N
19046	1	1	oz	28.35	\N	\N
19046	2	1	can (6.75 oz)	198	\N	\N
19047	1	1	oz	28.35	\N	\N
19047	2	10	twists	60	\N	\N
19048	1	1	oz	28.35	\N	\N
19048	2	1	pretzel	11.0	\N	\N
19049	1	1	oz	28.35	\N	\N
19049	2	10	pieces	30	\N	\N
19050	1	1	oz	28.35	\N	\N
19050	2	2	oz	57	\N	\N
19051	1	1	cake	9.0	\N	\N
19051	2	2	cakes	18	\N	\N
19052	1	1	cake	9.0	\N	\N
19052	2	2	cakes	18	\N	\N
19053	1	1	cake	9.0	\N	\N
19053	2	2	cakes	18	\N	\N
19056	1	1	oz	28.35	1	\N
19056	2	1	bag	213	1	\N
19057	1	1	oz	28.35	\N	\N
19058	1	1	oz	28.35	\N	\N
19058	2	1	bag (7 oz)	198	\N	\N
19059	1	1	cup	150	\N	\N
19059	2	1	oz	28.35	\N	\N
19059	3	1.5	oz	42	\N	\N
19061	1	1	cup	140	\N	\N
19061	2	1	oz	28.35	\N	\N
19061	3	1.5	oz	42	\N	\N
19062	1	1	cup	146	\N	\N
19062	2	1	oz	28.35	\N	\N
19062	3	1.5	oz	42	\N	\N
19063	1	1	oz	28.35	\N	\N
19063	2	1	bag (8 oz)	227	\N	\N
19064	1	1	serving 6 pieces	40	1	\N
19064	2	1	piece	6.6	4	0.189
19065	1	1	package 1.76 oz	49	1	\N
19065	2	1	bar snack size	19	1	\N
19067	1	18	pieces	40	1	\N
19068	1	1	serving 6 pieces	40	1	\N
19069	1	1	serving 2.1 oz bar	60	1	\N
19069	2	1	serving 1 fun size bar 0.65 oz	18	1	\N
19069	3	1	serving 0.75 oz bar	21	1	\N
19069	4	1	bar bite size	7.0	\N	\N
19069	5	1	bar king size	108	\N	\N
19069	6	10	Butterfinger BB's	26	\N	\N
19069	7	2	tbsp	25	\N	\N
19069	8	1	cup BB's	174	\N	\N
19070	1	1	oz	28.35	1	\N
19070	2	3	pieces	16	2	\N
19071	1	1	oz	28.35	\N	\N
19071	2	1	bar (3 oz)	87	\N	\N
19074	1	1	package (2.5 oz)	71	\N	\N
19074	2	1	piece	10.1	\N	\N
19075	1	1	bar 1.25 oz	35	1	\N
19075	2	1	bar 1.6 oz	45	1	\N
19075	3	6	blocks	43	1	\N
19076	1	1	piece	6.6	4	0.189
19076	2	1	bar 2.25 oz	64	1	\N
19076	3	1	serving 6 pieces	40	1	\N
19077	1	1	oz	28.35	\N	\N
19078	1	1	oz square Bakers	29	18	0.72
19078	2	1	cup, grated	132	\N	\N
19078	3	0.5	oz Hersheys	14.2	\N	\N
19079	1	1	cup chips	170	\N	\N
19080	1	1	serving	14.5	2	\N
19080	2	1	cup large chips	182	\N	\N
19080	3	1	cup mini chips	173	\N	\N
19080	4	1	oz (approx 60 pcs)	28.35	\N	\N
19080	5	1	cup chips (6 oz package)	168	\N	\N
19081	1	1	oz	28.35	\N	\N
19081	2	1	bar (1.45 oz)	41	\N	\N
19083	1	1	patty, large	43	\N	\N
19083	2	1	patty, small	11.0	\N	\N
19084	1	13	pieces	41	1	\N
19085	1	1	cup chips	170	\N	\N
19085	2	1	oz	28.35	\N	\N
19086	1	1	cup chips	168	\N	\N
19086	2	1	oz	28.35	\N	\N
19087	1	1	bar (3 oz)	85	\N	\N
19087	2	1	tbsp	14.0	1	\N
19087	3	1	cup chips	170	\N	\N
19088	1	1	serving 1/2 cup	76	4	16
19089	1	0.5	cup	107	2	\N
19090	1	0.5	cup (4 fl oz)	86	\N	\N
19091	1	1	patty 1.5 oz	43	1	\N
19092	1	27	pieces	40	1	\N
19093	1	1	bar 1.5 oz	42	1	\N
19093	2	1	bar 2.4 oz	68	1	\N
19094	1	0.5	cup	153	\N	\N
19094	2	1	recipe yield	1531	\N	\N
19095	1	1	serving 1/2 cup	66	3	1.732
19096	1	1	serving 1/2 cup	88	\N	\N
19097	1	0.5	cup (4 fl oz)	74	\N	\N
19097	2	1	bar (2.75 fl oz)	66	\N	\N
19098	1	1	bar 2 oz	56	1	\N
19098	2	1	bar snack size	16	1	\N
19099	1	1	oz	28.35	\N	\N
19100	1	1	piece	17	\N	\N
19101	1	1	oz	28.35	\N	\N
19102	1	1	piece	16	\N	\N
19103	1	1	oz	28.35	\N	\N
19104	1	1	oz	28.35	\N	\N
19105	1	1	package 1.375 oz	39	\N	\N
19105	2	1	serving 0.25 cup	41	\N	\N
19105	3	1	serving fun size	48	\N	\N
19106	1	1	cup gumdrops	182	\N	\N
19106	2	10	gumdrops	36	\N	\N
19106	3	10	gummy bears	22	\N	\N
19106	4	10	gummy dinosaurs	63	\N	\N
19106	5	10	gummy fish	50	\N	\N
19106	6	10	gummy worms	74	\N	\N
19106	7	1	spice stick	9.5	\N	\N
19106	8	1	spice drop	24	\N	\N
19106	9	1	gumdrop, small (1/2"" dia)	3.2	\N	\N
19106	10	1	gumdrop, medium (3/4"" dia)	4.2	\N	\N
19106	11	1	gumdrop, large (1"" dia)	11.6	\N	\N
19106	12	1	jelly ring (1-1/4"" dia)	10.0	\N	\N
19107	1	1	oz	28.35	\N	\N
19107	2	1	piece	6.0	\N	\N
19107	3	1	piece, small	3.0	\N	\N
19108	1	10	small	11.0	\N	\N
19108	2	10	large (1 oz)	28	\N	\N
19109	1	1	bar (1.5 oz)	42	\N	\N
19109	2	1	bar, miniature (.35 oz)	10.0	\N	\N
19109	3	1	bar (1.625 oz)	46	\N	\N
19109	4	1	bar (2.8 oz)	78	\N	\N
19109	5	1	bar (3.375 oz)	96	\N	\N
19110	1	1	bar 1.45 oz	41	1	\N
19110	2	1	bar 2 oz	56	1	\N
19110	3	3	blocks	37	1	\N
19111	1	1	serving 2.1 oz bar	60	1	\N
19111	2	1	serving fun size bar 0.65 oz	18	1	\N
19112	1	4	pieces 1.6oz	45	\N	\N
19113	1	1	serving 1/4 cup	73	\N	\N
19114	1	1	serving	68	2	\N
19114	2	1	unit	100	2	\N
19115	1	1	bar (1.76 oz)	50	\N	\N
19116	1	1	cup of miniature	50	\N	\N
19116	2	10	miniatures	7.0	\N	\N
19116	3	1	regular	7.2	\N	\N
19117	1	1	oz	28.35	\N	\N
19118	1	1	bar 2 oz	57	\N	\N
19118	2	1	serving fun size bar	26	1	\N
19119	1	1	serving 1.4 oz bar	40	1	\N
19120	1	1	bar, miniature	7.0	\N	\N
19120	2	1	bar (1.55 oz)	44	\N	\N
19120	3	1	cup chips	168	\N	\N
19121	1	0.5	cup From 19191	147	\N	\N
19122	1	0.5	cup From 19211	142	\N	\N
19123	1	0.5	cup From 19211	142	\N	\N
19124	1	1	tablet	20	\N	\N
19125	1	1	serving 2 TBSP	37	1	\N
19126	1	1	cup	149	\N	\N
19126	2	10	pieces	40	\N	\N
19127	2	1	cup	180	\N	\N
19127	3	10	pieces	10.0	\N	\N
19128	1	1	serving 1/4 cup	73	4	\N
19128	2	1	tbsp	15.0	\N	\N
19128	3	1	oz	28.35	\N	\N
19128	4	1	cup	240	\N	\N
19129	1	1	cup	314	\N	\N
19129	2	1	tbsp	20	\N	\N
19130	1	1	bar 2.8 oz	78	1	\N
19132	1	1	bar (1.45 oz)	41	\N	\N
19132	2	1	bar (1.55 oz)	44	\N	\N
19134	1	1	bar (1.4 oz)	40	\N	\N
19134	2	1	bar (1.45 oz)	45	\N	\N
19134	3	1	bar (1.65 oz)	47	\N	\N
19134	4	1	bar, miniature	10.0	\N	\N
19134	5	1	bar (1.55 oz)	44	\N	\N
19135	1	1	serving 2.05 oz bar	58	1	\N
19135	2	1	bar fun size	17	1	\N
19135	3	1	piece miniature 5 pieces = serving	8.2	1	\N
19135	4	1	bar king size	103	1	\N
19136	1	1	bar 1.4 oz	39	1	\N
19137	1	2	tbsp	42	\N	\N
19137	2	1	serving	40	1	\N
19137	3	1	cup	340	\N	\N
19138	1	1	piece	12.0	\N	\N
19138	2	1	recipe yield, recipe makes 49     1 "" x 1""     pieces	612	\N	\N
19139	1	1	serving 0.5 oz, about 1 tbsp	14.0	1	\N
19139	2	1	package (net weight, 12 oz)	340	\N	\N
19140	1	1	serving 1 singles bag	54	1	\N
19140	2	1	package fun size	18	1	\N
19140	3	10	pieces	20	\N	\N
19140	4	1	cup	170	\N	\N
19141	1	1	package (1.69 oz)	48	\N	\N
19141	2	1	box (1.48 oz)	42	\N	\N
19141	3	1	cup	208	\N	\N
19141	4	1	serving	21	\N	\N
19141	5	10	pieces	7.0	\N	\N
19142	1	1	bar snack size	19	1	\N
19142	2	1	package 1.9 oz	53	1	\N
19143	1	1	bar (1.75 oz)	49	\N	\N
19143	2	1	bar (2.6 oz)	73	\N	\N
19144	1	1	bar (1.5 oz)	43	\N	\N
19144	2	1	bar, miniature	21	\N	\N
19144	3	1	serving 1.5 oz bar	43	1	\N
19145	1	1	bar 1.55 oz	44	\N	\N
19145	2	1	bar 0.5 oz	14.2	\N	\N
19145	3	1	serving 4 fun size bars	41	\N	\N
19145	4	2	tbsp	24	\N	\N
19146	1	1	serving 0.5 oz, about 1 tbsp	14.0	1	\N
19147	1	1	oz	28.35	\N	\N
19147	2	1	bar (1.4 oz)	40	\N	\N
19147	3	1	bar (1.6 oz)	45	\N	\N
19147	4	1	bar (1.75 fl oz)	50	\N	\N
19148	1	1	oz	28.35	\N	\N
19149	1	1	serving 1.58 oz bag	45	1	\N
19149	2	1	serving fun size	48	1	\N
19149	3	1	serving 0.25 cup	45	1	\N
19150	1	1	package 0.6 oz 1 cup	17	1	\N
19150	2	1	package 1.6 oz 2 cups	45	1	\N
19150	3	1	miniature	7.0	\N	\N
19151	1	0.25	cup	47	\N	\N
19151	2	10	pieces	8.0	\N	\N
19151	3	1	package 1.63 oz	46	1	\N
19151	4	1	package (1.6 oz)	46	\N	\N
19152	1	1	package 1 package	48	1	\N
19152	2	7	pieces	42	1	\N
19153	1	1	serving 5 mints	42	1	\N
19153	2	1	piece	8.4	\N	\N
19154	1	1	oz	28.35	\N	\N
19154	2	1	piece	1.8	\N	\N
19154	3	20	pieces	35	\N	\N
19155	1	1	bar (2 oz)	57	\N	\N
19155	2	1	bar, fun size	15.0	\N	\N
19155	3	1	bar, king size (4 oz)	113	\N	\N
19156	1	1	serving fun size (8 chews)	40	1	\N
19156	2	1	serving 2.07 oz pack	59	1	\N
19156	3	1	piece	5.0	\N	\N
19157	1	1	serving 1.0 oz tube	30	1	\N
19157	2	1	serving 0.50 oz box	15.0	1	\N
19157	3	1	serving 1 1.94 oz tube	55	1	\N
19159	1	1	serving 2.13 oz bar	60	1	\N
19159	2	1	serving 2 fun size bars	28	1	\N
19160	1	1	package (2 oz)	57	\N	\N
19160	2	1	package (2.06 oz, 2 bars)	58	\N	\N
19160	3	1	package, king size (3.35 oz, 4 bars)	95	\N	\N
19160	4	1	package (11 oz)	312	\N	\N
19161	1	1	package (1.89 oz, 2 bars)	54	\N	\N
19161	2	1	package (2.06 oz, 2 bars)	58	\N	\N
19161	3	1	package (1.77 oz)	50	\N	\N
19161	4	1	package (9.43 oz)	267	\N	\N
19162	1	1	bar 1.7 oz	48	1	\N
19163	1	1	stick	3.0	\N	\N
19163	2	10	Chiclets	16	\N	\N
19163	3	1	block	8.0	\N	\N
19164	1	1	bar 1.45 oz	41	1	\N
19164	2	1	bar 2.6 oz	73	1	\N
19164	3	3	blocks	42	1	\N
19164	4	1	bar	17	1	\N
19165	1	1	cup	86	\N	\N
19165	2	1	tbsp	5.4	\N	\N
19166	1	1	cup	86	\N	\N
19166	2	1	tbsp	5.4	\N	\N
19168	1	0.5	cup	141	\N	\N
19168	2	1	recipe yield	563	\N	\N
19169	1	1	package (3 oz)	85	\N	\N
19169	2	1	portion, amount to make 1/2 cup	21	\N	\N
19170	1	0.5	cup	141	\N	\N
19171	1	1	tbsp	5.0	1	\N
19172	1	1	package (3 oz)	85	\N	\N
19172	2	1	portion, amount to make 1/2 cup	21	\N	\N
19173	1	0.5	cup	135	\N	\N
19173	2	1	serving	21	2	\N
19173	3	1	package 3 oz, yields 2 cups	540	\N	\N
19175	1	1	serving	6.4	1	\N
19176	1	0.5	cup	117	\N	\N
19176	2	1	package yield (2 cups)	469	\N	\N
19177	1	1	envelope (1 tbsp)	7.0	\N	\N
19177	2	1	package (1 oz)	28	\N	\N
19181	1	15	pieces	39	1	\N
19182	1	1	recipe yield	808	\N	\N
19182	2	0.5	cup	202	\N	\N
19183	1	1	oz	28.35	\N	\N
19183	2	1	container refrigerated, 4 oz	108	7	2.498
19183	3	1	container shelf stable, 3.5 oz	98	7	5.401
19184	1	1	package (3.5 oz)	99	\N	\N
19184	2	1	portion, amount to make 1/2 cup	25	\N	\N
19185	1	0.5	cup	147	\N	\N
19185	2	1	package yield (2 cups)	587	\N	\N
19186	1	0.5	cup	141	\N	\N
19186	2	1	recipe yield	844	\N	\N
19187	1	1	package (3 oz)	85	\N	\N
19187	2	1	portion, amount to make 1/2 cup	21	\N	\N
19188	1	1	package (3.5 oz)	99	\N	\N
19188	2	1	portion, amount to make 1/2 cup	25	\N	\N
19189	1	0.5	cup	142	\N	\N
19189	2	1	package yield (2 cups)	570	\N	\N
19190	1	0.5	cup	128	\N	\N
19191	1	0.5	cup	147	\N	\N
19191	2	1	package yield (2 cups)	587	\N	\N
19193	1	1	serving 4 oz pudding cup	113	1	\N
19193	2	1	oz	28.35	\N	\N
19193	3	1	can (5 oz)	142	\N	\N
19193	4	1	cup	172	8	16.158
19193	5	0.5	cup	92	2	\N
19194	1	1	package	106	\N	\N
19194	2	1	portion, amount to make 1/2 cup	27	\N	\N
19195	1	0.5	cup	128	\N	\N
19198	1	1	package (3.5 oz)	92	\N	\N
19198	2	1	portion, amount to make 1/2 cup	23	\N	\N
19199	1	0.5	cup	128	\N	\N
19201	1	1	oz	28.35	\N	\N
19201	2	1	container refrigerated 4 oz	110	7	3.524
19201	3	1	container shelf stable 3.5 oz	97	7	6.244
19202	1	1	package (3.5 oz)	99	\N	\N
19202	2	1	portion, amount to make 1/2 cup	25	\N	\N
19203	1	0.5	cup	142	\N	\N
19203	2	1	package yield (2 cups)	569	\N	\N
19204	1	1	serving	8.0	\N	\N
19204	2	1	package	32	\N	\N
19205	1	0.5	cup	141	\N	\N
19206	1	1	package (3.12 oz)	88	\N	\N
19206	2	1	portion, amount to make 1/2 cup	22	\N	\N
19207	1	0.5	cup	140	\N	\N
19207	2	1	package yield (2 cups)	559	\N	\N
19208	1	0.5	cup	128	\N	\N
19209	1	0.5	cup	128	\N	\N
19212	1	0.5	cup	128	\N	\N
19216	1	1	piece	39	\N	\N
19216	2	1	recipe yield	907	\N	\N
19217	1	1	bar	51	\N	\N
19218	1	1	oz	28.35	\N	\N
19218	2	1	container refrigerated 4 oz	110	1	\N
19218	3	1	container	97	1	0.231
19219	1	0.5	cup	140	\N	\N
19219	2	1	package yield (2 cups)	559	\N	\N
19220	1	1	tbsp	9.0	\N	\N
19220	2	1	package (2 oz)	57	\N	\N
19222	1	1	tbsp	10.8	\N	\N
19222	2	1	package (1.5 oz)	43	\N	\N
19225	1	1	package (0.35 oz)	9.9	\N	\N
19226	1	2	tbsp creamy	41	18	3.963
19227	1	0.083	package	38	\N	\N
19227	2	2	tbsp	35	1	\N
19227	3	1	package (16 oz)	462	\N	\N
19228	1	2	tbsp creamy	33	2	\N
19228	2	2	tbsp whipped	24	1	\N
19230	1	0.083	package	38	\N	\N
19230	2	2	tbsp creamy	33	3	1
19230	3	1	package (16 oz)	462	\N	\N
19233	1	1	serving 3.5 oz shelf stable	99	1	\N
19234	1	1	container refrigerated 4 oz	112	2	\N
19235	1	1	serving 4 oz	113	1	\N
19236	1	17	pieces	39	1	\N
19238	1	16	pieces	39	1	\N
19239	1	1	bar 1.92 oz	54	1	\N
19239	2	2	bars	34	1	\N
19240	1	1	package	388	\N	\N
19241	1	2	tablespoon	33	\N	\N
19243	1	15	pieces	39	1	\N
19244	1	1	package	411	\N	\N
19244	2	0.083	package	34	\N	\N
19246	1	1	package	207	\N	\N
19246	2	0.083	package	17	\N	\N
19247	1	1	package yields	315	\N	\N
19247	2	0.083	package	26	\N	\N
19248	1	18	pieces	40	1	\N
19249	1	1	serving 1.5 oz	42	1	\N
19250	1	1	bar 1.94 oz	55	\N	\N
19250	2	1	bar king size 2.8 oz	79	\N	\N
19252	1	2	oz bar	56	1	\N
19254	1	1	serving 1.30 oz bar	37	1	\N
19254	2	1	serving 5 pieces	40	1	\N
19255	1	1	serving 1.3 oz bar	37	1	\N
19255	2	1	serving 7 pieces	42	1	\N
19256	1	1	serving 5 pieces	44	1	\N
19258	1	1	serving 5 pieces	44	1	\N
19260	1	1	serving 1/2 cup	68	4	0.5
19263	1	1	bar (2.5 fl oz)	77	\N	\N
19263	2	1	bar (3 fl oz)	92	\N	\N
19265	1	1	serving 1/2 cup	72	2	\N
19268	1	1	serving 28 pieces	40	1	\N
19269	1	2	rolls	28	\N	\N
19270	1	1	individual (3.5 fl oz)	58	\N	\N
19270	2	0.5	cup (4 fl oz)	66	\N	\N
19271	1	1	individual (3.5 fl oz)	58	\N	\N
19271	2	0.5	cup (4 fl oz)	66	\N	\N
19272	1	1	pouch	26	\N	\N
19273	1	1	roll	21	\N	\N
19274	1	1	serving	21	\N	\N
19274	2	1	packet	14.2	\N	\N
19279	1	1	oz	28.35	\N	\N
19280	1	0.5	cup (4 fl oz)	99	\N	\N
19281	1	1	fl oz	29.0	\N	\N
19281	2	0.5	cup	116	\N	\N
19283	1	1	serving 1.75 fl oz pop	52	12	\N
19292	1	1	serving 1.6 oz bag	47	1	\N
19293	1	0.5	cup	72	\N	\N
19294	1	1	tbsp	17	\N	\N
19294	2	1	serving	17	1	\N
19294	3	1	cup	282	\N	\N
19295	1	1	serving 1.42 oz bar	40	1	\N
19296	1	1	cup	339	\N	\N
19296	2	1	tbsp	21	\N	\N
19296	3	1	packet (0.5 oz)	14.0	\N	\N
19297	1	1	tbsp	20	\N	\N
19297	2	1	packet (0.5 oz)	14.0	\N	\N
19300	1	1	serving 1 tbsp	21	3	0.901
19300	2	1	packet (0.5 oz)	14.0	1	\N
19301	1	1	oz	28.35	\N	\N
19302	1	1	serving 1.76 oz bar	50	1	\N
19303	1	1	tbsp	20	\N	\N
19303	2	1	package (0.5 oz)	14.0	\N	\N
19303	3	1	serving	20	1	\N
19303	4	1	cup	320	\N	\N
19304	1	1	cup	337	1	\N
19304	2	1	serving 1 tbsp	20	2	\N
19306	1	1	serving 13 pieces	39	1	\N
19307	1	1	serving 13 pieces	39	1	\N
19308	1	1	serving 15 pieces	41	1	\N
19309	1	1	serving fun size (8 chews)	40	1	\N
19310	1	1	package (1.75 oz)	50	\N	\N
19312	1	0.125	can	74	\N	\N
19312	2	1	serving	85	1	\N
19312	3	1	can (21 oz)	595	\N	\N
19313	1	1	serving fun size (8 chews)	40	1	\N
19313	2	1	serving 2.07 oz pack	59	1	\N
19313	3	1	piece	5.0	\N	\N
19314	1	0.125	can	74	\N	\N
19314	2	1	can (21 oz)	595	\N	\N
19315	1	1	serving 2.07 oz pack	59	1	\N
19318	1	1	package (3.5 oz)	99	\N	\N
19318	2	1	portion, amount to make 1/2 cup	25	\N	\N
19319	1	0.5	cup	127	\N	\N
19320	1	1	package (3.12 oz)	88	\N	\N
19320	2	1	portion, amount to make 1/2 cup	22	\N	\N
19321	1	0.5	cup	127	\N	\N
19322	1	1	package (3.5 oz)	99	\N	\N
19322	2	1	portion, amount to make 1/2 cup	25	\N	\N
19323	1	0.5	cup	147	\N	\N
19323	2	1	package yield (2 cups)	587	\N	\N
19324	1	1	package (3.12 oz)	88	\N	\N
19324	2	1	portion, amount to make 1/2 cup	25	\N	\N
19325	1	0.5	cup	140	\N	\N
19325	2	1	package yield (2 cups)	559	\N	\N
19326	1	1	serving 0.78 oz bar	22	1	\N
19327	1	1	serving 0.78 oz bar	22	1	\N
19328	1	1	serving 0.7 oz bar	20	1	\N
19330	1	1	package (3.5 oz)	99	\N	\N
19330	2	1	portion, amount to make 1/2 cup	25	\N	\N
19331	1	0.5	cup	147	\N	\N
19331	2	1	package yield (2 cups)	587	\N	\N
19332	1	1	package (3 oz)	85	\N	\N
19332	2	1	portion, amount to make 1/2 cup	21	\N	\N
19333	1	0.5	cup	127	\N	\N
19334	1	1	tsp unpacked	3.0	\N	\N
19334	2	1	cup packed	220	\N	\N
19334	3	1	cup unpacked	145	\N	\N
19334	4	1	tsp packed	4.6	\N	\N
19334	5	1	tsp brownulated	3.2	\N	\N
19335	1	1	serving packet	2.8	27	\N
19335	2	1	tsp	4.2	\N	\N
19335	3	1	cup	200	\N	\N
19335	4	1	serving 1 cube	2.3	22	\N
19336	1	1	cup unsifted	120	\N	\N
19336	2	1	cup sifted	100	\N	\N
19336	3	1	tbsp unsifted	8.0	\N	\N
19336	4	1	tsp	2.5	\N	\N
19337	1	1	tsp	3.5	\N	\N
19337	2	1	serving 1 packet	1.0	12	0.058
19340	1	1	tsp	3.0	\N	\N
19340	2	1	oz	28.35	\N	\N
19340	3	1	piece (1-3/4"" x 1-1/4"" x 1/2"")	28	\N	\N
19345	1	2	tbsp	35	\N	\N
19348	1	1	cup	304	\N	\N
19348	2	2	tbsp	38	\N	\N
19349	1	1	cup	328	1	\N
19349	2	1	tbsp	20	1	\N
19350	1	1	cup	341	4	3.839
19350	2	1	tbsp	22	2	\N
19351	1	1	cup	310	\N	\N
19351	2	1	tbsp	19	\N	\N
19352	1	1	cup	332	\N	\N
19352	2	1	tbsp	21	\N	\N
19353	1	1	tbsp	20	\N	\N
19353	2	1	serving 1/4 cup	83	4	\N
19353	3	1	cup	315	\N	\N
19355	1	1	cup	330	\N	\N
19355	2	1	tbsp	21	\N	\N
19359	1	1	serving 1.66 oz bar	47	1	\N
19359	2	1	bar fun size	15.0	1	\N
19359	3	1	serving 1.56 oz bar	44	1	\N
19360	1	1	tbsp	20	\N	\N
19360	2	1	serving 1/4 cup	83	2	\N
19360	3	1	cup	315	\N	\N
19361	1	1	cup	315	\N	\N
19361	2	1	tbsp	20	\N	\N
19362	1	1	cup	316	\N	\N
19362	2	1	tbsp	20	\N	\N
19363	1	1	serving 2.1 oz bag	62	1	\N
19363	2	1	serving fun size bag	20	1	\N
19364	1	2	tbsp	41	\N	\N
19365	1	1	oz	28.35	\N	\N
19365	2	1	jar	198	\N	\N
19366	1	1	cup	340	\N	\N
19366	2	2	tbsp	42	\N	\N
19367	1	1	cup	328	\N	\N
19367	2	2	tbsp	41	\N	\N
19368	1	1	serving 2.1 oz bag	62	1	\N
19368	2	1	serving fun size bag	20	1	\N
19369	1	1	serving 1.80 oz bag	51	1	\N
19370	1	1	serving 2.17 oz pack	62	1	\N
19370	2	1	cup	205	1	\N
19370	3	10	pieces	10.7	1	\N
19370	4	1	package fun size	20	1	\N
19371	1	2	tablespoon	33	\N	\N
19372	1	2	tablespoon	33	\N	\N
19375	1	1	recipe yield	327	\N	\N
19379	1	1	piece	20	\N	\N
19379	2	1	recipe yield (60 pieces)	1229	\N	\N
19382	1	1	piece	15.0	\N	\N
19383	1	1	piece	12.0	\N	\N
19384	1	1	piece	11.0	\N	\N
19387	1	0.5	cup (4 fl oz)	99	\N	\N
19393	1	0.5	cup (4 fl oz)	72	\N	\N
19400	1	1	oz	28.35	\N	\N
19400	2	3	oz	85	\N	\N
19400	3	1.5	oz	42	\N	\N
19401	1	1	oz	28.35	\N	\N
19401	2	2	oz	57	\N	\N
19403	1	1	bar (1 oz)	28	\N	\N
19404	1	1	bar (1.5 oz)	43	\N	\N
19404	2	1	bar (1 oz)	28	\N	\N
19405	1	1	bar (1 oz)	28	\N	\N
19406	1	1	bar (1 oz)	28	\N	\N
19407	1	1	oz	28.35	\N	\N
19407	2	1	stick	20	\N	\N
19408	1	1	oz	28.35	\N	\N
19408	2	0.5	oz	14.2	\N	\N
19409	1	2	tablespoon	33	\N	\N
19410	1	1	oz	28	12	0
19410	2	16	chips	26	12	1.444
19410	3	1	oz	28.35	\N	\N
19410	4	1	can (7 oz)	198	\N	\N
19411	1	1	oz	28	32	0
19411	2	22	chips	28	1	\N
19411	3	1	oz	28.35	\N	\N
19411	4	1	bag (8 oz)	227	\N	\N
19412	1	1	oz	28.35	\N	\N
19412	2	1	can (6.25 oz)	191	\N	\N
19413	1	1	cake	9.0	\N	\N
19413	2	2	cakes	18	\N	\N
19414	1	1	cake	9.0	\N	\N
19414	2	2	cakes	18	\N	\N
19415	1	1	oz	28.35	\N	\N
19415	2	0.5	cup	18	\N	\N
19416	1	1	cake	9.0	\N	\N
19416	2	2	cakes	18	\N	\N
19418	1	1	oz	28.35	\N	\N
19418	2	2	oz	57	\N	\N
19419	1	1	cake	9.0	\N	\N
19419	2	2	cakes	18	\N	\N
19420	1	1	oz	28.35	\N	\N
19420	2	1	bar	24	\N	\N
19421	1	1	oz	28.35	\N	\N
19421	2	1	bag (6 oz)	170	\N	\N
19422	1	1	oz	28.35	\N	\N
19422	2	1	bag (6 oz)	170	\N	\N
19423	1	1	oz	28.35	\N	\N
19424	1	1	oz	28.35	\N	\N
19424	2	1	bag (6 oz)	170	\N	\N
19433	1	1	oz	28.35	\N	\N
19434	1	1	oz	28.35	\N	\N
19436	1	1	oz	28.35	\N	\N
19437	1	1	oz	28.35	\N	\N
19437	2	1	bag (8 oz)	227	\N	\N
19438	1	1	serving	22	\N	\N
19439	1	1	bar	37	\N	\N
19440	1	1	bar	28	\N	\N
19444	1	1	oz	28.35	\N	\N
19445	1	1	oz	28.35	\N	\N
19524	1	1	oz	28.35	\N	\N
19524	2	10	chips	23	\N	\N
19701	1	1	cup chips (6 oz package)	170	\N	\N
19701	2	1	cup large chips	182	\N	\N
19701	3	1	cup mini chips	173	\N	\N
19701	4	1	oz (approx 60 pcs)	28.35	\N	\N
19702	1	1	package (3 oz)	85	\N	\N
19702	2	1	portion, amount to make 1/2 cup	21	\N	\N
19703	1	1	tbsp	9.0	\N	\N
19703	2	1	package (0.35 oz)	10.0	\N	\N
19703	3	1	portion, amount to make 1/2 cup	2.5	\N	\N
19704	1	1	tbsp	9.0	\N	\N
19704	2	1	package (0.35 oz)	10.0	\N	\N
19704	3	1	portion, amount to make 1/2 cup	2.5	\N	\N
19705	1	1	package (3.5 oz)	99	\N	\N
19705	2	1	portion, amount to make 1/2 cup	25	\N	\N
19706	1	1	package (3.12 oz)	88	\N	\N
19706	2	1	portion, amount to make 1/2 cup	22	\N	\N
19708	1	1	package (3 oz)	85	\N	\N
19708	2	1	portion, amount to make 1/2 cup	21	\N	\N
19709	1	1	package (3.5 oz)	92	\N	\N
19709	2	1	portion, amount to make 1/2 cup	23	\N	\N
19710	1	1	package (3.12 oz)	88	\N	\N
19710	2	1	portion, amount to make 1/2 cup	22	\N	\N
19719	1	1	tbsp	20	\N	\N
19719	2	1	packet (0.5 oz)	14.0	\N	\N
19720	1	1	cup	315	\N	\N
19720	2	1	tbsp	20	\N	\N
19800	1	1	cake	9.0	\N	\N
19800	2	2	cakes	18	\N	\N
19802	1	1	oz	28.35	\N	\N
19802	2	1	bag (8 oz)	227	\N	\N
19804	1	1	oz	28.35	\N	\N
19806	1	1	cup	8.0	\N	\N
19806	2	1	oz	28.35	\N	\N
19807	1	1	cup	11.0	\N	\N
19807	2	1	oz	28.35	\N	\N
19809	1	1	oz	28.35	\N	\N
19809	2	1	bag (8 oz)	227	\N	\N
19810	1	1	oz	28.35	\N	\N
19810	2	1	bag (8 oz)	227	\N	\N
19811	1	1	oz	28.35	\N	\N
19811	2	1	bag (8 oz)	227	\N	\N
19812	1	1	oz	28.35	\N	\N
19812	2	10	twists	60	\N	\N
19813	1	1	oz	28.35	\N	\N
19813	2	10	twists	60	\N	\N
19814	1	1	oz	28.35	\N	\N
19814	2	10	twists	60	\N	\N
19816	1	1	cake	9.0	\N	\N
19816	2	2	cakes	18	\N	\N
19817	1	1	cake	9.0	\N	\N
19817	2	2	cakes	18	\N	\N
19818	1	1	cake	9.0	\N	\N
19818	2	2	cakes	18	\N	\N
19819	1	1	cake	9.0	\N	\N
19819	2	2	cakes	18	\N	\N
19820	1	1	oz	28.35	\N	\N
19820	2	2	oz	57	\N	\N
19821	1	1	cup	150	\N	\N
19821	2	1	oz	28.35	\N	\N
19821	3	1.5	oz	42	\N	\N
19822	1	1	cup	146	\N	\N
19822	2	1	oz	28.35	\N	\N
19822	3	1.5	oz	42	\N	\N
19823	1	1	oz	28.35	\N	\N
19833	1	1	oz	28.35	\N	\N
19856	1	1	serving 1.2 fl oz pop	33	8	1.233
19857	1	1	oz	28.35	\N	\N
19858	1	1	piece	3.5	\N	\N
19859	1	1	tbsp	5.4	\N	\N
19860	1	1	tablespoon Ghirardelli label 2011	6.0	\N	\N
19860	2	1	tablespoon Hershey's label 2011	5.0	\N	\N
19860	3	1	container Ghirardelli label 2011	283	\N	\N
19866	1	3	pieces	42	\N	\N
19867	1	0.5	cup	67	1	\N
19868	1	1	serving 1 packet	1.0	25	0.099
19871	1	1	serving	84	1	\N
19873	1	1	serving 1.75 fl oz pop	55	1	\N
19874	1	1	serving 3.5 fl oz bar	74	1	\N
19875	1	1	serving 1/2 cup	68	1	\N
19876	1	1	serving 1/2 cup	68	1	\N
19877	1	1	serving 1/2 cup	68	1	\N
19878	1	1	serving 1/2 cup	68	1	\N
19879	1	1	serving 1/2 cup	68	1	\N
19880	1	1	serving 1/2 cup	68	1	\N
19881	1	1	serving 1/2 cup	68	1	\N
19882	1	1	serving 1/2 cup	69	1	\N
19883	1	1	serving 1/2 cup	72	1	\N
19884	1	1	serving 1/2 cup	68	1	\N
19886	1	1	serving 1 cone	79	1	\N
19887	1	1	serving 1 sandwich	64	1	\N
19890	1	1	serving 1 bar	78	1	\N
19891	1	1	serving 1 pop	44	1	\N
19892	1	1	serving 2 pops	80	1	\N
19893	1	1	serving 1/2 cup	68	1	\N
19894	1	1	serving 1/2 cup	68	1	\N
19895	1	1	serving 1/2 cup	71	1	\N
19896	1	1	serving 1 bar	56	1	\N
19897	1	1	serving 1oz pack	28	1	\N
19898	1	1	individual (3.5 fl oz)	58	\N	\N
19898	2	0.5	cup (4 fl oz)	66	\N	\N
19899	1	1	individual (3.5 fl oz)	58	\N	\N
19902	1	1	oz	28.35	\N	\N
19902	2	1	bar	162	12	53.699
19903	1	1	oz	28.35	\N	\N
19903	2	1	bar	112	18	4.916
19904	1	1	oz	28.35	\N	\N
19904	2	1	bar	101	6	0.789
19905	1	1	oz	28.35	\N	\N
19905	2	1	bar	127	36	39.78
19906	1	1	tbsp	12.9	9	1.335
19906	2	1	cup	189	6	29.362
19907	1	1	tbsp	14.5	11	1.919
19907	2	1	cup	202	8	4.284
19908	1	1	tsp	4.6	11	0.194
19908	2	1	cup	202	9	5.76
19909	1	1	tsp	0.5	7	0.049
19909	2	1	cup	23	6	0.834
19910	1	1	serving 1.5 oz	42	1	\N
19911	1	60	milliliter	80	\N	\N
19912	1	1	tsp	6.9	3	0.529
19912	2	0.25	cup	55	3	5.369
19913	1	1	piece	60	1	\N
19914	1	1	serving	31	1	\N
19916	1	2	tbsp	35	1	\N
19917	1	0.25	cup	40	1	\N
19918	1	1	package	1.0	1	\N
19919	1	1	serving	44	1	\N
19924	1	1	tablespoon	20	\N	\N
20001	1	1	cup	193	6	1.78
20002	1	1	cup	246	6	2.195
20003	1	1	cup	128	\N	\N
20004	1	1	cup	184	\N	\N
20005	1	1	cup	200	\N	\N
20006	1	1	cup	157	\N	\N
20008	1	1	cup	170	\N	\N
20009	1	1	cup	164	\N	\N
20010	1	1	cup	168	\N	\N
20011	1	1	cup	120	\N	\N
20012	1	1	cup	140	\N	\N
20013	1	1	cup	182	\N	\N
20013	2	1	tbsp	8.4	\N	\N
20014	1	1	cup	166	\N	\N
20015	1	1	cup	76	\N	\N
20016	1	1	cup	117	\N	\N
20017	1	1	cup	114	\N	\N
20018	1	1	cup	126	\N	\N
20019	1	1	cup	114	\N	\N
20020	1	1	cup	122	\N	\N
20022	1	1	cup	157	42	10.206
20023	1	1	cup	122	\N	\N
20024	1	1	cup	170	\N	\N
20025	1	1	cup	138	\N	\N
20027	1	1	cup	128	\N	\N
20028	1	1	cup	173	\N	\N
20029	1	1	cup, cooked	157	\N	\N
20029	2	1	cup, dry, yields	528	\N	\N
20029	3	1	oz, dry, yields	86	\N	\N
20030	1	1	cup	165	\N	\N
20031	1	1	cup	200	\N	\N
20032	1	1	cup	174	\N	\N
20033	1	1	cup	94	\N	\N
20034	1	1	cup	219	\N	\N
20035	1	1	cup	170	\N	\N
20036	1	1	cup	185	\N	\N
20037	1	1	cup	202	11	22.168
20038	1	1	cup	156	\N	\N
20040	1	1	cup	190	\N	\N
20041	1	1	cup	195	\N	\N
20042	1	0.25	cup	48	\N	\N
20044	1	1	cup	185	\N	\N
20045	1	1	cup	158	\N	\N
20046	1	1	cup	185	6	4.175
20047	1	1	cup	158	4	6.682
20048	1	1	cup	95	\N	\N
20049	1	1	cup	165	\N	\N
20050	1	1	cup	195	\N	\N
20051	1	1	cup	186	\N	\N
20052	1	1	cup	200	\N	\N
20053	1	1	cup	186	\N	\N
20054	1	1	cup	185	\N	\N
20055	1	1	cup	174	\N	\N
20058	1	1	cup, loosely packed	132	13	2.826
20060	1	1	cup	118	\N	\N
20061	1	1	cup	158	\N	\N
20062	1	1	cup	169	\N	\N
20063	1	1	cup	128	\N	\N
20064	1	1	cup	102	\N	\N
20065	1	1	cup	102	\N	\N
20066	1	1	cup	167	\N	\N
20067	1	1	cup	192	\N	\N
20068	1	1	cup	152	\N	\N
20069	1	1	cup	192	\N	\N
20070	1	1	cup	130	\N	\N
20071	1	1	cup	192	\N	\N
20072	1	1	cup	192	\N	\N
20073	1	1	cup	168	\N	\N
20074	1	1	cup	192	\N	\N
20075	1	1	cup	168	\N	\N
20076	1	1	cup	192	\N	\N
20077	1	1	cup	58	\N	\N
20078	1	1	cup	115	\N	\N
20080	1	1	cup	120	\N	\N
20081	1	1	cup	125	\N	\N
20082	1	1	cup	125	\N	\N
20083	1	1	cup	137	\N	\N
20084	1	1	cup unsifted, dipped	137	\N	\N
20086	1	1	cup	111	\N	\N
20087	1	1	cup	108	\N	\N
20088	1	1	cup	160	\N	\N
20089	1	1	cup	164	\N	\N
20090	1	1	cup	158	\N	\N
20091	1	1	cup	105	\N	\N
20091	2	2	oz	57	\N	\N
20092	1	1	cup	140	\N	\N
20093	1	4.5	oz	128	\N	\N
20094	1	2	oz	128	\N	\N
20095	1	4.5	oz	128	\N	\N
20096	1	2	oz	57	\N	\N
20097	1	2	oz	57	\N	\N
20098	1	2	oz	57	\N	\N
20105	1	1	cup spiral shaped	84	\N	\N
20105	2	2	oz	57	\N	\N
20106	1	1	cup spiral shaped	134	\N	\N
20109	1	1	cup	38	\N	\N
20109	2	2	oz	57	\N	\N
20110	1	1	cup	160	\N	\N
20111	1	1	cup	38	\N	\N
20111	2	2	oz	57	\N	\N
20112	1	1	cup	160	\N	\N
20113	1	0.5	cup dry	28	1	\N
20113	2	1.5	oz	43	\N	\N
20114	1	2	oz	57	\N	\N
20115	1	1	cup	114	\N	\N
20116	1	2	oz	57	\N	\N
20117	1	1	cup	176	\N	\N
20118	1	1	cup	45	24	6.752
20120	1	1	cup spaghetti	91	12	3.344
20120	2	2	oz	57	\N	\N
20120	3	1	cup elbows	122	18	8.754
20120	4	1	cup penne	95	16	11.222
20120	5	1	cup farfalle	81	9	7.18
20120	6	1	cup rotini	96	10	5.172
20120	7	1	cup shells	64	22	36.573
20120	8	1	cup lasagna	90	18	7.123
20121	1	1	cup spaghetti not packed	124	52	10.726
20121	2	1	cup spaghetti packed	151	49	16.343
20121	3	1	cup elbows not packed	120	32	13.379
20121	4	1	cup elbows packed	132	6	11.853
20121	5	1	cup penne	107	36	10.888
20121	6	1	cup farfalle	107	9	15.51
20121	7	1	cup rotini	107	10	7.319
20121	8	1	cup shells	105	22	9.332
20121	9	1	cup lasagne	116	18	15.678
20124	1	1	cup spaghetti	91	12	3.344
20124	2	1	cup elbows	122	18	8.754
20124	3	1	cup penne	95	16	11.222
20124	4	1	cup farfalle	81	9	7.18
20124	5	1	cup rotini	96	10	5.172
20124	6	1	cup shells	64	22	36.573
20124	7	1	cup lasagne	90	18	7.123
20125	1	1	cup spaghetti not packed	117	27	8.883
20125	2	1	cup spaghetti packed	151	49	16.343
20125	3	1	cup elbows	117	12	10.734
20125	4	1	cup penne	97	16	7.335
20125	5	1	cup shells	105	22	9.332
20125	6	1	cup lasagne	116	18	15.678
20125	7	1	cup rotini	107	10	7.319
20125	8	1	cup farfalle	107	9	15.51
20126	1	2	oz	57	\N	\N
20127	1	1	cup	140	\N	\N
20129	1	1	cup unsifted, dipped	137	\N	\N
20130	1	1	cup	148	\N	\N
20131	1	1	cup	162	\N	\N
20132	1	1	cup	104	\N	\N
20133	1	2	oz	57	\N	\N
20134	1	1	cup	176	\N	\N
20135	1	1	cup spaghetti	91	12	3.344
20135	2	1	cup elbows	122	18	8.754
20135	3	1	cup penne	95	16	11.222
20135	4	1	cup farfalle	81	9	7.18
20135	5	1	cup rotini	96	10	5.172
20135	6	1	cup shells	64	22	36.573
20135	7	1	cup lasagne	90	18	7.123
20136	1	1	cup spaghetti not packed	116	32	8.72
20136	2	1	cup spaghetti packed	151	49	16.343
20136	3	1	cup elbows not packed	117	12	10.734
20136	4	1	cup farfalle	107	9	15.51
20136	5	1	cup penne	97	16	7.335
20136	6	1	cup shells	105	22	9.332
20136	7	1	cup lasagne	116	18	15.678
20136	8	1	cup rotini	107	10	7.319
20137	1	1	cup	185	6	19.309
20138	1	1	cup	186	6	3.966
20139	1	1	cup	172	6	5.004
20140	1	1	cup	174	6	4.205
20141	1	1	cup	194	6	2.68
20142	1	1	cup	193	6	11.076
20143	1	1	cup	252	6	4.295
20310	1	1	cup	160	\N	\N
20314	1	1	cup	166	\N	\N
20315	1	1	tbsp	6.9	6	0.138
20316	1	1	cup	117	\N	\N
20317	1	1	cup	114	\N	\N
20320	1	1	cup	122	\N	\N
20321	1	1	cup spaghetti not packed	124	52	10.726
20321	2	1	cup packed	151	49	16.343
20321	3	1	cup elbows not packed	120	32	13.379
20321	4	1	cup elbows packed	132	6	11.853
20321	5	1	cup penne	107	36	10.888
20321	6	1	cup farfalle	107	9	15.51
20321	7	1	cup rotini	107	10	7.319
20321	8	1	cup shells	105	22	9.332
20321	9	1	cup lasagne	116	18	15.678
20322	1	1	cup	157	42	10.206
20323	1	1	cup	122	\N	\N
20324	1	1	cup	170	\N	\N
20325	1	1	cup	138	\N	\N
20330	1	1	cup	160	\N	\N
20345	1	1	cup	158	\N	\N
20381	1	1	cup	125	\N	\N
20409	1	1	cup	38	\N	\N
20410	1	1	cup	160	\N	\N
20420	1	1	cup spaghetti	91	12	3.344
20420	2	2	oz	57	\N	\N
20420	3	1	cup elbows	122	18	8.754
20420	4	1	cup penne	95	16	11.222
20420	5	1	cup farfalle	81	9	7.18
20420	6	1	cup rotini	96	10	5.172
20420	7	1	cup shells	64	22	36.573
20420	8	1	cup lasagna	90	18	7.123
20421	1	1	cup spaghetti not packed	124	52	10.726
20421	2	1	cup spaghetti packed	151	49	16.343
20421	3	1	cup elbows not packed	120	32	13.379
20421	4	1	cup elbows packed	132	6	11.853
20421	5	1	cup penne	107	36	10.888
20421	6	1	cup rotini	107	10	7.319
20421	7	1	cup farfalle	107	9	15.51
20421	8	1	cup shells	105	22	9.332
20421	9	1	cup lasagne	116	18	15.678
20422	1	1	cup	157	42	10.206
20444	1	1	cup	185	\N	\N
20445	1	1	cup	158	\N	\N
20446	1	1	cup	185	6	4.175
20447	1	1	cup	158	4	6.682
20450	1	1	cup	195	\N	\N
20451	1	1	cup	186	\N	\N
20452	1	1	cup	200	\N	\N
20453	1	1	cup	205	\N	\N
20466	1	1	cup	167	\N	\N
20481	1	1	cup	125	\N	\N
20510	1	1	cup	160	\N	\N
20521	1	1	cup spaghetti not packed	124	52	10.726
20521	2	1	cup spaghetti packed	151	49	16.343
20521	3	1	cup elbows not packed	120	32	13.379
20521	4	1	cup elbows packed	132	6	11.853
20521	5	1	cup penne	107	36	10.888
20521	6	1	cup rotini	107	10	7.319
20521	7	1	cup farfalle	107	9	15.51
20521	8	1	cup shells	105	22	9.332
20521	9	1	cup lasagne	116	18	15.678
20522	1	1	cup	157	42	10.206
20523	1	1	cup	140	\N	\N
20545	1	1	cup	158	\N	\N
20581	1	1	cup	125	\N	\N
20622	1	2	oz	57	\N	\N
20647	1	1	cup	119	3	18.203
20648	1	1	cup	121	3	4.888
20650	1	1	cup	161	\N	\N
20651	1	1	cup	155	11	10.138
20652	1	1	cup spaghetti not packed	116	32	8.72
20652	2	1	cup spaghetti packed	151	49	16.343
20652	3	1	cup elbows	117	12	10.734
20652	4	1	cup farfalle	107	9	15.51
20652	5	1	cup penne	97	16	7.335
20652	6	1	cup shells	105	22	9.332
20652	7	1	cup lasagne	116	18	15.678
20652	8	1	cup rotini	107	10	7.319
20653	1	1	cup spaghetti	91	12	3.344
20653	2	1	cup elbows	122	18	8.754
20653	3	1	cup penne	95	16	11.222
20653	4	1	cup farfalle	81	9	7.18
20653	5	1	cup rotini	96	10	5.172
20653	6	1	cup shells	64	22	36.573
20653	7	1	cup lasagne	90	18	7.123
20654	1	1	cup spaghetti not packed	169	4	15.761
20654	2	1	cup penne not packed	131	7	6.6
20654	3	1	cup fettucini not packed	153	2	\N
20654	4	1	cup spirals not packed	136	6	19.274
20654	5	1	cup elbows not packed	131	2	\N
20654	6	1	cup shells not packed	156	1	\N
20655	1	1	cup spaghetti packed	166	2	\N
20655	2	1	cup(not packed) not packed	132	6	19.665
20655	3	1	cup elbows not packed not packed	111	5	3.115
20656	1	1	cup spaghetti	121	2	\N
20657	1	1	cup spaghetti	141	4	16.248
21002	1	1	biscuit	136	\N	\N
21003	1	1	biscuit	150	\N	\N
21004	1	1	biscuit	182	\N	\N
21005	1	1	item	162	\N	\N
21006	1	1	biscuit	148	\N	\N
21007	1	1	item	145	\N	\N
21008	1	1	biscuit	162	\N	\N
21009	1	1	item	111	\N	\N
21010	1	1	item	132	3	6.255
21011	1	1	croissant	127	\N	\N
21012	1	1	item	128	\N	\N
21013	1	1	item	155	\N	\N
21014	1	1	sandwich	171	12	14.682
21018	1	2	eggs	96	\N	\N
21020	1	1	item	108	4	2.09
21021	1	1	sandwich	126	12	6.798
21022	1	1	item	165	\N	\N
21023	1	2	slices	135	\N	\N
21024	1	3	pieces	65	\N	\N
21024	2	5	pieces	109	\N	\N
21026	1	1	round piece	5.5	\N	\N
21026	2	1	patty	53	\N	\N
21026	3	1	serving 14 round pieces	77	\N	\N
21026	4	1	serving 29 round pieces	160	\N	\N
21028	1	1	item	120	\N	\N
21032	1	1	sundae	155	\N	\N
21033	1	1	sundae	158	\N	\N
21034	1	1	sundae	153	\N	\N
21059	1	3	pieces shrimp	39	36	3.124
21060	1	2	pieces	217	\N	\N
21061	1	1	each burrito	185	12	18.152
21063	1	1	item	241	\N	\N
21064	1	1	burrito	241	12	19.701
21078	1	1	serving	80	12	11.09
21080	1	1	serving	222	12	40.771
21082	1	1	each taco	69	12	11.225
21083	1	1.5	cup	198	\N	\N
21089	1	1	sandwich	91	12	3.643
21090	1	1	item	127	\N	\N
21091	1	1	sandwich	115	\N	\N
21092	1	1	item	149	\N	\N
21093	1	1	sandwich	166	\N	\N
21094	1	1	sandwich	155	32	8.054
21095	1	1	sandwich	228	\N	\N
21096	1	1	sandwich	182	12	2.877
21097	1	1	item	211	\N	\N
21098	1	1	sandwich	233	\N	\N
21099	1	1	sandwich	254	\N	\N
21100	1	1	sandwich	258	\N	\N
21101	1	1	item	249	\N	\N
21102	1	1	sandwich	187	40	\N
21105	1	1	sandwich	220	12	14.192
21106	1	1	sandwich	134	12	5.061
21107	1	1	sandwich	78	12	3.457
21108	1	1	sandwich	97	24	4.451
21109	1	1	item	110	\N	\N
21110	1	1	item	120	\N	\N
21111	1	1	item	215	\N	\N
21112	1	1	sandwich	137	\N	\N
21113	1	1	sandwich	218	\N	\N
21114	1	1	sandwich	226	\N	\N
21115	1	1	sandwich	259	\N	\N
21118	1	1	sandwich	98	\N	\N
21119	1	1	sandwich	114	\N	\N
21120	1	1	sandwich	175	\N	\N
21121	1	1	sandwich	149	26	\N
21124	1	6	inch sub	196	\N	\N
21124	2	12	inch sub	391	12	22.927
21125	1	6	inch sub	190	\N	\N
21125	2	12	inch sub	381	12	32.232
21126	1	6	inch sub	237	\N	\N
21126	2	12	inch sub	474	12	31.009
21127	1	1	cup	191	8	\N
21127	2	1	package	116	8	\N
21129	1	1	piece	22	36	3.62
21130	1	1	package (18 onion rings)	117	12	20.4
21138	1	1	serving small	71	1	\N
21138	2	1	serving medium	117	1	\N
21138	3	1	serving large	154	1	\N
21139	1	1	cup	242	12	12.401
21140	1	0.333	cup	95	\N	\N
21141	1	1	fl oz	24.8	\N	\N
21141	2	1	small 12 fl oz	298	12	\N
21141	3	1	medium 16 fl oz	397	\N	\N
21142	1	1	biscuit	55	144	\N
21143	1	1	strip	50	8	4.071
21143	2	1	serving 4 pieces	201	8	16.286
21144	1	1	piece	5.5	6	0.263
21144	2	1	serving	77	6	5.882
21145	1	1	slice 1/8 per pizza	155	\N	\N
21145	2	1	slice 1/10 per pizza	124	\N	\N
21146	1	1	slice 1/8 per pizza	156	\N	\N
21146	2	1	slice 1/10 per pizza	124	\N	\N
21147	1	1	piece 4"" x 6""	130	\N	\N
21148	1	1	piece 4""x6""	127	\N	\N
21149	1	1	piece 3.2 oz	91	\N	\N
21150	1	6	inch sub	228	\N	\N
21150	2	12	inch sub	457	12	29.325
21151	1	6	inch sub	228	\N	\N
21151	2	12	inch sub	457	12	29.325
21152	1	6	inch sub	207	\N	\N
21152	2	12	inch sub	413	12	18.076
21153	1	12	inch sub	413	12	18.076
21153	2	6	inch sub	207	\N	\N
21154	1	6	inch sub	198	\N	\N
21154	2	12	inch sub	396	12	28.571
21155	1	6	inch sub	184	\N	\N
21155	2	12	inch sub	367	12	11.143
21156	1	6	inch sub	184	\N	\N
21156	2	12	inch sub	368	12	14.188
21157	1	6	inch sub	209	\N	\N
21157	2	12	inch sub	418	12	46.743
21158	1	6	inch sub	209	\N	\N
21158	2	12	inch sub	418	12	46.743
21159	1	6	inch sub	201	\N	\N
21159	2	12	inch sub	401	12	24.66
21160	1	6	inch sub	201	\N	\N
21160	2	12	inch sub	401	12	24.66
21161	1	6	inch sub	148	\N	\N
21161	2	12	inch sub	296	12	19.981
21162	1	6	inch sub	148	\N	\N
21162	2	12	inch sub	296	12	19.981
21202	1	1	item	171	\N	\N
21207	1	6	inch sub	184	\N	\N
21207	2	12	inch sub	367	12	11.143
21209	1	6	inch sub	184	\N	\N
21209	2	12	inch sub	368	12	14.188
21210	1	6	inch sub	190	\N	\N
21210	2	12	inch sub	381	12	32.232
21211	1	6	inch sub	198	\N	\N
21211	2	12	inch sub	396	12	28.571
21213	1	6	inch sub	196	\N	\N
21213	2	12	inch sub	391	12	22.927
21214	1	6	inch sub	237	\N	\N
21214	2	12	inch sub	474	12	31.009
21224	1	1	serving 9 servings per 24 oz package	81	4	\N
21224	2	1	serving 3 servings per 15.1 oz package	151	21	\N
21224	3	1	serving 2 servings per 9.8 oz package	146	60	\N
21224	4	1	serving 1 serving per 8 oz box	199	14	\N
21224	5	1	package 24 oz pizza	727	4	\N
21224	6	1	package 15.1 oz pizza	452	21	\N
21224	7	1	package 9.8 oz pizza	293	60	\N
21224	8	1	package 8 oz pizza	199	14	\N
21225	1	1	serving 6 servings per 29.25 oz package	139	12	\N
21225	2	1	serving 4 servings per 19.7 oz package	149	20	\N
21225	3	1	package 29.25 oz pizza	834	12	\N
21225	4	1	package 19.7 oz pizza	595	20	\N
21226	1	1	serving 5 servings per 24.2 oz package	143	24	\N
21226	2	1	serving 5 servings per 22.85 oz package	129	23	\N
21226	3	1	serving 2 servings per 10.9 oz package	177	10	\N
21226	4	1	package 24.2 oz pizza	713	24	\N
21226	5	1	package 22.85 oz pizza	644	23	\N
21226	6	1	package 10.9 oz pizza	354	10	\N
21227	1	1	serving 6 servings per 34.98 oz package	170	23	\N
21227	2	1	serving 6 servings per 30.7 oz package	149	11	\N
21227	3	1	serving 3 servings per 14.3 oz package	138	11	\N
21227	4	1	package 34.98 oz pizza	1020	23	\N
21227	5	1	package 30.7 oz pizza	891	11	\N
21227	6	1	package 14.3 oz pizza	415	11	\N
21228	1	1	sandwich	95	12	4.029
21229	1	6	pieces	96	\N	\N
21229	2	4	pieces	64	\N	\N
21229	3	10	pieces	160	\N	\N
21229	4	20	pieces	320	\N	\N
21230	1	1	sandwich	152	36	34.597
21232	1	1	sandwich	134	12	5.061
21233	1	1	item 4 oz	119	\N	\N
21234	1	1	item	171	\N	\N
21235	1	1	item 7.1 oz	199	\N	\N
21237	1	1	item 7.6 oz	219	\N	\N
21238	1	1	small serving	71	\N	\N
21238	2	1	medium serving	117	\N	\N
21238	3	1	large serving	154	\N	\N
21238	4	1	kids serving	31	\N	\N
21239	1	1	item	218	\N	\N
21240	1	1	item	236	\N	\N
21241	1	1	item	117	\N	\N
21242	1	1	item	129	\N	\N
21243	1	1	item	310	\N	\N
21244	1	1	item	230	\N	\N
21245	1	1	item	225	\N	\N
21246	1	5	pieces	68	\N	\N
21246	2	10	pieces	142	\N	\N
21247	1	1	kid's meal Serving	71	\N	\N
21247	2	1	small Serving	113	\N	\N
21247	3	1	medium Serving	142	\N	\N
21247	4	1	large Serving	184	\N	\N
21248	1	1	junior 6 oz. cup	113	\N	\N
21248	2	1	small 12 oz. cup	227	\N	\N
21248	3	1	medium 16 oz. cup	298	\N	\N
21249	1	1	small serving	74	\N	\N
21249	2	1	medium serving	117	\N	\N
21249	3	1	large serving	160	\N	\N
21250	1	1	sandwich	99	12	3.718
21251	1	1	item	133	\N	\N
21252	1	1	item	291	\N	\N
21253	1	1	item	316	\N	\N
21254	1	1	item	374	\N	\N
21255	1	1	item	399	\N	\N
21256	1	1	strip	36	12	5.564
21256	2	1	serving 5 pieces	173	12	34.567
21258	1	1	sandwich	220	12	14.192
21259	1	1	sandwich	199	12	9.867
21260	1	1	each taco	69	12	11.225
21261	1	1	each taco	102	12	13.703
21262	1	1	each taco	98	12	9.985
21263	1	1	item	127	\N	\N
21264	1	1	each burrito	185	12	18.152
21265	1	1	burrito	241	12	19.701
21266	1	1	item	248	\N	\N
21267	1	1	item	248	\N	\N
21268	1	1	serving	80	12	11.09
21269	1	1	serving	222	12	40.771
21270	1	1	item	533	\N	\N
21271	1	1	slice	96	33	17.266
21271	2	1	pizza	738	4	81.508
21272	1	1	slice	100	33	19.019
21272	2	1	pizza	728	3	21.4
21273	1	1	slice	69	36	14.145
21273	2	1	pizza	573	4	64.543
21274	1	1	slice	96	33	12.977
21274	2	1	pizza	744	4	31.908
21275	1	1	slice	96	33	18.022
21275	2	1	pizza	778	4	42.541
21276	1	1	slice	127	36	27.244
21276	2	1	pizza	1107	3	272.495
21276	3	0.5	pizza	541	1	\N
21277	1	1	slice	108	96	20.21
21277	2	1	pizza	865	12	68.352
21278	1	1	slice	118	96	25.115
21278	2	1	pizza	947	12	72.431
21279	1	1	slice	70	40	12.203
21279	2	1	pizza	540	12	51.024
21280	1	1	slice	113	96	20.034
21280	2	1	pizza	907	12	69.336
21281	1	1	slice	123	96	24.93
21281	2	1	pizza	984	12	85.682
21282	1	1	slice	151	33	24.483
21282	2	1	pizza	1224	11	101.706
21283	1	1	slice	117	27	15.637
21283	2	1	pie	938	9	46.288
21284	1	1	slice	123	27	14.488
21284	2	1	pie	1021	9	67.647
21285	1	1	slice	153	27	19.533
21285	2	1	pie	1093	9	203.357
21286	1	1	slice	87	27	16.433
21286	2	1	pie	678	9	56.308
21287	1	1	slice	89	24	22.089
21287	2	1	pie	758	8	165.433
21288	1	1	slice	90	24	16.065
21288	2	1	pie	852	8	64.875
21289	1	1	slice	115	21	29.352
21289	2	1	pie	1043	7	449.085
21290	1	1	slice	102	18	22.042
21290	2	1	pie	919	6	122.721
21291	1	1	slice	104	18	29.979
21291	2	1	pie	938	6	54.938
21292	1	1	slice	48	9	15.507
21292	2	1	pie	562	2	\N
21292	3	0.5	pie	362	1	\N
21293	1	1	slice	105	96	22.269
21293	2	1	pizza	841	12	106.998
21294	1	1	slice	112	96	20.396
21294	2	1	pizza	897	12	90.51
21295	1	1	slice	79	96	15.823
21295	2	1	pizza	641	12	77.417
21296	1	1	slice	110	96	23.177
21296	2	1	pizza	883	12	129.337
21297	1	1	slice	113	96	21.174
21297	2	1	pizza	909	12	94.977
21298	1	1	slice	123	36	36.345
21298	2	1	pizza	1313	12	145.905
21299	1	1	slice	107	192	21.262
21299	2	1	pizza	853	24	88.617
21300	1	1	slice	115	192	23.028
21300	2	1	pizza	922	24	84.09
21301	1	1	slice	76	136	15.471
21301	2	1	pizza	590	24	82.454
21302	1	1	slice	111	192	21.652
21302	2	1	pizza	895	24	102.212
21303	1	1	slice	118	192	23.627
21303	2	1	pizza	946	24	96.355
21304	1	1	slice	136	117	\N
21304	2	1	pie	1168	39	\N
21305	1	1	item	199	\N	\N
21306	1	1	item	135	\N	\N
21307	1	1	item 6.1 oz	174	\N	\N
21309	1	4	pieces	64	1	\N
21309	2	6	pieces	95	1	\N
21309	3	10	pieces	159	1	\N
21310	1	1	package	28	\N	\N
21311	1	1.5	oz	43	\N	\N
21313	1	1	package	28	\N	\N
21314	1	1.5	oz	43	\N	\N
21315	1	1	package	28	\N	\N
21316	1	1.5	oz	43	\N	\N
21319	1	1	serving 1 patty	53	12	3.805
21321	1	3	hotcakes 5.3 oz	149	\N	\N
21324	1	2.7	oz	77	\N	\N
21327	1	1	item 5.8 oz	165	\N	\N
21328	1	1	item	135	\N	\N
21329	1	1	item 7 oz	199	\N	\N
21333	1	1	item (3.2 oz)	90	\N	\N
21334	1	1	item (6.3 oz)	178	\N	\N
21335	1	1	item (6.4 oz)	182	\N	\N
21336	1	1	item (6.3 oz)	179	\N	\N
21337	1	0.3	oz	7.0	\N	\N
21338	1	1	regular (12 fl oz)	348	\N	\N
21338	2	1	large (16 fl oz)	504	\N	\N
21339	1	1	regular (12 fl oz)	337	\N	\N
21339	2	1	large (16 fl oz)	487	\N	\N
21340	1	1	burrito	109	12	10.242
21341	1	1	item 9.5 oz	269	\N	\N
21343	1	0.8	oz	21	\N	\N
21344	1	1	sandwich	155	12	5.512
21345	1	1	item	280	\N	\N
21346	1	2	fl oz	62	\N	\N
21347	1	2	fl oz	59	\N	\N
21348	1	2	fl oz	47	\N	\N
21349	1	2	fl oz	56	\N	\N
21350	1	1	item	200	\N	\N
21355	1	1	sandwich	131	12	4.352
21356	1	1	item	138	\N	\N
21357	1	1	sandwich	126	12	6.798
21358	1	1	item 4 oz	115	\N	\N
21359	1	1	item 5.8 oz	165	\N	\N
21360	1	1	item 4.9 oz	142	\N	\N
21361	1	1	item 4.1 oz	117	\N	\N
21362	1	1	item 5.7 oz	163	\N	\N
21363	1	1	item 14.8 oz	420	\N	\N
21364	1	1	item	192	\N	\N
21365	1	1	item	221	\N	\N
21376	1	1	item 10.8 oz	305	\N	\N
21377	1	1	item 11.3 oz	319	\N	\N
21378	1	1	item 7.8 oz	223	\N	\N
21379	1	1	item 3.1 oz	87	\N	\N
21380	1	1	item 5.2 oz	149	\N	\N
21381	1	1	item	142	\N	\N
21382	1	1	item	124	\N	\N
21383	1	1	sandwich	171	12	14.682
21384	1	1	item	131	4	23.098
21385	1	1	item	110	4	3.77
21386	1	1	stick	21	8	2.736
21386	2	1	serving 5 sticks	107	\N	\N
21387	1	1	piece	5.6	11	0.439
21387	2	1	serving	160	11	27.189
21388	1	1	each	25	8	1.42
21389	1	1	item	374	\N	\N
21390	1	1	item	247	3	38.793
21393	1	1	item	205	\N	\N
21395	1	1	sandwich	155	32	8.054
21396	1	1	item	280	\N	\N
21397	1	1	sandwich	215	12	14.941
21398	1	1	item	199	\N	\N
21399	1	1	item	355	\N	\N
21400	1	1	item	219	\N	\N
21401	1	1	strip	30	64	\N
21401	2	1	serving	184	20	31.459
21402	1	1	item 7 oz	200	\N	\N
21403	1	1	item	230	\N	\N
21404	1	1	item 7.9 oz	223	\N	\N
21405	1	1	item 9 oz	254	\N	\N
21406	1	1	item 7.1 oz	202	\N	\N
21407	1	1	item 8.5 oz	240	\N	\N
21410	1	1	item	219	3	4.535
21411	1	1	item	254	4	18.244
21412	1	12	fl oz cup	348	\N	\N
21413	1	12	fl oz cup	337	\N	\N
21415	1	1	biscuit	60	72	\N
21416	1	1	package	120	4	25.219
21416	2	1	cup	190	4	20.948
21417	1	1	strip	54	4	4.215
21418	1	1	strip	53	4	8.803
21419	1	1	biscuit	49	72	\N
21420	1	1	package	112	4	15.354
21420	2	1	cup	191	4	13.683
21421	1	1	strip	47	4	13.581
21422	1	1	piece	6.4	4	1.352
21422	2	10	pieces	56	4	7.183
21425	1	1	breast without skin	152	36	21.55
21425	2	1	breast bone and skin removed	115	36	24.738
21426	1	1	drumstick, bone and skin removed	40	36	8.995
21426	2	1	drumstick, without skin	57	36	9.613
21427	1	1	thigh without skin	86	36	13.095
21427	2	1	thigh bone and skin removed	60	36	11.763
21428	1	1	wing wing without skin	39	36	7.992
21428	2	1	wing bone and skin removed	23	36	8.543
21430	1	1	breast, without skin	140	36	20.022
21430	2	1	breast, bone and skin removed	121	36	22.309
21431	1	1	drumstick, bone and skin removed	41	36	7.019
21431	2	1	drumstick, without skin	57	36	7.998
21432	1	1	thigh, without skin	91	36	13.247
21432	2	1	thigh, bone and skin removed	72	36	12.396
21433	1	1	wing, without skin	44	35	9.349
21433	2	1	wing, bone and skin removed	29	35	8.41
21434	1	1	breast, with skin	212	36	27.858
21434	2	1	breast, without skin	152	36	21.55
21434	3	1	breast, bone and skin removed	115	36	24.738
21435	1	1	drumstick, with skin	75	36	12.287
21435	2	1	drumstick, without skin	57	36	9.613
21435	3	1	drumstick, bone and skin removed	40	36	8.995
21436	1	1	thigh, with skin	135	\N	\N
21436	2	1	thigh, without skin	86	\N	\N
21436	3	1	thigh, bone and skin removed	60	\N	\N
21437	1	1	wing, with skin	60	\N	\N
21437	2	1	wing, without skin	39	\N	\N
21437	3	1	wing, bone and skin removed	23	\N	\N
21438	1	1	breast, with skin	212	36	27.474
21438	2	1	breast, without skin	140	36	20.022
21438	3	1	breast, bone and skin removed	121	36	22.309
21439	1	1	drumstick, with skin	81	36	10.126
21439	2	1	drumstick, without skin	57	36	7.998
21439	3	1	drumstick, bone and skin removed	41	36	7.019
21440	1	1	thigh, with skin	152	36	23.613
21440	2	1	thigh, without skin	91	36	13.247
21440	3	1	thigh, bone and skin removed	72	36	12.396
21441	1	1	wing, with skin	68	35	11.764
21441	2	1	wing, without skin	44	35	9.349
21441	3	1	wing, bone and skin removed	29	35	8.41
21442	1	1	breast without skin	132	36	17.888
21442	2	1	breast bone and skin removed	99	36	19.515
21443	1	1	drumstick, bone and skin removed	44	36	14.718
21443	2	1	drumstick, without skin	59	36	15.377
21445	1	1	thigh thigh without skin	83	36	13.151
21445	2	1	thigh bone and skin removed	54	36	12.918
21446	1	1	wing without skin, bone and breading	16	239	\N
21456	1	1	breast, with skin	194	36	26.29
21456	2	1	breast, without skin	132	36	17.888
21456	3	1	breast, bone and skin removed	99	36	19.515
21457	1	1	drumstick, with skin	76	36	19.568
21457	2	1	drumstick, without skin	59	36	15.377
21457	3	1	drumstick, bone and skin removed	44	36	14.718
21458	1	1	thigh with skin	138	\N	\N
21458	2	1	thigh without skin	83	\N	\N
21458	3	1	thigh bone and skin removed	54	\N	\N
21459	1	1	wing, with skin	57	36	10.631
21459	2	1	wing, without skin	35	36	7.092
21459	3	1	wing, bone and skin removed	17	36	5.483
21461	1	1	sandwich	268	\N	\N
21462	1	1	sandwich	271	\N	\N
21463	1	1	item	149	\N	\N
21464	1	1	breast without skin	142	144	\N
21464	2	1	breast bone and skin removed	107	144	\N
21465	1	1	drumstick, bone and skin removed	40	144	\N
21465	2	1	drumstick, drumstick without skin	56	144	\N
21466	1	1	thigh without skin	84	144	\N
21466	2	1	thigh bone and skin removed	66	144	\N
21467	1	1	wing without skin	37	107	\N
21467	2	1	wing bone and skin removed	20	107	\N
21469	1	1	breast, with skin	203	144	\N
21469	2	1	breast, without skin	142	144	\N
21469	3	1	breast, bone and skin removed	107	144	\N
21470	1	1	drumstick, with skin	75	144	\N
21470	2	1	drumstick, without skin	56	144	\N
21470	3	1	drumstick, bone and skin removed	40	144	\N
21471	1	1	thigh with skin	136	144	\N
21471	2	1	thigh without skin	84	144	\N
21471	3	1	thigh bone and skin removed	66	144	\N
21472	1	1	wing, with skin	58	143	\N
21472	2	1	wing, without skin	37	143	\N
21472	3	1	wing, bone and skin removed	20	143	\N
21473	1	1	slice 1/4 of pie	164	3	6.879
21473	2	1	pie 12"" diameter	688	3	47.153
21474	1	1	slice 1/4 of pie	183	4	6.243
21474	2	1	pie 12"" diameter	729	4	19.466
21475	1	1	slice 1/4 of pie	161	3	3.11
21475	2	1	pie 23 oz	643	3	11.288
21476	1	1	slice 1/4 of pie	179	3	7.672
21476	2	1	pie 12"" diameter	732	3	32.639
21477	1	1	slice 1/4 of pie	207	5	17.537
21477	2	1	pie 12"" diameter	759	5	30.682
21478	1	1	slice 1/4 of pie	145	4	23.03
21478	2	1	pie 22.1 oz	548	4	27.453
21479	1	1	slice 1/4 of pie	227	6	8.448
21479	2	1	pie 12"" diameter	876	5	27.692
21480	1	1	slice 1/4 of pie	155	4	20.408
21480	2	1	pie 24.8 oz	595	4	29.463
21482	1	1	slice	127	192	28.7
21482	2	1	pizza	1017	24	113.431
21483	1	1	slice	88	132	21.038
21483	2	1	pizza	670	23	110.879
21484	1	1	slice	116	192	25.245
21484	2	1	pizza	932	24	115.413
21485	1	1	slice	79	132	17.714
21485	2	1	pizza	597	23	91.684
21486	1	1	each taco	102	12	13.703
21487	1	1	each taco	98	12	9.985
21488	1	1	each quesadilla	180	11	16.928
21490	1	1	sandwich	230	\N	\N
21491	1	1	slice	80	95	18.307
21491	2	1	pizza	634	11	88.657
21492	1	1	slice	79	37	16.306
21492	2	1	pizza	563	12	83.903
21493	1	1	slice	78	40	15.445
21493	2	1	pizza	597	11	64.062
21494	1	1	slice	114	96	23.331
21494	2	1	pizza	913	12	88.754
21495	1	1	slice	129	96	30.167
21495	2	1	pizza	1032	12	105.19
21496	1	1	slice	92	92	21.854
21496	2	1	pizza	737	12	102.769
21497	1	1	slice	119	96	26.89
21497	2	1	pizza	952	12	138.329
21498	1	1	slice	125	96	27.208
21498	2	1	pizza	1003	12	124.076
21499	1	0.33	pizza	116	1	\N
21500	1	0.33	pizza	113	1	\N
21501	1	0.33	pizza	113	1	\N
21503	1	0.33	pizza	120	1	\N
21505	1	1	slice	69	24	6.489
21505	2	1	pie	556	24	16.798
21506	1	1	sandwich	162	12	4.601
21507	1	1	sandwich	146	8	5.622
21508	1	1	sandwich	126	12	9.015
21509	1	1	small	91	\N	\N
21509	2	1	medium	117	\N	\N
21509	3	1	large	142	\N	\N
21510	1	1	sandwich	215	12	14.941
21511	1	1	slice 1/8 pizza	117	\N	\N
21511	2	1	pizza whole	937	12	64.05
21512	1	1	slice	117	\N	\N
21512	2	1	pizza	937	12	64.05
21513	1	1	pizza	149	1	\N
21514	1	1	pizza	159	1	\N
21515	1	1	pizza	160	\N	\N
21516	1	1	pizza	152	1	\N
21517	1	1	item	133	8	9.374
21518	1	1	item	123	12	9.616
21519	1	1	burrito	109	12	10.242
21520	1	1	breadstick	43	140	\N
21521	1	12	fl oz	347	1	\N
21522	1	1	biscuit regular size biscuit	132	3	6.255
21523	1	1	wrap	133	8	9.374
21524	1	1	wrap	123	12	9.616
21525	1	1	breadstick	43	140	\N
21526	1	1	sandwich	187	40	\N
21527	1	1	sandwich	149	26	\N
21600	1	1	piece 4""x6""	130	\N	\N
21601	1	1	slice per 1/10 pizza	124	\N	\N
21601	2	1	slice per 1/8 pizza	155	\N	\N
21602	1	1	piece 4""x6""	127	\N	\N
21603	1	1	slice per 1/10 pizza	124	\N	\N
21603	2	1	slice per 1/8 pizza	156	\N	\N
21604	1	1	piece 4"" x 6""	133	1	\N
21605	1	1	slice per 1/10 pizza	129	\N	\N
21610	1	1	patty	86	2	\N
21611	1	5	pieces	88	6	8.433
22118	1	1	burger	67	1	\N
22119	1	1	link	40	1	\N
22120	1	0.5	cup	50	1	\N
22121	1	1	Burger	71	1	\N
22122	1	1	patty	38	1	\N
22123	1	1	burger	67	1	\N
22126	1	1	link	51	1	\N
22247	1	1	serving	244	\N	\N
22401	1	1	serving	283	\N	\N
22401	2	1	oz	28.35	\N	\N
22402	1	1	serving	269	\N	\N
22402	2	1	oz	28.35	\N	\N
22522	1	1	serving (1 cup)	252	1	\N
22528	1	1	package yields	397	\N	\N
22528	2	1	serving	397	\N	\N
22529	1	1	pie, cooked (average weight)	268	\N	\N
22535	1	1	serving (1 hot pocket)	127	\N	\N
22537	1	1	serving (1 hot pocket)	127	\N	\N
22537	2	1	package yields	256	\N	\N
22899	1	1	cup	242	2	\N
22900	1	1	cup	262	14	12.965
22901	1	0.75	cup	81	\N	\N
22902	1	1	slice 1/8 of 12"" pizza	103	5	17.537
22902	2	1	slice 1/8 of 14"" pizza	127	192	28.7
22903	1	0.25	pizza 12"" diameter	127	10	19.264
22903	2	1	pizza 12"" diameter	532	10	77.59
22904	1	1	cup	242	6	5.191
22905	1	1	cup (1 serving)	196	4	5.393
22906	1	1	pie	302	24	124.956
22908	1	1	cup	236	1	\N
22910	1	1	cup 1 serving	225	\N	\N
22911	1	1	cup	240	\N	\N
22912	1	1	cup	246	35	6.916
22912	2	1	can	411	35	5.671
22914	1	1	serving (1 NLEA serving)	252	4	0
22914	2	1	cup	238	20	5.597
22915	1	1	package	309	\N	\N
22915	2	1	oz	28.35	\N	\N
22916	1	1	piece side	134	48	26.182
22916	2	1	piece corner	115	48	21.948
22916	3	1	piece center	278	2	\N
22917	1	1	burrito frozen	139	73	13.591
22917	2	1	oz	28.35	\N	\N
22918	1	1	burrito	129	9	16.2
22919	1	7.5	oz 1 serving	213	\N	\N
22928	1	1	burrito cooked	116	72	15.027
22928	2	1	oz	28.35	\N	\N
22929	1	1	cup	259	1	\N
22929	2	1	serving	259	1	\N
22930	1	1	cup (1 serving)	252	1	\N
22931	1	1	cup (1 serving)	252	1	\N
22932	1	1	cup (1 serving)	252	1	\N
22937	1	1	cup (1 serving)	252	1	\N
22938	1	1	cup (1 serving)	252	1	\N
22939	1	1	cup (1 serving)	252	1	\N
22940	1	1	cup (1 serving)	252	1	\N
22941	1	1	cup (1 serving)	252	1	\N
22942	1	1	cup (1 serving)	252	1	\N
22943	1	0.167	box (NLEA serving size)	85	1	\N
22944	1	1	serving	125	1	\N
22945	1	0.167	box (NLEA serving)	103	1	\N
22946	1	0.167	box (NLEA serving)	94	1	\N
22947	1	1	serving (NLEA serving)	94	1	\N
22948	1	1	serving	85	1	\N
22948	2	0.167	box	85	1	\N
22949	1	0.167	box (NLEA serving)	81	1	\N
22949	2	1	serving	81	1	\N
22950	1	1	serving 1/6 box	84	1	\N
22950	2	1	box	505	1	\N
22951	1	1	can (1 serving)	298	1	\N
22952	1	1	cup (1 serving)	247	1	\N
22953	1	1	roll	85	3	8.401
22953	2	1	oz	28.35	\N	\N
22954	1	1	roll	80	3	8.792
22954	2	1	oz	28.35	\N	\N
22955	1	1	egg roll	68	7	17.688
22955	2	1	oz	28.35	\N	\N
22956	1	1	serving	227	12	24.072
22956	2	1	cup	226	2	\N
22956	3	1	oz	28.35	\N	\N
22957	1	1	serving	385	37	61.049
22957	2	1	package	422	37	64.967
22957	3	1	oz	28.35	\N	\N
22958	1	1	bowl	340	12	21.955
22959	1	1	serving (makes about 1 cup prepared)	70	\N	\N
22960	1	1	cup	198	24	9.392
22961	1	1	hot pocket (1 NLEA serving)	127	\N	\N
22962	1	1	hot pocket (1 NLEA serving)	127	\N	\N
22962	2	1	each (analytical measurement)	129	12	6.351
22963	1	1	each	128	15	3.788
22965	1	1	can (1 serving)	213	1	\N
22966	1	1	can (1 serving)	206	1	\N
22969	1	1	cup	244	9	8.446
22969	2	1	container	422	9	4.856
22970	1	1	cup	137	14	26.094
22970	2	1	container (mean weight over brands)	283	14	51.325
22971	1	0.5	cup	125	6	2.645
22972	1	1	cup	249	11	10.418
22973	1	1	corndog	78	19	5.55
22973	2	1	corndog mini	17	2	\N
22974	1	1	serving	87	22	3.96
22974	2	1	piece	18	12	0.761
22975	1	1	serving	82	9	4.531
22975	2	1	piece	20	9	2.101
22976	1	1	cup	159	22	12.215
22977	1	1	piece side	123	48	26.372
22977	2	1	piece corner	114	48	32.003
22977	3	1	piece center	255	2	\N
22978	1	1	piece	21	24	7.428
22979	1	1	entree	283	1	\N
22980	1	1	package	269	1	\N
22981	1	1	package	255	1	\N
22982	1	1	package	269	1	\N
22983	1	1	package	283	1	\N
22984	1	1	package	283	1	\N
22985	1	1	package	283	1	\N
22986	1	1	entree	283	1	\N
22987	1	1	entree	283	1	\N
22988	1	0.5	cup	140	1	\N
22989	1	1	package	269	1	\N
22990	1	1	package	269	1	\N
22991	1	1	package	269	1	\N
22992	1	1	package	283	1	\N
22993	1	1	entree	255	1	\N
22994	1	1	entree	269	1	\N
22995	1	1	package	283	1	\N
22996	1	1	Entr�e	269	1	\N
22997	1	1	package	283	1	\N
22998	1	0.333	cup	56	12	3.984
22998	2	1	tbsp	10.2	12	2.339
22999	1	1	cup	233	12	13.458
23000	1	3	oz	85	\N	\N
23000	2	1	steak	369	1	\N
23000	3	1	roast	1159	1	\N
23001	1	3	oz	85	\N	\N
23001	2	1	steak	534	36	30.734
23002	1	3	oz	85	\N	\N
23002	2	1	steak	421	36	31.383
23003	1	3	oz	85	\N	\N
23003	2	1	steak	526	12	32.614
23004	1	3	oz	85	\N	\N
23004	2	1	steak	426	12	33.689
23005	1	3	oz	85	\N	\N
23005	2	1	steak	460	36	31.973
23006	1	3	oz	85	\N	\N
23006	2	1	steak	363	36	28.19
23007	1	3	oz	85	\N	\N
23007	2	1	steak	458	12	36.718
23008	1	3	oz	85	\N	\N
23008	2	1	steak	368	12	27.393
23030	1	3	oz	85	\N	\N
23030	2	1	steak	191	6	31.976
23031	1	1	steak	141	6	22.928
23031	2	1	serving (3 oz)	85	\N	\N
23032	1	3	oz	85	\N	\N
23032	2	1	steak	200	4	55.272
23033	1	1	serving (3 oz)	85	\N	\N
23033	2	1	steak	174	4	15.269
23034	1	1	medallion	40	6	2.474
23035	1	1	medallion	30	6	2.215
23035	2	1	serving (3 oz)	85	\N	\N
23036	1	1	medallion	44	3	0.092
23037	1	3	oz	85	\N	\N
23037	2	1	steak	246	6	19.317
23038	1	1	serving (3 oz)	85	\N	\N
23038	2	1	steak	188	6	19.013
23039	1	3	oz	85	\N	\N
23039	2	1	steak	233	4	17.079
23040	1	1	steak	179	4	18.289
23040	2	1	serving (3 oz)	85	\N	\N
23041	1	3	oz	85	\N	\N
23041	2	1	steak	254	6	32.632
23042	1	1	serving (3 oz)	85	\N	\N
23042	2	1	steak	193	6	27.408
23043	1	3	oz	85	\N	\N
23043	2	1	steak	243	4	29.155
23044	1	1	serving (3 oz)	85	\N	\N
23044	2	1	steak	186	4	27.711
23045	1	3	oz	85	\N	\N
23045	2	1	steak	209	6	62.14
23046	1	3	oz	85	\N	\N
23046	2	1	steak	156	6	39.848
23047	1	3	oz	85	\N	\N
23047	2	1	steak	203	4	27.316
23048	1	3	oz	85	\N	\N
23048	2	1	steak	160	4	18.142
23049	1	3	oz	85	\N	\N
23049	2	1	steak	293	6	20.989
23050	1	1	serving (3 oz)	85	\N	\N
23050	2	1	steak	225	6	20.651
23051	1	3	oz	85	\N	\N
23051	2	1	steak	324	4	7.103
23052	1	1	serving (3 oz)	85	\N	\N
23052	2	1	steak	253	4	10.281
23053	1	1	medallion	41	9	3.094
23054	1	1	medallion	32	10	2.644
23054	2	1	serving (3 oz)	85	\N	\N
23055	1	3	oz	85	\N	\N
23055	2	1	steak	207	7	41.684
23056	1	1	serving (3 oz)	85	\N	\N
23056	2	1	steak	168	7	14.22
23057	1	3	oz	85	\N	\N
23057	2	1	steak	241	10	18.658
23058	1	1	serving (3 oz)	85	\N	\N
23058	2	1	steak	184	10	18.239
23059	1	3	oz	85	\N	\N
23059	2	1	steak	250	10	30.067
23060	1	1	serving (3 oz)	85	\N	\N
23060	2	1	steak	190	10	26.221
23061	1	3	oz	85	\N	\N
23061	2	1	steak	197	13	46.546
23062	1	1	steak	150	13	31.963
23063	1	3	oz	85	\N	\N
23063	2	1	steak	305	10	22.75
23064	1	1	serving (3 oz)	85	\N	\N
23064	2	1	steak	236	10	22.085
23065	1	1	medallion	34	4	1.503
23065	2	1	serving (3 oz)	85	\N	\N
23066	1	3	oz	85	\N	\N
23066	2	1	piece	434	7	\N
23067	1	3	oz	85	\N	\N
23067	2	1	piece	429	4	\N
23068	1	3	oz	85	\N	\N
23068	2	1	piece	432	11	\N
23069	1	3	oz	85	\N	\N
23069	2	1	piece	224	14	40.3
23070	1	3	oz	85	\N	\N
23070	2	1	piece	231	8	45.4
23071	1	3	oz	85	\N	\N
23071	2	1	piece	227	22	41.2
23072	1	3	oz	85	\N	\N
23072	2	1	piece	325	14	\N
23073	1	3	oz	85	\N	\N
23073	2	1	piece	340	8	\N
23074	1	3	oz	85	\N	\N
23074	2	1	piece	331	22	\N
23075	1	3	oz	85	\N	\N
23075	2	1	steak	307	34	73.3
23076	1	3	oz	85	\N	\N
23076	2	1	steak	309	18	82.5
23077	1	3	oz	85	\N	\N
23077	2	1	steak	308	52	75.8
23078	1	3	oz	85	\N	\N
23078	2	1	steak	382	34	\N
23079	1	3	oz	85	\N	\N
23079	2	1	steak	386	18	\N
23080	1	3	oz	85	\N	\N
23080	2	1	steak	384	52	\N
23081	1	3	oz	85	\N	\N
23081	2	1	roast	793	14	102.3
23082	1	3	oz	85	\N	\N
23082	2	1	roast	779	8	113
23083	1	3	oz	85	\N	\N
23083	2	1	roast	787	22	104.5
23084	1	1	steak	141	14	20.1
23085	1	1	steak	141	8	27.2
23086	1	1	steak	141	22	22.3
23087	1	3	oz	85	\N	\N
23087	2	1	steak	204	14	\N
23088	1	3	oz	85	\N	\N
23088	2	1	steak	191	8	\N
23089	1	3	oz	85	\N	\N
23089	2	1	steak	198	22	\N
23090	1	3	oz	85	\N	\N
23090	2	1	lb	453.6	1	\N
23091	1	3	oz	85	\N	\N
23092	1	3	oz	85	\N	\N
23093	1	3	oz	85	\N	\N
23094	1	3	oz	85	\N	\N
23095	1	3	oz	85	\N	\N
23096	1	3	oz	85	\N	\N
23096	2	1	steak	445	7	70.5
23097	1	3	oz	85	\N	\N
23098	1	3	oz	85	\N	\N
23099	1	3	oz	85	\N	\N
23100	1	3	oz	85	\N	\N
23100	2	1	steak	291	36	38.048
23101	1	3	oz	85	\N	\N
23101	2	1	roast	2044	24	445.172
23102	1	3	oz	85	\N	\N
23102	2	1	steak	679	11	\N
23102	3	1	roast	960	11	\N
23103	1	3	oz	85	\N	\N
23103	2	1	steak	648	7	\N
23103	3	1	roast	949	7	\N
23104	1	3	oz	85	\N	\N
23104	2	1	steak	732	4	\N
23104	3	1	roast	977	4	\N
23105	1	3	oz	85	\N	\N
23105	2	1	steak	353	26	74.7
23106	1	3	oz	85	\N	\N
23106	2	1	steak	356	17	74.2
23107	1	3	oz	85	\N	\N
23107	2	1	steak	349	9	80.3
23108	1	3	oz	85	\N	\N
23108	2	1	steak	473	26	\N
23109	1	3	oz	85	\N	\N
23109	2	1	steak	483	17	\N
23110	1	3	oz	85	\N	\N
23110	2	1	steak	458	9	\N
23111	1	3	oz	85	\N	\N
23111	2	1	steak	361	1	\N
23111	3	1	roast	1173	1	\N
23112	1	3	oz	85	\N	\N
23112	2	1	steak	381	1	\N
23112	3	1	roast	1139	1	\N
23113	1	3	oz	85	\N	\N
23113	2	1	roast	609	11	78.6
23114	1	3	oz	85	\N	\N
23114	2	1	roast	586	7	30.6
23115	1	3	oz	85	\N	\N
23115	2	1	roast	645	4	126.7
23116	1	3	oz	85	\N	\N
23116	2	1	steak	449	11	58.2
23117	1	3	oz	85	\N	\N
23117	2	1	steak	445	7	70.5
23118	1	3	oz	85	\N	\N
23118	2	1	steak	454	4	36.8
23119	1	1	steak	141	22	22.3
23120	1	1	steak	141	14	20.1
23121	1	1	steak	141	8	27.2
23122	1	3	oz	85	\N	\N
23122	2	1	steak	198	22	\N
23123	1	3	oz	85	\N	\N
23123	2	1	steak	204	14	\N
23124	1	3	oz	85	\N	\N
23124	2	1	steak	191	8	\N
23125	1	3	oz	85	\N	\N
23125	2	1	piece	289	11	52
23126	1	3	oz	85	\N	\N
23126	2	1	piece	272	7	51.1
23127	1	3	oz	85	\N	\N
23127	2	1	piece	315	4	51.9
23128	1	3	oz	85	\N	\N
23128	2	1	piece	432	11	\N
23129	1	3	oz	85	\N	\N
23129	2	1	piece	434	7	\N
23130	1	3	oz	85	\N	\N
23130	2	1	piece	429	4	\N
23131	1	3	oz	85	\N	\N
23131	2	1	roast	787	22	104.5
23132	1	3	oz	85	\N	\N
23132	2	1	roast	793	14	102.3
23133	1	3	oz	85	\N	\N
23133	2	1	roast	779	8	113
23134	1	3	oz	85	\N	\N
23134	2	1	piece	227	22	41.2
23135	1	3	oz	85	\N	\N
23135	2	1	piece	224	14	40.3
23136	1	3	oz	85	\N	\N
23136	2	1	piece	231	8	45.4
23137	1	3	oz	85	\N	\N
23137	2	1	piece	331	22	\N
23138	1	3	oz	85	\N	\N
23138	2	1	piece	325	14	\N
23139	1	3	oz	85	\N	\N
23139	2	1	piece	340	8	\N
23140	1	3	oz	85	\N	\N
23140	2	1	steak	308	52	75.8
23141	1	3	oz	85	\N	\N
23141	2	1	steak	307	34	73.3
23142	1	3	oz	85	\N	\N
23142	2	1	steak	309	18	82.5
23143	1	3	oz	85	\N	\N
23143	2	1	steak	384	52	\N
23144	1	3	oz	85	\N	\N
23144	2	1	steak	382	34	\N
23145	1	3	oz	85	\N	\N
23145	2	1	steak	386	18	\N
23146	1	3	oz	85	\N	\N
23146	2	1	roast	2130	35	439.866
23147	1	3	oz	85	\N	\N
23147	2	1	roast	2259	11	432.195
23148	1	3	oz	85	\N	\N
23148	2	1	steak	281	24	34.801
23149	1	3	oz	85	\N	\N
23149	2	1	steak	306	12	38.938
23150	1	3	oz	85	\N	\N
23150	2	1	steak	462	36	42.723
23150	3	1	roast	2627	36	565.406
23151	1	3	oz	85	\N	\N
23151	2	1	steak	456	24	39.959
23151	3	1	roast	2674	24	593.856
23152	1	3	oz	85	\N	\N
23152	2	1	steak	471	12	48.629
23152	3	1	roast	2557	12	516.074
23153	1	3	oz	85	\N	\N
23153	2	1	steak	361	36	47.605
23153	3	1	roast	2155	36	421.5
23154	1	3	oz	85	\N	\N
23154	2	1	steak	350	24	40.625
23154	3	1	roast	2124	24	421
23155	1	3	oz	85	\N	\N
23155	2	1	steak	376	12	56.167
23155	3	1	roast	2203	12	438.7
23156	1	3	oz	85	\N	\N
23156	2	1	steak	381	36	39.487
23157	1	3	oz	85	\N	\N
23157	2	1	steak	378	24	40.12
23158	1	3	oz	85	\N	\N
23158	2	1	steak	385	12	39.773
23159	1	3	oz	85	\N	\N
23159	2	1	roast	1601	36	326.43
23160	1	3	oz	85	\N	\N
23160	2	1	roast	1555	24	340.187
23161	1	3	oz	85	\N	\N
23161	2	1	roast	1669	12	296.629
23162	1	3	oz	85	\N	\N
23162	2	1	steak	254	72	48.601
23163	1	3	oz	85	\N	\N
23163	2	1	steak	382	1	\N
23164	1	3	oz	85	\N	\N
23164	2	1	steak	256	48	51.975
23165	1	3	oz	85	\N	\N
23165	2	1	steak	388	1	\N
23166	1	3	oz	85	\N	\N
23166	2	1	steak	250	24	41.961
23167	1	3	oz	85	\N	\N
23167	2	1	steak	373	1	\N
23168	1	3	oz	85	\N	\N
23168	2	1	steak	174	72	46.294
23169	1	3	oz	85	\N	\N
23169	2	1	steak	266	1	\N
23170	1	3	oz	85	\N	\N
23170	2	1	steak	173	48	48.135
23171	1	3	oz	85	\N	\N
23171	2	1	steak	268	1	\N
23172	1	3	oz	85	\N	\N
23172	2	1	steak	175	24	43.352
23173	1	3	oz	85	\N	\N
23173	2	1	steak	264	1	\N
23174	1	3	oz	85	\N	\N
23175	1	3	oz	85	\N	\N
23176	1	3	oz	85	\N	\N
23176	2	1	steak	242	24	23.638
23177	1	3	oz	85	\N	\N
23177	2	1	steak	316	24	34.398
23178	1	3	oz	85	\N	\N
23178	2	1	steak	266	12	28.022
23179	1	3	oz	85	\N	\N
23180	1	3	oz	85	\N	\N
23180	2	1	ribs	1159	36	224.955
23181	1	3	oz	85	\N	\N
23181	2	1	ribs	1587	36	262.913
23182	1	3	oz	85	\N	\N
23182	2	1	ribs	1197	24	229.773
23183	1	3	oz	85	\N	\N
23183	2	1	ribs	1604	24	283.936
23184	1	3	oz	85	\N	\N
23184	2	1	ribs	1102	12	206.067
23185	1	3	oz	85	\N	\N
23185	2	1	ribs	1562	12	222.274
23186	1	3	oz	85	\N	\N
23186	2	1	steak	378	24	40.12
23187	1	3	oz	85	\N	\N
23187	2	1	steak	385	12	39.773
23188	1	3	oz	85	\N	\N
23188	2	1	steak	381	36	39.487
23189	1	3	oz	85	\N	\N
23189	2	1	roast	2044	24	445.172
23190	1	3	oz	85	\N	\N
23190	2	1	roast	2259	11	432.195
23191	1	3	oz	85	\N	\N
23191	2	1	roast	2130	35	439.866
23192	1	3	oz	85	\N	\N
23192	2	1	steak	462	36	42.723
23192	3	1	roast	2627	36	565.406
23193	1	3	oz	85	\N	\N
23193	2	1	steak	456	24	39.959
23193	3	1	roast	2674	24	593.856
23194	1	3	oz	85	\N	\N
23194	2	1	steak	471	12	48.629
23194	3	1	roast	2557	12	516.074
23195	1	3	oz	85	\N	\N
23195	2	1	steak	281	24	34.801
23196	1	3	oz	85	\N	\N
23196	2	1	steak	306	12	38.938
23197	1	3	oz	85	\N	\N
23197	2	1	steak	291	36	38.048
23198	1	3	oz	85	\N	\N
23198	2	1	roast	1601	36	326.43
23199	1	3	oz	85	\N	\N
23199	2	1	roast	1555	24	340.187
23200	1	3	oz	85	\N	\N
23200	2	1	roast	1669	12	296.629
23201	1	3	oz	85	\N	\N
23201	2	1	steak	361	36	47.605
23201	3	1	roast	2155	36	421.522
23202	1	3	oz	85	\N	\N
23202	2	1	steak	350	24	40.625
23202	3	1	roast	2124	24	421.046
23213	1	3	oz	85	\N	\N
23213	2	1	steak	376	12	56.167
23213	3	1	roast	2203	12	438.735
23214	1	3	oz	85	\N	\N
23214	2	1	steak	254	72	48.601
23215	1	3	oz	85	\N	\N
23215	2	1	steak	256	48	51.975
23216	1	3	oz	85	\N	\N
23216	2	1	steak	250	24	41.961
23217	1	3	oz	85	\N	\N
23217	2	1	steak	382	1	\N
23218	1	3	oz	85	\N	\N
23218	2	1	steak	388	1	\N
23219	1	3	oz	85	\N	\N
23219	2	1	steak	373	1	\N
23220	1	3	oz	85	1	\N
23221	1	3	oz	85	\N	\N
23221	2	1	steak	174	72	46.294
23222	1	3	oz	85	\N	\N
23222	2	1	steak	173	48	48.135
23223	1	3	oz	85	\N	\N
23223	2	1	steak	175	24	43.352
23224	1	3	oz	85	\N	\N
23224	2	1	steak	266	1	\N
23225	1	3	oz	85	\N	\N
23225	2	1	steak	268	1	\N
23226	1	3	oz	85	\N	\N
23226	2	1	steak	264	1	\N
23227	1	3	oz	85	\N	\N
23227	2	1	steak	251	36	27.211
23228	1	3	oz	85	\N	\N
23228	2	1	steak	242	24	23.638
23229	1	3	oz	85	\N	\N
23229	2	1	steak	266	12	28.022
23230	1	3	oz	85	\N	\N
23230	2	1	steak	326	36	39.568
23231	1	3	oz	85	\N	\N
23231	2	1	steak	316	24	34.398
23232	1	3	oz	85	\N	\N
23232	2	1	steak	340	12	44.658
23233	1	3	oz	85	\N	\N
23233	2	1	ribs	1159	36	224.955
23234	1	3	oz	85	\N	\N
23234	2	1	ribs	1197	24	229.773
23235	1	3	oz	85	\N	\N
23235	2	1	ribs	1102	12	206.067
23236	1	3	oz	85	\N	\N
23236	2	1	ribs	1587	36	262.913
23237	1	3	oz	85	\N	\N
23237	2	1	ribs	1604	24	283.936
23238	1	3	oz	85	\N	\N
23238	2	1	ribs	1562	12	222.274
23239	1	3	oz	85	\N	\N
23239	2	1	roast	806	16	81.954
23240	1	3	oz	85	\N	\N
23240	2	1	fillet	190	16	33.525
23240	3	1	roast	1013	16	128.799
23241	1	3	oz	85	\N	\N
23241	2	1	steak	161	24	27.396
23242	1	3	oz	85	\N	\N
23242	2	1	steak	165	16	24.719
23243	1	3	oz	85	\N	\N
23243	2	1	steak	156	8	32.402
23244	1	3	oz	85	\N	\N
23244	2	1	steak	223	24	39.224
23245	1	3	oz	85	\N	\N
23245	2	1	steak	238	16	27.807
23246	1	3	oz	85	\N	\N
23246	2	1	steak	199	8	43.09
23247	1	1	fillet	135	24	18.551
23248	1	1	fillet	135	16	20.613
23249	1	1	fillet	135	8	14.828
23250	1	3	oz	85	\N	\N
23250	2	1	roast	634	24	123.142
23251	1	3	oz	85	\N	\N
23251	2	1	roast	677	16	111.092
23252	1	3	oz	85	\N	\N
23252	2	1	roast	571	8	113.723
23253	1	3	oz	85	\N	\N
23253	2	1	fillet	173	24	26.608
23253	3	1	roast	852	24	168.444
23254	1	3	oz	85	\N	\N
23254	2	1	fillet	178	16	27.372
23254	3	1	roast	844	16	169.177
23255	1	3	oz	85	\N	\N
23255	2	1	fillet	166	8	24.238
23255	3	1	roast	866	8	178.113
23256	1	1	fillet	121	24	25.596
23257	1	1	fillet	124	16	28.361
23258	1	1	fillet	115	8	16.815
23259	1	3	oz	85	\N	\N
23259	2	1	roast	768	24	100.785
23260	1	3	oz	85	\N	\N
23260	2	1	roast	765	8	134.304
23261	1	3	oz	85	\N	\N
23261	2	1	fillet	180	24	34.446
23261	3	1	roast	970	24	120.894
23262	1	3	oz	85	\N	\N
23262	2	1	fillet	186	8	40.249
23262	3	1	roast	955	8	82.971
23263	1	3	oz	85	\N	\N
23263	2	1	fillet	164	24	23.274
23263	3	1	roast	901	24	126.244
23264	1	3	oz	85	\N	\N
23264	2	1	fillet	163	16	17.579
23264	3	1	roast	938	16	131.843
23265	1	3	oz	85	\N	\N
23265	2	1	fillet	167	8	33.346
23265	3	1	roast	847	8	94.107
23266	1	3	oz	85	\N	\N
23266	2	1	steak	209	24	31.074
23267	1	3	oz	85	\N	\N
23267	2	1	steak	208	16	26.678
23268	1	3	oz	85	\N	\N
23268	2	1	steak	211	8	40.54
23269	1	3	oz	85	\N	\N
23269	2	1	steak	256	24	46.771
23270	1	3	oz	85	\N	\N
23270	2	1	steak	249	16	33.313
23271	1	3	oz	85	\N	\N
23271	2	1	steak	267	8	67.857
23272	1	1	fillet	135	24	17.475
23273	1	1	fillet	138	16	16.234
23274	1	1	fillet	129	8	20.093
23275	1	3	oz	85	\N	\N
23275	2	1	roast	699	24	96.785
23276	1	3	oz	85	\N	\N
23276	2	1	roast	714	16	95.259
23277	1	3	oz	85	\N	\N
23277	2	1	roast	675	8	98.197
23278	1	3	oz	85	\N	\N
23278	2	1	steak	161	24	27.396
23279	1	3	oz	85	\N	\N
23279	2	1	steak	165	16	24.719
23280	1	3	oz	85	\N	\N
23280	2	1	steak	156	8	32.402
23281	1	3	oz	85	\N	\N
23281	2	1	steak	223	24	39.224
23282	1	3	oz	85	\N	\N
23282	2	1	steak	238	16	27.807
23283	1	3	oz	85	\N	\N
23283	2	1	steak	199	8	43.09
23284	1	1	fillet	135	24	18.551
23285	1	1	fillet	135	16	20.613
23286	1	1	fillet	135	8	14.828
23287	1	3	oz	85	\N	\N
23287	2	1	roast	634	24	123.142
23288	1	3	oz	85	\N	\N
23288	2	1	roast	677	16	111.092
23289	1	3	oz	85	\N	\N
23289	2	1	roast	571	8	113.723
23290	1	3	oz	85	\N	\N
23290	2	1	fillet	173	24	26.608
23290	3	1	roast	852	24	168.444
23291	1	3	oz	85	\N	\N
23291	2	1	fillet	178	16	27.372
23291	3	1	roast	844	16	169.177
23292	1	3	oz	85	\N	\N
23292	2	1	fillet	166	8	24.238
23292	3	1	roast	866	8	178.113
23293	1	4	oz (4 oz)	114	\N	\N
23294	1	4	oz	114	\N	\N
23294	2	1	steak	150	42	41.2
23295	1	4	oz	114	\N	\N
23295	2	1	steak	152	34	36.1
23296	1	1	oz	28.35	\N	\N
23297	1	1	oz	28.35	\N	\N
23298	1	1	oz	28.35	\N	\N
23299	1	1	oz	28.35	\N	\N
23300	1	1	oz	28	\N	\N
23301	1	1	oz	28	\N	\N
23302	1	4	oz	114	\N	\N
23302	2	1	steak	150	42	41.2
23303	1	4	oz	114	\N	\N
23303	2	1	roast	339	47	48.9
23304	1	4	oz	114	\N	\N
23304	2	1	steak	152	34	36.1
23305	1	4	oz	114	\N	\N
23305	2	1	roast	339	47	48.9
23306	1	4	oz	114	\N	\N
23306	2	1	roast	449	18	180.7
23307	1	4	oz	114	\N	\N
23307	2	1	roast	350	38	63.8
23308	1	4	oz	114	\N	\N
23308	2	1	roast	337	49	64.5
23309	1	4	oz	114	\N	\N
23309	2	1	roast	763	25	154.1
23310	1	4	oz	114	\N	\N
23310	2	1	steak	173	44	42.4
23311	1	4	oz	114	\N	\N
23311	2	1	roast	348	62	63
23312	1	4	oz	114	\N	\N
23312	2	1	roast	359	64	56.7
23313	1	4	oz	114	\N	\N
23313	2	1	roast	342	52	84.4
23314	1	4	oz	114	\N	\N
23314	2	1	roast	377	59	77.7
23315	1	4	oz	114	\N	\N
23315	2	1	roast	449	\N	\N
23316	1	4	oz	114	\N	\N
23316	2	1	roast	350	\N	\N
23317	1	4	oz	114	\N	\N
23317	2	1	roast	337	\N	\N
23318	1	4	oz	114	\N	\N
23318	2	1	roast	763	\N	\N
23319	1	4	oz	114	\N	\N
23319	2	1	roast	348	\N	\N
23320	1	4	oz	114	\N	\N
23320	2	1	roast	359	64	56.7
23321	1	4	oz	114	\N	\N
23321	2	1	roast	342	52	84.4
23322	1	4	oz	114	\N	\N
23322	2	1	roast	377	59	77.7
23323	1	4	oz	114	\N	\N
23323	2	1	steak	173	\N	\N
23324	1	3	oz	85	\N	\N
23324	2	1	steak	344	36	55.182
23325	1	3	oz	85	\N	\N
23325	2	1	steak	344	24	58.261
23326	1	3	oz	85	\N	\N
23326	2	1	steak	344	12	50.845
23327	1	3	oz	85	\N	\N
23327	2	1	roast	758	36	215.967
23328	1	3	oz	85	\N	\N
23328	2	1	roast	770	24	204.362
23329	1	3	oz	85	\N	\N
23329	2	1	roast	740	12	247.042
23330	1	3	oz	85	\N	\N
23330	2	1	roast	675	36	104.809
23331	1	3	oz	85	\N	\N
23331	2	1	roast	658	24	96.176
23332	1	3	oz	85	\N	\N
23332	2	1	roast	699	12	121.714
23333	1	3	oz	85	\N	\N
23333	2	1	steak	140	36	31.344
23334	1	3	oz	85	\N	\N
23334	2	1	steak	133	24	32.624
23335	1	3	oz	85	\N	\N
23335	2	1	steak	151	12	25.741
23336	1	3	oz	85	\N	\N
23336	2	1	roast	644	36	107.794
23337	1	3	oz	85	\N	\N
23337	2	1	roast	625	24	114.675
23338	1	3	oz	85	\N	\N
23338	2	1	roast	673	12	91.82
23339	1	3	oz	85	\N	\N
23339	2	1	steak	267	36	34.877
23340	1	3	oz	85	\N	\N
23340	2	1	steak	266	24	36.38
23341	1	3	oz	85	\N	\N
23341	2	1	steak	268	12	33.214
23342	1	3	oz	85	\N	\N
23342	2	1	steak	170	36	22.908
23343	1	3	oz	85	\N	\N
23343	2	1	steak	168	24	21.45
23344	1	3	oz	85	\N	\N
23344	2	1	steak	172	12	26.603
23345	1	3	oz	85	\N	\N
23345	2	1	roast	481	36	90.695
23346	1	3	oz	85	\N	\N
23346	2	1	roast	478	24	100.692
23347	1	3	oz	85	\N	\N
23347	2	1	roast	487	12	70.519
23348	1	3	oz	85	1	\N
23349	1	3	oz	85	\N	\N
23350	1	3	oz	85	\N	\N
23351	1	3	oz	85	\N	\N
23352	1	3	oz	85	\N	\N
23353	1	3	oz	85	\N	\N
23354	1	3	oz	85	\N	\N
23354	2	1	steak	344	36	55.182
23355	1	3	oz	85	\N	\N
23355	2	1	steak	344	24	58.261
23356	1	3	oz	85	\N	\N
23356	2	1	steak	344	12	50.845
23357	1	3	oz	85	\N	\N
23357	2	1	roast	758	36	215.967
23358	1	3	oz	85	\N	\N
23358	2	1	roast	770	24	204.362
23359	1	3	oz	85	\N	\N
23359	2	1	roast	740	12	247.042
23360	1	3	oz	85	\N	\N
23360	2	1	roast	675	36	104.809
23361	1	3	oz	85	\N	\N
23361	2	1	roast	658	24	96.176
23362	1	3	oz	85	\N	\N
23362	2	1	roast	699	12	121.714
23363	1	3	oz	85	\N	\N
23363	2	1	steak	140	36	31.344
23364	1	3	oz	85	\N	\N
23364	2	1	steak	133	24	32.624
23365	1	3	oz	85	\N	\N
23365	2	1	steak	151	12	25.741
23366	1	3	oz	85	\N	\N
23366	2	1	roast	644	36	107.794
23367	1	3	oz	85	\N	\N
23367	2	1	roast	625	24	114.675
23368	1	3	oz	85	\N	\N
23368	2	1	roast	673	12	91.82
23369	1	3	oz	85	\N	\N
23369	2	1	steak	267	36	34.877
23370	1	3	oz	85	\N	\N
23370	2	1	steak	266	24	36.38
23370	3	1	oz	28	\N	\N
23371	1	3	oz	85	\N	\N
23371	2	1	steak	268	12	33.214
23372	1	3	oz	85	\N	\N
23372	2	1	steak	170	36	22.908
23373	1	3	oz	85	\N	\N
23373	2	1	steak	168	24	21.45
23374	1	3	oz	85	\N	\N
23374	2	1	steak	172	12	26.603
23375	1	3	oz	85	\N	\N
23375	2	1	roast	481	36	90.695
23376	1	3	oz	85	\N	\N
23376	2	1	roast	478	24	100.692
23377	1	3	oz	85	\N	\N
23377	2	1	roast	487	12	70.519
23378	1	3	oz	85	\N	\N
23379	1	3	oz	85	\N	\N
23380	1	3	oz	85	\N	\N
23381	1	3	oz	85	\N	\N
23382	1	3	oz	85	\N	\N
23383	1	3	oz	85	\N	\N
23384	1	3	oz	85	\N	\N
23384	2	1	steak	304	12	40.132
23385	1	3	oz	85	\N	\N
23385	2	1	steak	301	24	39.947
23386	1	3	oz	85	\N	\N
23386	2	1	steak	302	36	39.442
23387	1	3	oz	85	\N	\N
23387	2	1	steak	304	12	40.132
23388	1	3	oz	85	\N	\N
23388	2	1	steak	302	36	39.442
23389	1	3	oz	85	\N	\N
23389	2	1	steak	236	24	34.585
23390	1	3	oz	85	\N	\N
23390	2	1	steak	234	12	34.085
23391	1	3	oz	85	\N	\N
23391	2	1	steak	235	36	33.961
23392	1	3	oz	85	\N	\N
23392	2	1	steak	236	24	34.585
23393	1	3	oz	85	\N	\N
23393	2	1	steak	234	12	34.085
23394	1	3	oz	85	\N	\N
23394	2	1	steak	235	36	33.961
23395	1	3	oz	85	\N	\N
23395	2	1	steak	301	24	39.947
23397	1	3	oz	85	1	\N
23398	1	4	oz	114	1	\N
23399	1	3	oz	85	1	\N
23401	1	4	oz	114	1	\N
23402	1	3	oz	85	1	\N
23403	1	4	oz	114	1	\N
23405	1	1	serving	85	1	\N
23406	1	3	oz	85	1	\N
23407	1	4	oz	114	1	\N
23408	1	3	oz	85	1	\N
23409	1	4	oz	113	1	\N
23410	1	3	oz	85	1	\N
23411	1	4	oz	113	1	\N
23412	1	3	oz	85	1	\N
23413	1	4	oz	113	1	\N
23414	1	3	oz	85	\N	\N
23415	1	4	oz	113	1	\N
23416	1	3	oz	85	1	\N
23417	1	4	oz	113	\N	\N
23418	1	4	oz	113	1	\N
23419	1	3	oz	85	\N	\N
23420	1	4	oz	113	\N	\N
23421	1	3	oz	85	1	\N
23422	1	3	oz	85	\N	\N
23423	1	4	oz	113	\N	\N
23424	1	3	oz	85	1	\N
23425	1	4	oz	113	1	\N
23426	1	3	oz	85	\N	\N
23427	1	4	oz	113	\N	\N
23428	1	3	oz	85	1	\N
23429	1	4	oz	113	1	\N
23430	1	3	oz	85	1	\N
23431	1	4	oz	113	1	\N
23432	1	3	oz	85	1	\N
23433	1	3	oz	85	\N	\N
23434	1	4	oz	113	1	\N
23435	1	3	oz	85	\N	\N
23436	1	4	oz	113	\N	\N
23437	1	3	oz	85	1	\N
23438	1	4	oz	113	1	\N
23439	1	3	oz	85	\N	\N
23440	1	4	oz	113	\N	\N
23441	1	4	oz	113	\N	\N
23442	1	3	oz	85	\N	\N
23443	1	4	oz	113	\N	\N
23444	1	3	oz	85	\N	\N
23445	1	4	oz	113	\N	\N
23446	1	3	oz	85	\N	\N
23447	1	4	oz	114	\N	\N
23448	1	3	oz	85	\N	\N
23449	1	4	oz	114	\N	\N
23450	1	3	oz	85	\N	\N
23451	1	4	oz	114	\N	\N
23452	1	3	oz	85	\N	\N
23453	1	4	oz	114	\N	\N
23454	1	3	oz	85	\N	\N
23455	1	4	oz	114	\N	\N
23456	1	3	oz	85	\N	\N
23457	1	4	oz	113	\N	\N
23458	1	3	oz	85	\N	\N
23459	1	4	oz	113	\N	\N
23460	1	3	oz	85	\N	\N
23461	1	4	oz	113	\N	\N
23462	1	3	oz	85	\N	\N
23463	1	4	oz	113	\N	\N
23464	1	3	oz	85	\N	\N
23465	1	3	oz	85	\N	\N
23466	1	4	oz	113	\N	\N
23467	1	4	oz	113	\N	\N
23468	1	3	oz	85	\N	\N
23469	1	4	oz	113	\N	\N
23470	1	3	oz	85	\N	\N
23471	1	4	oz	113	\N	\N
23472	1	4	oz	113	\N	\N
23473	1	3	oz	85	\N	\N
23474	1	3	oz	85	\N	\N
23475	1	3	oz	85	\N	\N
23476	1	3	oz	85	\N	\N
23477	1	4	oz	113	\N	\N
23478	1	3	oz	85	\N	\N
23478	2	1	patty	70	42	2.946
23479	1	3	oz	85	\N	\N
23479	2	1	portion (yield from 1/2 lb raw meat )	139	18	4.947
23480	1	3	oz	85	\N	\N
23481	1	3	oz	85	\N	\N
23482	1	4	oz	114	\N	\N
23483	1	3	oz	85	\N	\N
23484	1	4	oz	114	\N	\N
23485	1	4	oz	114	\N	\N
23490	1	4	oz	114	\N	\N
23491	1	3	oz	85	\N	\N
23494	1	4	oz	114	\N	\N
23495	1	4	oz	114	\N	\N
23496	1	4	oz	114	\N	\N
23497	1	4	oz	114	\N	\N
23498	1	3	oz	85	\N	\N
23499	1	4	oz	114	\N	\N
23501	1	1	patty	68	\N	\N
23502	1	1	oz	28.35	\N	\N
23503	1	1	patty	64	\N	\N
23506	1	1	serving	85	\N	\N
23507	1	3	oz	85	\N	\N
23508	1	1	serving	85	\N	\N
23509	1	3	oz	85	\N	\N
23509	2	1	lb	453.6	\N	\N
23511	1	3	oz	85	\N	\N
23511	2	1	lb	453.6	\N	\N
23513	1	1	oz	28.35	\N	\N
23513	2	1	lb	453.6	\N	\N
23514	1	3	oz ( 1 serving  )	85	\N	\N
23514	2	1	lb	453.6	\N	\N
23515	1	3	oz	85	\N	\N
23515	2	1	lb	453.6	\N	\N
23516	1	3	oz	85	\N	\N
23517	1	3	oz	85	\N	\N
23517	2	1	lb	453.6	\N	\N
23519	1	3	oz	85	\N	\N
23519	2	1	lb	453.6	\N	\N
23521	1	3	oz	85	\N	\N
23521	2	1	lb	453.6	\N	\N
23523	1	3	oz	85	\N	\N
23523	2	1	lb	453.6	\N	\N
23525	1	3	oz	85	\N	\N
23525	2	1	lb	453.6	\N	\N
23528	1	3	oz	85	\N	\N
23528	2	1	lb	453.6	\N	\N
23531	1	3	oz	85	\N	\N
23531	2	1	lb	453.6	\N	\N
23536	1	3	oz	85	\N	\N
23536	2	1	steak	297	18	53.5
23540	1	3	oz	85	\N	\N
23540	2	1	lb	453.6	\N	\N
23541	1	3	oz	85	\N	\N
23541	2	1	lb	453.6	\N	\N
23545	1	3	oz	85	\N	\N
23545	2	1	lb	453.6	\N	\N
23547	1	3	oz	85	\N	\N
23547	2	1	lb	453.6	\N	\N
23549	1	3	oz	85	\N	\N
23549	2	1	lb	453.6	\N	\N
23552	1	3	oz	85	\N	\N
23552	2	1	lb	453.6	\N	\N
23554	1	3	oz	85	\N	\N
23554	2	1	steak	287	51	65.6
23557	1	4	oz	113	\N	\N
23558	1	3	oz	85	\N	\N
23559	1	3	oz	85	\N	\N
23560	1	3	oz	85	\N	\N
23561	1	3	oz	85	\N	\N
23562	1	4	oz	113	\N	\N
23563	1	3	oz	85	\N	\N
23564	1	3	oz	85	\N	\N
23565	1	3	oz	85	\N	\N
23565	2	1	portion ( yield from 1/2 lb raw meat )	154	18	3.087
23566	1	3	oz	85	\N	\N
23567	1	3	oz	85	\N	\N
23568	1	3	oz	85	1	\N
23568	2	1	patty (yield from 1/4 lb raw meat)	77	42	5.205
23569	1	3	oz	85	1	\N
23569	2	1	patty ( yield from 1/4 lb raw meat )	83	18	4.288
23570	1	3	oz	85	\N	\N
23571	1	3	oz	85	\N	\N
23572	1	4	oz	113	\N	\N
23574	1	3	oz	85	\N	\N
23575	1	3	oz	85	\N	\N
23576	1	3	oz	85	\N	\N
23577	1	4	oz	113	\N	\N
23577	2	1	serving (3 oz)	85	\N	\N
23578	1	3	oz	85	\N	\N
23579	1	3	oz	85	\N	\N
23580	1	3	oz	85	\N	\N
23581	1	3	oz	85	\N	\N
23582	1	1	oz	28.35	1	\N
23582	2	1	lb	453.6	1	\N
23583	1	1	oz	28.35	\N	\N
23583	2	1	lb	453.6	\N	\N
23584	1	1	oz	28.35	1	\N
23584	2	1	lb	453.6	1	\N
23585	1	3	oz	85	1	\N
23585	2	1	lb	453.6	\N	\N
23586	1	1	oz	28.35	\N	\N
23586	2	1	lb	453.6	\N	\N
23587	1	1	oz	28.35	1	\N
23587	2	1	lb	453.6	1	\N
23588	1	1	oz	28.35	1	\N
23588	2	1	lb	453.6	1	\N
23589	1	1	oz	28.35	\N	\N
23589	2	1	lb	453.6	\N	\N
23590	1	1	oz	28.35	1	\N
23590	2	1	lb	453.6	1	\N
23591	1	1	oz	28.35	\N	\N
23591	2	1	lb	453.6	\N	\N
23592	1	1	oz	28.35	\N	\N
23592	2	1	lb	453.6	\N	\N
23593	1	1	oz	28.35	\N	\N
23593	2	1	lb	453.6	\N	\N
23594	1	1	oz	28.35	1	\N
23594	2	1	lb	453.6	1	\N
23595	1	1	oz	28.35	\N	\N
23595	2	1	lb	453.6	\N	\N
23596	1	1	oz	28.35	\N	\N
23596	2	1	lb	453.6	\N	\N
23597	1	1	oz	28.35	\N	\N
23597	2	1	lb	453.6	\N	\N
23598	1	1	oz	28.35	1	\N
23598	2	1	lb	453.6	1	\N
23599	1	1	oz	28.35	\N	\N
23599	2	1	lb	453.6	\N	\N
23600	1	1	oz	28.35	1	\N
23600	2	1	lb	453.6	1	\N
23601	1	1	oz	28.35	\N	\N
23601	2	1	lb	453.6	\N	\N
23602	1	1	oz	28.35	1	\N
23602	2	1	lb	453.6	1	\N
23603	1	1	oz	28.35	\N	\N
23603	2	1	lb	453.6	\N	\N
23604	1	1	oz	28.35	1	\N
23604	2	1	lb	453.6	1	\N
23605	1	1	oz	28.35	1	\N
23605	2	1	lb	453.6	1	\N
23606	1	1	oz	28.35	1	\N
23606	2	1	lb	453.6	1	\N
23607	1	3	oz	85	\N	\N
23607	2	1	lb	453.6	\N	\N
23608	1	1	oz	28.35	1	\N
23608	2	1	lb	453.6	1	\N
23609	1	3	oz	85	\N	\N
23609	2	1	lb	453.6	\N	\N
23610	1	1	oz	28.35	1	\N
23610	2	1	lb	453.6	1	\N
23611	1	1	oz	28.35	1	\N
23611	2	1	lb	453.6	1	\N
23612	1	1	oz	28.35	1	\N
23612	2	1	lb	453.6	1	\N
23613	1	1	oz	28.35	\N	\N
23613	2	1	lb	453.6	\N	\N
23614	1	1	oz	28.35	1	\N
23614	2	1	lb	453.6	1	\N
23615	1	1	oz	28.35	\N	\N
23615	2	1	lb	453.6	\N	\N
23616	1	1	oz	28.35	1	\N
23616	2	1	lb	453.6	1	\N
23617	1	1	oz	28.35	1	\N
23617	2	1	lb	453.6	1	\N
23618	1	1	oz	28.35	1	\N
23618	2	1	lb	453.6	1	\N
23619	1	1	oz	28.35	\N	\N
23619	2	1	lb	453.6	\N	\N
23620	1	1	oz	28.35	\N	\N
23620	2	1	lb	453.6	\N	\N
23621	1	1	oz	28.35	\N	\N
23621	2	1	lb	453.6	\N	\N
23622	1	1	oz	28.35	1	\N
23622	2	1	lb	453.6	1	\N
23623	1	1	oz	28.35	\N	\N
23623	2	1	lb	453.6	\N	\N
23624	1	1	oz	28.35	\N	\N
23624	2	1	lb	453.6	\N	\N
23625	1	1	oz	28.35	1	\N
23625	2	1	lb	453.6	1	\N
23626	1	1	oz	28.35	1	\N
23626	2	1	lb	453.6	1	\N
23627	1	3	oz	85	\N	\N
23627	2	1	lb	453.6	\N	\N
23628	1	1	oz	28.35	\N	\N
23628	2	1	lb	453.6	\N	\N
23629	1	1	oz	28.35	1	\N
23629	2	1	lb	453.6	1	\N
23630	1	1	oz	28.35	\N	\N
23630	2	1	lb	453.6	\N	\N
23631	1	1	oz	28.35	1	\N
23631	2	1	lb	453.6	1	\N
23632	1	1	oz	28.35	\N	\N
23632	2	1	lb	453.6	\N	\N
23633	1	1	oz	28.35	1	\N
23633	2	1	lb	453.6	1	\N
23634	1	1	oz	28.35	\N	\N
23634	2	1	lb	453.6	\N	\N
23635	1	1	oz	28.35	\N	\N
23635	2	1	lb	453.6	\N	\N
23636	1	1	oz	28.35	\N	\N
23636	2	1	lb	453.6	\N	\N
23637	1	1	oz	28.35	\N	\N
23637	2	1	lb	453.6	\N	\N
23638	1	1	oz	28.35	1	\N
23638	2	1	lb	453.6	1	\N
23640	1	1	serving	85	\N	\N
23646	1	3	oz	85	\N	\N
23646	2	1	roast	261	19	\N
23647	1	3	oz	85	\N	\N
23647	2	1	roast	591	10	\N
23648	1	3	oz	85	\N	\N
23648	2	1	roast	271	9	\N
23649	1	3	oz	85	\N	\N
23649	2	1	roast (yield from 666 g raw meat)	547	10	\N
23650	1	3	oz	85	\N	\N
23650	2	1	roast	252	10	\N
23651	1	3	oz	85	\N	\N
23651	2	1	roast	1289	20	\N
23652	1	3	oz	85	\N	\N
23652	2	1	roast	1392	10	\N
23653	1	3	oz	85	\N	\N
23653	2	1	roast	1187	10	\N
23654	1	3	oz	85	\N	\N
23654	2	1	steak	383	20	\N
23655	1	3	oz	85	\N	\N
23655	2	1	steak (yield from 467 g raw meat)	379	10	\N
23656	1	3	oz	85	\N	\N
23656	2	1	steak	188	20	\N
23657	1	3	oz	85	\N	\N
23657	2	1	steak	173	10	\N
23658	1	3	oz	85	\N	\N
23658	2	1	steak	434	10	\N
23659	1	3	oz	85	\N	\N
23659	2	1	steak	470	10	\N
23660	1	3	oz	85	\N	\N
23660	2	1	steak (yield from 593 g raw meat)	409	10	\N
25000	1	1	oz	28.35	12	1.588
25001	1	1	oz	28.35	\N	\N
25003	1	1	Roll	23	\N	\N
25004	1	1	bar	55	1	\N
25005	1	1	bar	55	1	\N
25006	1	1	bar	55	1	\N
25007	1	1	bar	28	\N	\N
25008	1	1	bar	55	1	\N
25009	1	1	bar	24	\N	\N
25010	1	1	bar	22	1	\N
25012	1	1	oz	28.35	1	\N
25012	2	1	Bag	28	1	\N
25012	3	1	package	34	1	\N
25013	1	1	oz	28.35	\N	\N
25014	1	1	cup	7.9	52	\N
25014	2	1	bag	87	\N	\N
25015	1	1	bar	80	1	\N
25016	1	1	bar	55	\N	\N
25016	2	1	bar	44	4	6.235
25017	1	1	bar	68	20	2.491
25018	1	1	bar	22	1	\N
25020	1	1	bar	55	6	3.474
25021	1	1	bar	48	\N	\N
25022	1	1	oz	28.35	\N	\N
25023	1	1	oz	28.35	\N	\N
25024	1	1	large	143	\N	\N
25024	2	1	medium	115	\N	\N
25024	3	1	small	62	\N	\N
25025	1	1	oz	28.35	\N	\N
25026	1	1	cup	7.9	52	\N
25026	2	1	bag	87	12	2.428
25027	1	1	oz	28.35	6	1.098
25028	1	1	oz	28.35	\N	\N
25030	1	1	oz	28.35	\N	\N
25031	1	1	bar	50	1	\N
25032	1	1	bar	78	1	\N
25033	1	1	bar	35	1	\N
25034	1	1	bar	47	1	\N
25035	1	1	bar	24	1	\N
25036	1	1	package	20	\N	\N
25037	1	1	oz	28.35	\N	\N
25037	2	1	bag	262	10	140.04
25038	1	1	bar	35	\N	\N
25039	1	1	bar	60	1	\N
25040	1	1	oz	28.35	\N	\N
25041	1	2	bar	40	1	\N
25041	2	1	bar	20	\N	\N
25043	1	1	package	20	\N	\N
25045	1	1	bar	40	1	\N
25046	1	1	oz	28.35	\N	\N
25046	2	1	bag	175	11	6.998
25046	3	6	piece chips	28	\N	\N
25048	1	1	bar	32	\N	\N
25050	1	1	oz	28.35	\N	\N
25050	2	10	chips	17	4	5.276
25050	3	1	bag	105	4	18.509
25051	1	1	bar	68	2	\N
25052	1	1	bar	24	1	\N
25053	1	1	bar	35	1	\N
25054	1	1	bar	35	1	\N
25055	1	1	bar	35	1	\N
25056	1	1	bar	31	1	\N
25059	1	1	cake	9.0	\N	\N
25059	2	2	cakes	18	\N	\N
25060	1	1	serving	28	1	\N
25062	1	1	bar	38	1	\N
25063	1	1	oz	28.35	\N	\N
25063	2	16.5	pieces average	28	\N	\N
25064	1	23	pieces	28	3	0
25064	2	1	bag	227	1	\N
27000	1	1	cup	241	12	4.727
27001	1	1	cup	233	12	23.687
27002	1	1	cup	223	12	29.9
27007	1	1	serving	245	1	\N
27008	1	1	cup	245	1	\N
27009	1	1	cup	245	1	\N
27013	1	0.5	cup	126	1	\N
27013	2	1	serving	126	1	\N
27014	1	0.5	cup	126	1	\N
27014	2	1	serving	126	1	\N
27015	1	0.5	cup serving	126	1	\N
27017	1	1	cup	245	1	\N
27018	1	1	cup	245	1	\N
27019	1	1	cup	245	1	\N
27021	1	1	cup	246	12	4.095
27021	2	1	can	499	12	86.592
27022	1	1	container	305	1	\N
27023	1	1	container	305	1	\N
27027	1	1	serving	32	1	\N
27027	2	2	tbsp	32	1	\N
27028	1	1	serving	32	1	\N
27028	2	2	tbsp	32	1	\N
27029	1	1	serving	32	1	\N
27029	2	2	tbsp	32	1	\N
27030	1	1	serving	32	1	\N
27030	2	2	tbsp	32	1	\N
27032	1	0.5	cup	126	1	\N
27032	2	1	serving	126	1	\N
27033	1	0.5	cup	130	1	\N
27034	1	0.5	cup condensed	124	1	\N
27035	1	1.41	oz dry (half noodle block)	40	1	\N
27042	1	1	cup	254	24	8.794
27042	2	1	can	521	24	5.254
27043	1	1	can	519	7	3.198
27043	2	1	cup	256	7	7.522
27044	1	1	cup	245	24	3.555
27044	2	1	can	516	24	62.237
27045	1	1	cup	245	12	3.298
27045	2	1	can	525	12	6.869
27046	1	2	Tbsp	33	\N	\N
27047	1	2	Tbsp	30	\N	\N
27048	1	2	Tbsp	34	\N	\N
27049	1	2	tablespoons	30	\N	\N
27050	1	2	Tbsp	35	\N	\N
27051	1	0.25	cup	60	\N	\N
27052	1	2	tbsp	30	27	2.681
27052	2	0.5	cup	125	27	4.677
27053	1	2	tbsp	32	4	2.137
27053	2	0.5	cup	124	4	8.096
27054	1	2	tbsp	30	11	2.759
27054	2	0.5	cup	125	11	4.249
27055	1	1	tbsp	18	12	1.233
27055	2	0.5	cup	144	12	7.596
27055	3	1	cup	280	12	11.647
27056	1	1	tbsp	16	12	0.435
27056	2	0.5	cup	148	12	2.189
27056	3	1	cup	291	12	8.104
27057	1	1	tbsp	18	12	0.905
27057	2	0.5	cup	138	12	4.402
27057	3	1	cup	265	12	11.982
27058	1	1	tbsp	17	6	0.958
27058	2	0.5	cup	137	6	4.874
27058	3	1	cup	270	6	2.883
27059	1	1	tbsp	18	10	0.444
27060	1	1	cup	240	3	14.084
27061	1	0.25	cup	58	\N	\N
27061	2	1	cup	230	4	0.289
27061	3	1	jar 12 oz	324	36	\N
27062	1	1	cup	208	10	7.361
27062	2	1	can	527	39	6.932
27063	1	0.25	cup	56	\N	\N
27063	2	1	cup	224	40	4.176
27063	3	1	can	283	79	9.983
27064	1	1	tablespoon	20	3	0.115
27064	2	1	teaspoon	6.5	\N	\N
27065	1	2	tbsp	36	24	\N
27065	2	1	container (9 oz)	259	24	\N
27066	1	1	tsp	5.6	8	0.837
27067	1	0.25	cup	58	\N	\N
27067	2	1	cup	230	5	3.209
27068	1	2	tbsp	36	24	\N
27068	2	1	container (9oz)	259	24	\N
28000	1	1	set	46	1	\N
28001	1	1	pizza	150	1	\N
28002	1	1	pizza	150	1	\N
28003	1	3	pancakes	105	1	\N
28004	1	3	pancakes	105	1	\N
28005	1	3	pancakes	105	1	\N
28006	1	3	pancakes	105	1	\N
28007	1	2	waffles	76	1	\N
28008	1	2	waffles	76	1	\N
28009	1	2	waffles	70	1	\N
28010	1	2	waffles	70	1	\N
28011	1	3	sets	92	1	\N
28012	1	2	waffles	70	1	\N
28013	1	2	waffles	70	1	\N
28014	1	1	waffle	45	1	\N
28015	1	2	waffles	70	1	\N
28015	2	3	sets waffle minis	93	1	\N
28016	1	2	waffles	70	1	\N
28017	1	11	crisps	31	1	\N
28018	1	2	waffles	70	1	\N
28019	1	2	waffles	70	1	\N
28020	1	11	crisps	31	1	\N
28021	1	2	waffles	70	1	\N
28022	1	2	waffles	70	1	\N
28023	1	2	waffles	70	1	\N
28024	1	2	waffles	70	1	\N
28025	1	1	waffle	55	1	\N
28026	1	1	waffle	55	1	\N
28027	1	4	cookies	29	1	\N
28028	1	4	cookies	29	1	\N
28029	1	4	cookies	30	1	\N
28030	1	3	cookies	36	1	\N
28031	1	2	cookies	24	1	\N
28032	1	2	cookies	29	1	\N
28033	1	2	cookies	25	1	\N
28034	1	2	cookies	25	1	\N
28035	1	4	cookies	32	1	\N
28036	1	5	cookies	33	1	\N
28037	1	3	cookies	32	1	\N
28038	1	8	cookies	30	1	\N
28039	1	1	cookie	30	1	\N
28040	1	1	cookie	30	1	\N
28041	1	1	cookie	30	1	\N
28043	1	1	package 1 serving	40	1	\N
28044	1	8	cookies 1 serving	31	1	\N
28044	2	1	package (40 g)	40	1	\N
28045	1	6	cookies 1 serving	30	1	\N
28045	2	1	package (40 g)	40	1	\N
28046	1	8	crackers 1 serving	29	1	\N
28047	1	2	cookies	32	1	\N
28048	1	2	cookies	32	1	\N
28049	1	1	package	39	1	\N
28050	1	1	package	39	1	\N
28051	1	1	package	39	1	\N
28052	1	2	cookies	32	1	\N
28053	1	2	cookies	31	1	\N
28054	1	2	cookies	30	1	\N
28055	1	2	cookies	32	1	\N
28056	1	1	pouch	34	1	\N
28057	1	2	cookies	31	1	\N
28058	1	2	cookies	30	1	\N
28059	1	2	cookies	32	1	\N
28060	1	2	cookies	31	1	\N
28061	1	5	cookies 1 serving	28	1	\N
28061	2	1	package (40 g)	40	1	\N
28062	1	2	cookies	31	1	\N
28064	1	4	crackers	14.0	1	\N
28065	1	17	crackers	15.0	1	\N
28066	1	17	crackers	15.0	1	\N
28067	1	4	crackers	14.0	1	\N
28068	1	4	crackers	14.0	1	\N
28069	1	5	crackers	16	1	\N
28070	1	12	crackers	29	1	\N
28071	1	12	crackers	29	1	\N
28072	1	2	cookies	28	1	\N
28073	1	4	cookies	26	1	\N
28074	1	2	cookies	36	1	\N
28075	1	2	cookies	35	1	\N
28076	1	3	cookies	26	1	\N
28077	1	3	cookies	26	1	\N
28078	1	3	cookies	26	1	\N
28079	1	2	cookies	28	1	\N
28080	1	3	pieces	27	1	\N
28081	1	2	cookies	30	1	\N
28082	1	2	cookies	30	1	\N
28083	1	2	cookies	31	1	\N
28084	1	1	cup	8.0	1	\N
28085	1	4	cookies	27	1	\N
28086	1	3	cookies	29	1	\N
28087	1	3	cookies	31	1	\N
28088	1	3	cookies	31	1	\N
28089	1	1	package	40	1	\N
28089	2	14	cookie	30	\N	\N
28091	1	3	cookies	31	1	\N
28092	1	3	cookies	31	1	\N
28093	1	4	cookies	29	1	\N
28094	1	1	cookie	31	1	\N
28095	1	1	cookie	31	1	\N
28096	1	2	cookies	30	1	\N
28097	1	2	cookies	26	1	\N
28098	1	2	cookies	30	1	\N
28100	1	3	cookies	29	1	\N
28101	1	1	package	37	1	\N
28102	1	1	pouch	25	1	\N
28103	1	1	pouch	25	1	\N
28104	1	1	pouch	25	1	\N
28105	1	1	pouch	25	1	\N
28106	1	4	cookies	28	1	\N
28107	1	5	cookies	33	1	\N
28108	1	6	cookies	29	1	\N
28109	1	2	cookies	29	1	\N
28110	1	1	package	39	1	\N
28111	1	0.125	crust 1 serving (from 9"" shell)	21	1	\N
28111	2	1	shell 1 serving (from 3"" mini shell)	23	1	\N
28112	1	0.125	crust 9"" crust	21	1	\N
28113	1	1	pouch	21	1	\N
28114	1	1	pouch	21	1	\N
28115	1	1	package	21	1	\N
28116	1	1	pouch	20	1	\N
28117	1	1	package	21	1	\N
28118	1	1	pouch	20	1	\N
28119	1	1	pouch	21	1	\N
28120	1	1	pouch	21	1	\N
28121	1	1	package	21	1	\N
28122	1	1	pouch	21	1	\N
28123	1	1	pouch	21	1	\N
28124	1	2	cookies	30	1	\N
28125	1	2	cookies	31	1	\N
28126	1	2	cookies	30	1	\N
28127	1	2	cookies	31	1	\N
28128	1	5	cookies 28 g package	28	1	\N
28128	2	1	package (34 g)	34	1	\N
28129	1	2	cookies	31	1	\N
28130	1	2	cookies	32	1	\N
28131	1	2	cookies	38	1	\N
28132	1	2	cookies	38	1	\N
28133	1	5	crackers	16	1	\N
28134	1	5	crackers	16	1	\N
28135	1	5	crackers	16	1	\N
28136	1	5	crackers	16	1	\N
28137	1	5	crackers	16	1	\N
28138	1	2	crackers	16	1	\N
28139	1	5	crackers	15.0	1	\N
28140	1	5	crackers	15.0	1	\N
28141	1	5	crackers	15.0	1	\N
28142	1	5	crackers	16	1	\N
28143	1	6	crackers	15.0	1	\N
28144	1	5	crackers	14.0	1	\N
28145	1	3	crackers	14.0	1	\N
28146	1	3	crackers	14.0	1	\N
28147	1	3	crackers	14.0	1	\N
28148	1	5	crackers	16	1	\N
28149	1	8	crackers	15.0	1	\N
28150	1	4	cookies	29	1	\N
28151	1	4	cookies	32	1	\N
28152	1	18	cookies	30	1	\N
28153	1	2	cookies	31	1	\N
28154	1	2	cookies	31	1	\N
28155	1	1	waffle	12.0	1	\N
28156	1	1	cone	12.0	1	\N
28157	1	17	crackers	30	1	\N
28158	1	16	crackers	30	1	\N
28159	1	16	crackers	30	1	\N
28160	1	18	crackers	30	1	\N
28161	1	18	crackers	30	1	\N
28162	1	6	tbsp	33	1	\N
28163	1	1	pastry	50	1	\N
28164	1	1	pastry	50	1	\N
28165	1	1	pastry	50	1	\N
28167	1	1	pastry	50	1	\N
28168	1	1	pastry	50	1	\N
28169	1	1	pastry	50	1	\N
28170	1	1	pastry	50	1	\N
28171	1	1	pastry	50	1	\N
28172	1	1	pastry	52	1	\N
28173	1	1	pastry	50	1	\N
28173	2	1	package (2-count)	100	1	\N
28174	1	1	pastry	50	1	\N
28175	1	1	pastry	50	1	\N
28176	1	1	pastry	50	1	\N
28177	1	1	pastry	50	1	\N
28178	1	1	pastry	48	1	\N
28179	1	1	pastry	48	1	\N
28180	1	1	pastry	50	1	\N
28181	1	1	pastry	48	1	\N
28182	1	1	pastry	48	1	\N
28183	1	1	pouch	23	1	\N
28184	1	1	pouch	23	1	\N
28185	1	1	pouch	10.0	1	\N
28186	1	27	chips	30	1	\N
28187	1	30	chips	30	1	\N
28188	1	27	chips	30	1	\N
28189	1	27	chips	30	1	\N
28190	1	24	crackers	30	1	\N
28191	1	24	crackers	30	1	\N
28192	1	1	pastry	50	1	\N
28192	2	1	package (2-count)	100	1	\N
28193	1	1	pastry	50	1	\N
28194	1	6	cookies	29	1	\N
28195	1	4	cookies	30	1	\N
28196	1	6	cookies	29	1	\N
28197	1	5	cookies	32	1	\N
28198	1	2	cookies	38	1	\N
28199	1	2	cookies	38	1	\N
28200	1	6	cookies	29	1	\N
28201	1	6	cookies	29	1	\N
28202	1	4	cookies	29	1	\N
28203	1	4	cookies	32	1	\N
28204	1	6	cookies	29	1	\N
28205	1	2	cookies	31	1	\N
28206	1	2	cookies	32	1	\N
28207	1	2	cookies	31	1	\N
28208	1	2	cookies	38	1	\N
28209	1	2	cookies	38	1	\N
28210	1	4	cookies	28	1	\N
28211	1	8	cookies	30	1	\N
28212	1	6	cookies	32	1	\N
28213	1	3	cookies	29	1	\N
28214	1	3	cookies	29	1	\N
28215	1	9	cookies	32	1	\N
28216	1	5	cookies	33	1	\N
28217	1	2	cookies	28	1	\N
28218	1	2	cookies	29	1	\N
28219	1	2	cookies	29	1	\N
28221	1	3	cookies	32	1	\N
28222	1	4	cookies	30	1	\N
28223	1	4	cookies	26	1	\N
28224	1	4	cookies	31	1	\N
28225	1	3	cookies	29	1	\N
28226	1	3	cookies	32	1	\N
28227	1	3	cookies	28	1	\N
28228	1	3	cookies	28	1	\N
28229	1	8	cookies	30	1	\N
28230	1	1	pouch	21	1	\N
28231	1	9	cookies	32	1	\N
28232	1	5	cookies	28	1	\N
28233	1	8	cookies	30	1	\N
28234	1	25	crackers	30	1	\N
28235	1	25	crackers	30	1	\N
28235	2	1	pouch	21	1	\N
28236	1	13	crackers	30	1	\N
28237	1	25	crackers	30	1	\N
28237	2	1	pouch	21	1	\N
28238	1	25	crackers	30	1	\N
28238	2	1	pouch	21	1	\N
28239	1	25	crackers	30	1	\N
28240	1	25	crackers	30	1	\N
28241	1	1	package	25	1	\N
28242	1	1	pouch	25	1	\N
28243	1	25	crackers	30	1	\N
28244	1	25	crackers	30	1	\N
28245	1	27	crackers	30	1	\N
28246	1	25	crackers	30	1	\N
28247	1	25	crackers	30	1	\N
28248	1	25	crackers	30	1	\N
28249	1	25	crackers	30	1	\N
28250	1	1	pouch	21	1	\N
28251	1	1	package	21	1	\N
28252	1	26	crackers	30	1	\N
28253	1	0.5	cup	30	1	\N
28254	1	0.5	cup 25 crackers	30	1	\N
28255	1	3	crackers	14.0	1	\N
28256	1	1	package	39	1	\N
28257	1	1	package	39	1	\N
28258	1	1	package	39	1	\N
28259	1	11	pancakes	110	1	\N
28260	1	2	waffles	70	1	\N
28261	1	3	cookies	34	1	\N
28262	1	3	cookies	34	1	\N
28263	1	8	crackers	30	1	\N
28264	1	2	cookies	29	1	\N
28265	1	1	package	39	1	\N
28266	1	0.125	crust	21	1	\N
28267	1	2	cookies	31	1	\N
28268	1	1	cone	13.0	1	\N
28269	1	2	cookies	27	1	\N
28270	1	2	cookies	38	1	\N
28271	1	8	cookies	30	1	\N
28272	1	3	cookies	29	1	\N
28273	1	3	cookies	29	1	\N
28274	1	8	crackers	31	1	\N
28275	1	5	cookies	30	1	\N
28276	1	2	cookies	29	1	\N
28277	1	3	cookies	32	1	\N
28278	1	3	cookies	32	1	\N
28279	1	3	cookies	28	1	\N
28280	1	27	crackers	30	1	\N
28280	2	1	package	35	\N	\N
28281	1	29	crackers	30	1	\N
28281	2	1	package	35	\N	\N
28282	1	16	crackers	15.0	1	\N
28283	1	5	crackers	15.0	1	\N
28284	1	5	crackers	15.0	1	\N
28285	1	1	piece	43	7	8.894
28286	1	1	piece	79	4	3.822
28287	1	1	piece	106	1	\N
28288	1	1	piece	98	3	2.268
28289	1	2	cookies	29	1	\N
28290	1	2	cookies	25	1	\N
28291	1	8	cookies 1 serving	31	1	\N
28291	2	1	package (40 g)	40	1	\N
28292	1	4	crackers	14.0	1	\N
28293	1	3	cookies	31	1	\N
28294	1	4	cookies	32	1	\N
28295	1	1	tortilla 1 serving	41	1	\N
28296	1	1	cake 1 serving	27	1	\N
28297	1	1	cake 1 serving	27	1	\N
28298	1	1	brownie 1 serving	36	1	\N
28299	1	1	serving	34	1	\N
28300	1	1	cookie 1 serving	38	1	\N
28301	1	1	serving 3 cookies	29	1	\N
28302	1	1	serving	35	1	\N
28303	1	1	serving 55 pieces	31	1	\N
28304	1	1	serving 2 waffles	70	1	\N
28305	1	1	serving 3 pancakes	105	1	\N
28306	1	1	piece	68	3	29.503
28307	1	1	piece	90	3	9.388
28308	1	5	crackers 1 serving	15	10	0.462
28309	1	2	cookie 1 serving	36	\N	\N
28310	1	1	cookie	11.8	21	4.074
28311	1	3	cookie	29	1	\N
28312	1	1	roll	51	20	12.778
28313	1	1	roll	56	19	7.178
28314	1	1	package	36	1	\N
28315	1	1	slice 1 serving	28	\N	\N
28316	1	1	slice 1 serving	38	\N	\N
28317	1	1	slice 1 serving	38	\N	\N
28318	1	1	slice 1 serving	48	\N	\N
28319	1	0.5	piece bagel 1 serving	43	\N	\N
28320	1	1	muffin 1 serving	57	\N	\N
28321	1	1	piece roll	43	\N	\N
28322	1	1	piece bagel	81	\N	\N
28323	1	0.33	cup 1 serving	41	\N	\N
28324	1	0.25	cup mix 1 serving	38	\N	\N
28325	1	1	serving	31	\N	\N
28326	1	6	cracker 1 serving	43	\N	\N
28327	1	4	cracker 1 serving	14.0	\N	\N
28328	1	1	cookie	34	\N	\N
28329	1	1	cookie	62	\N	\N
28330	1	1	bar	22	\N	\N
28331	1	10	goldfish	5.2	36	0.302
28332	1	3	cookies	44	6	2.684
28333	1	3	cookies	23	3	1.323
28334	1	3	cookies	30	6	2.331
28335	1	3	cookies	44	3	1.102
28336	1	1	slice	34	2	\N
28337	1	1	slice	35	6	4.036
28338	1	1	slice	28	6	1.434
28339	1	1	slice	25	2	\N
28340	1	1	roll	36	1	\N
28341	1	1	roll	78	4	1.531
28342	1	1	roll	69	1	\N
28343	1	1	roll	44	1	\N
28344	1	3	crackers	10.7	2	\N
28345	1	3	crackers	6.1	10	2.298
28346	1	1	waffle	45	216	\N
28346	2	1	box	242	14	21.096
28347	1	1	pancake	48	16	1.32
28347	2	1	box	352	1	\N
28348	1	1	roll	30	9	3.191
28348	2	1	slice	39	2	\N
28349	1	1	cookie	25	\N	\N
28350	1	1	serving	40	\N	\N
28351	1	5	cookie	28	\N	\N
28352	1	1	serving cookie	48	\N	\N
28354	1	1	roll	69	1	\N
28355	1	3	crackers	3.9	4	1.752
28356	1	3	cookies	44	6	2.684
28357	1	3	cookies	45	2	\N
28358	1	3	cookies	30	6	2.331
28359	1	3	cookies	23	3	1.323
28360	1	3	crackers	7.4	3	1.115
28361	1	10	goldfish	5.2	5	0.071
28362	1	10	goldfish	5.3	4	0.275
28363	1	10	goldfish	5.2	10	0.363
28364	1	10	goldfish	5.3	12	0.349
28365	1	10	goldfish	5.1	5	0.224
28366	1	1	slice	34	2	\N
28367	1	3	cookies	44	1	\N
28368	1	1	roll	78	4	1.531
28370	1	1	roll	36	1	\N
28371	1	1	slice	28	6	1.434
28372	1	1	slice	25	2	\N
28373	1	1	roll	44	1	\N
28374	1	1	pancake	48	16	1.32
28374	2	1	box	352	1	\N
28375	1	1	waffle	47	144	\N
28375	2	1	box	255	10	0
28376	1	3	crackers	8.4	2	\N
28377	1	1	serving	51	1	\N
28378	1	1	serving	28	\N	\N
28379	1	1	serving	28	\N	\N
28380	1	1	serving	43	\N	\N
28381	1	1	serving	43	\N	\N
28382	1	1	serving	43	\N	\N
28384	1	1	serving	43	\N	\N
28385	1	1	serving	32	\N	\N
28386	1	1	serving	32	\N	\N
28387	1	1	serving	53	\N	\N
28388	1	1	serving	32	\N	\N
28389	1	1	serving	45	\N	\N
28390	1	1	serving	57	\N	\N
28391	1	1	serving	32	\N	\N
28392	1	1	serving	43	\N	\N
28393	1	1	serving	69	\N	\N
28394	1	1	serving	51	\N	\N
28395	1	1	serving	43	\N	\N
28396	1	1	serving	43	\N	\N
28397	1	1	oz	28.35	\N	\N
28397	2	1	slice regular	26	8	\N
28397	3	1	slice large	41	8	\N
28399	1	1	oz	28.35	\N	\N
28399	2	1	Arrowroot biscuit (include Arrowroot cookie)	4.9	\N	\N
28399	3	1	cracker	2.5	\N	\N
28399	4	1	individual box (2 oz)	57	\N	\N
31001	1	8	fl oz	243	1	\N
31001	2	1	serving	243	1	\N
31002	1	8	fl oz	243	1	\N
31002	2	1	serving	243	\N	\N
31005	1	8	fl oz	243	1	\N
31005	2	1	serving	243	\N	\N
31006	1	8	fl oz	243	1	\N
31006	2	1	serving	243	\N	\N
31007	1	8	fl oz	243	1	\N
31007	2	1	serving	243	\N	\N
31008	1	8	fl oz	243	1	\N
31008	2	1	serving	243	\N	\N
31010	1	8	oz	243	1	\N
31010	2	1	serving	243	1	\N
31011	1	8	fl oz	243	1	\N
31011	2	1	serving	243	1	\N
31012	1	8	fl oz	243	1	\N
31012	2	1	serving	243	\N	\N
31013	1	8	fl oz	243	1	\N
31013	2	1	serving	243	\N	\N
31014	1	1	oz	30	1	\N
31014	2	1	serving	30	1	\N
31015	1	2	tbsp	30	1	\N
31015	2	1	serving	30	1	\N
31016	1	8	fl oz	243	1	\N
31016	2	1	serving	243	\N	\N
31017	1	8	fl oz	243	1	\N
31017	2	1	serving	243	\N	\N
31018	1	8	fl oz	243	1	\N
31018	2	1	serving	243	1	\N
31019	1	0.25	cup	5.0	1	\N
31020	1	0.25	cup	25	1	\N
31021	1	1	cup unprepared	159	10	17.328
31022	1	1	cup prepared	130	10	10.232
31023	1	12	fries	51	16	13.668
31024	1	3	oz	85	1	\N
31025	1	3	oz	85	1	\N
31026	1	3	oz	85	3	0
31027	1	3	oz	85	3	0
31028	1	3	oz	85	1	\N
31029	1	3	oz	85	3	0
31030	1	3	oz	85	1	\N
31031	1	3	oz	85	1	\N
31032	1	1	cup	268	6	1.28
31033	1	2	tablespoon	25	3	1.021
31034	1	0.25	cup drained	34	6	1.666
31035	1	1	cup	269	6	1.342
31036	1	1	cup	229	38	\N
31036	2	1	container	700	38	\N
32000	1	0.333	cup	61	12	3.598
32000	2	1	tbsp	9.0	12	1.278
32001	1	1	cup	247	12	3.726
32002	1	0.333	cup	68	11	3.41
32002	2	1	tbsp	9.6	11	1.578
32003	1	1	cup	238	11	12.852
32004	1	1	serving (3.5 oz)	25	\N	\N
32004	2	1	serving (4 oz)	37	\N	\N
32005	1	1	cup prepared	189	12	22.018
32006	1	1	piece	42	22	2.812
32007	1	1	piece	42	21	1.989
32008	1	1	package	123	11	14.809
32008	2	1	packet	51	11	3.158
32009	1	1	package	122	12	13.391
32009	2	1	packet	44	12	1.611
32010	1	1	package	141	10	50.493
32010	2	1	packet	79	10	29.008
32011	1	1	serving (2 oz)	57	1	\N
32012	1	1	serving 6 rolls	80	1	\N
32013	1	5	pieces 1 serving	145	1	\N
32014	1	1	serving (3.5 oz)	99	1	\N
32015	1	1	serving 4.5 oz	127	1	\N
32016	1	1	serving 1 pouch	61	1	\N
32017	1	1	package	117	7	0.724
32017	2	1	packet	42	7	0.914
32018	1	0.5	cup	70	11	3.86
32018	2	0.33	cup	56	12	3.648
32018	3	1	tbsp	8.8	12	1.242
32019	1	1	cup 1 serving	237	1	\N
32020	1	1	thigh with bone and breading	133	169	\N
32021	1	1	cup	198	20	18.512
32022	1	0.5	package	241	1	\N
32023	1	0.5	package	284	1	\N
32024	1	0.25	cup dry rice mix	57	1	\N
32025	1	3	pieces pierogies	114	\N	\N
32026	1	1	piece turnover 1 serving	127	\N	\N
32027	1	1	piece turnover 1 serving	127	\N	\N
32028	1	1	piece turnover 1 serving	127	\N	\N
32029	1	2	oz (1/4 c dry rice mix and 4 tsp seasoning mix)	57	\N	\N
32030	1	0.5	package	298	1	\N
32031	1	1	patty	63	25	10.083
32032	1	1	biscuit	126	44	\N
32032	2	1	box	526	9	209.174
32034	1	1	patty	64	10	2.297
32035	1	1	patty	72	6	15.37
32036	1	1	biscuit	128	28	\N
32036	2	1	box	595	6	208.207
33862	1	1	scoop	9.6	\N	\N
33863	1	1	scoop	8.7	1	\N
33864	1	1	fl oz	31.4	\N	\N
33865	1	1	fl oz	31.4	\N	\N
33866	1	1	scoop	9.6	\N	\N
33867	1	1	scoop	9.4	\N	\N
33868	1	1	scoop	9.4	\N	\N
33869	1	1	scoop	9.4	\N	\N
33870	1	1	scoop	9.4	\N	\N
33871	1	1	scoop	9.6	\N	\N
33872	1	1	scoop	9.4	\N	\N
33873	1	1	scoop	9.4	\N	\N
33874	1	1	fl oz	30.4	1	\N
33874	2	5	fl oz	152	\N	\N
33875	1	5	fl oz	30	1	\N
33875	2	5	fl oz	152	\N	\N
33876	1	1	fl oz	30.5	1	\N
33876	2	5	fl oz	152	1	\N
33877	1	1	scoop	8.7	1	\N
35009	1	1	strip	45	5	11.656
35015	1	1	cup	157	3	30.331
35139	1	1	oz	28.35	\N	\N
35140	1	1	oz	28.35	\N	\N
35141	1	1	oz	28.35	\N	\N
35142	1	1	piece	152	\N	\N
35143	1	1	serving	197	\N	\N
35144	1	1	serving	308	\N	\N
35145	1	1	serving	411	\N	\N
35146	1	1	serving	303	\N	\N
35147	1	1	piece	186	\N	\N
35183	1	1	oz	28.35	\N	\N
35190	1	1	filet	108	4	55.279
35190	2	1	strip	136	3	35.773
35195	1	1	shoot	19	12	10.152
35196	1	1	leaf	0.9	8	0.306
35197	1	1	cup	65	4	11.537
35198	1	1	pad peeled	19	19	10.177
35198	2	1	pad	61	19	26.011
35199	1	1	pad	7.5	14	4.461
35200	1	1	bulb peeled	12.6	75	10.243
35201	1	1	bulb	14.0	22	9.006
35202	1	1	cup	130	3	0.3
35203	1	1	cup	127	3	0.651
35204	1	1	cup	154	3	1.311
35205	1	1	cup	89	6	5.407
35206	1	1	cup	161	3	0.529
35211	1	0.5	cup	66	1	\N
35211	2	1	piece	102	1	\N
35232	1	1	oz	28.35	\N	\N
35233	1	1	nut	0.4	10	0.067
35233	2	1	oz	28.35	\N	\N
35234	1	1	piece	28	\N	\N
35234	2	1	piece	19	\N	\N
35235	1	1	oz	28.35	\N	\N
35236	1	8	oz	227	\N	\N
35237	1	4	oz	113	\N	\N
35239	1	1	piece	57	\N	\N
36000	1	1	serving	157	12	15.727
36001	1	1	serving	206	1	\N
36002	1	1	serving	164	12	32.165
36003	1	1	cup	124	12	12.305
36003	2	1	serving	180	12	16.496
36004	1	1	piece	32	12	2.003
36004	2	1	serving	289	12	23.072
36005	1	1	piece	35	12	4.14
36005	2	1	serving (3 pieces)	99	12	11.602
36006	1	1	serving	175	1	\N
36007	1	1	serving	184	10	78.75
36008	1	1	piece	35	11	2.177
36008	2	1	serving	212	10	12.33
36009	1	1	cup	144	10	20.121
36009	2	1	serving	236	10	36.866
36010	1	1	piece	41	12	6.157
36010	2	1	serving	141	10	27.838
36011	1	1	serving	176	10	26.356
36012	1	1	serving	245	34	37.69
36012	2	1	piece	31	35	\N
36013	1	1	serving	166	22	22.877
36014	1	1	serving	170	34	54.344
36015	1	1	serving	114	32	27.321
36015	2	1	piece	37	34	\N
36016	1	1	serving	169	4	27.602
36017	1	1	cup	136	41	17.361
36017	2	1	serving	210	44	57.425
36018	1	1	serving	250	12	24.118
36019	1	1	cup	136	8	20.323
36019	2	1	serving	182	12	52.027
36020	1	1	serving	225	10	37.154
36021	1	1	serving	76	12	22.881
36022	1	1	serving	350	12	38.979
36023	1	1	serving	209	12	19.331
36024	1	1	serving	175	10	35.27
36025	1	1	serving	167	10	32.671
36026	1	1	serving	261	10	108.53
36027	1	1	serving	194	12	33.812
36028	1	1	serving	91	12	27.988
36029	1	1	serving	201	12	19.177
36030	1	1	serving	124	12	35.329
36030	2	1	cup	94	7	7.978
36031	1	1	serving	166	12	38.491
36032	1	1	serving	565	11	111.84
36032	2	1	cup	134	11	12.932
36033	1	1	serving	226	24	32.967
36034	1	1	serving	201	44	35.577
36035	1	1	serving	108	34	47.45
36036	1	1	serving	259	34	101.902
36037	1	1	cup	136	8	20.323
36037	2	1	serving	182	12	52.027
36038	1	1	cup	134	11	12.932
36038	2	1	serving	565	11	111.84
36039	1	1	cup	94	7	7.978
36039	2	1	serving	124	12	35.329
36040	1	1	serving	175	10	52.045
36040	2	1	cup	149	7	26.795
36041	1	1	serving	457	24	94.216
36042	1	1	serving	422	12	63.024
36043	1	1	serving	437	6	105.008
36044	1	1	cup	114	8	19.163
36045	1	1	cup	135	8	20.885
36046	1	1	serving	510	24	113.817
36047	1	1	serving	478	12	87.808
36048	1	1	serving	489	6	116.724
36049	1	1	serving serving size varied from 1 to 3 enchiladas	250	8	99.215
36049	2	2	enchilada	241	3	61.749
36049	3	1	enchilada	124	2	\N
36049	4	3	enchilada	343	3	29.963
36050	1	1	serving serving size varied from 1 to 3 enchiladas	244	23	111.605
36050	2	1	enchilada	137	7	39.846
36050	3	2	enchilada	257	11	74.214
36050	4	3	enchilada	365	5	116.895
36051	1	1	serving 1 quesadilla	203	8	31.036
36052	1	1	serving serving size varied on diameter and count of quesadila	205	23	52.325
36052	2	1	quesadilla 8-10 inch diameter	194	20	40.456
36052	3	3	quesadilla 5-6 inch diameter	279	3	72.869
36053	1	1	serving varied from 8 to 10 ravioli per serving	365	6	69.777
36054	1	1	serving varied from 7-9 ravioli per serving	454	12	55.371
36055	1	1	serving serving size varied by diameter and count of raviloi	427	24	82.699
36056	1	1	serving serving size varied from 1 to 3 tamales	302	16	169.644
36056	2	1	tamale	179	8	52.188
36056	3	2	tamale	351	5	76.633
36056	4	3	tamale	550	3	189.025
36057	1	1	serving	339	6	41.043
36058	1	1	serving	304	11	43.185
36059	1	1	serving	301	24	77.073
36060	1	1	serving varied from 2-3 tacos per serving	324	6	64.116
36061	1	1	serving varied from 1 to 3 tacos per serving	281	21	121.083
36061	2	1	taco	134	5	20.106
36061	3	2	taco	279	9	83.044
36061	4	3	taco	389	7	87.2
36401	1	1	cup	141	15	8.943
36403	1	1	piece	89	9	24.087
36404	1	1	serving	283	4	26.577
36404	2	1	cup	253	4	27.398
36405	1	1	serving	461	4	252.32
36405	2	1	cup	146	4	26.257
36406	1	1	serving	590	3	351.038
36406	2	1	cup	157	3	23.812
36407	1	1	serving	653	1	\N
36407	2	1	cup	115	1	\N
36408	1	1	piece	126	10	22.269
36409	1	1	piece	117	11	21.307
36410	1	1	piece	122	9	24.655
36411	1	1	piece	166	8	42.123
36412	1	1	piece	142	8	84.735
36413	1	1	cup	246	6	41.436
36414	1	1	cup	200	11	24.676
36415	1	1	piece	98	5	54.988
36416	1	1	piece	70	5	21.201
36417	1	1	cup	116	23	18.171
36418	1	1	cup	148	23	22.551
36601	1	1	piece	89	12	19.37
36602	1	1	cup	137	23	9.616
36603	1	1	order	574	36	106.707
36604	1	1	serving	103	10	19.746
36604	2	1	piece	36	10	5.538
36605	1	1	serving	149	1	\N
36606	1	1	serving	178	30	20.313
36606	2	1	piece	124	10	44.962
36607	1	1	serving	198	10	25.975
36608	1	1	steak	151	10	16.443
36609	1	1	serving	257	10	90.95
36609	2	1	cup	149	7	13.014
36610	1	1	serving	165	12	50.143
36611	1	1	serving	228	12	12.646
36611	2	1	piece	27	12	2.15
36612	1	1	piece	16	12	2.04
36612	2	1	serving	100	12	22.103
36613	1	1	serving	180	12	9.833
36613	2	1	cup	134	12	13.456
36614	1	1	serving 4 pieces in serving	67	12	6.329
36614	2	1	piece	16	12	1.488
36615	1	1	steak	107	12	10.913
36617	1	1	order	623	37	198.849
36617	2	3	pieces	73	15	40.129
36618	1	1	order	535	38	156.025
36618	2	3	pieces	53	12	14.686
36619	1	1	order	604	37	189.624
36620	1	1	order	601	36	106.128
36621	1	1	order	706	20	170.401
36621	2	3	pieces	55	7	14.531
36622	1	1	order	609	36	131.862
36622	2	3	pieces	42	13	12.855
36623	1	1	order	604	37	123.196
36624	1	1	order	777	10	213.999
36624	2	1	cup	195	10	26.589
36625	1	1	order	741	12	200.503
36625	2	1	cup	136	12	12.282
36626	1	1	order	693	11	165.213
36626	2	1	cup	153	11	15.658
36629	1	1	order	648	9	267.888
36629	2	3	pieces	63	9	25.761
36630	1	1	serving	554	24	93.823
36631	1	1	serving	525	12	79.044
36632	1	1	serving	537	6	49.482
36633	1	1	order	547	12	181.678
42040	1	1	tbsp	20	\N	\N
42040	2	1	tsp	6.7	\N	\N
42055	1	1	tsp	8.0	\N	\N
42074	1	1	bar	78	\N	\N
42116	1	1	tbsp	15.0	\N	\N
42116	2	1	cup	245	\N	\N
42117	1	1	cup, shredded	113	\N	\N
42117	2	1	cubic inch	18	\N	\N
42119	1	1	fl oz	31.5	\N	\N
42119	2	1	bottle NFS	126	\N	\N
42120	1	1	fl oz	31.5	\N	\N
42120	2	1	bottle NFS	126	\N	\N
42128	1	1	cup pieces	138	\N	\N
42128	2	1	cubic inch	20	\N	\N
42129	1	1	cup pieces	138	\N	\N
42129	2	1	cubic inch	14.0	\N	\N
42129	3	1	slice, medium	28	\N	\N
42129	5	1	slice, thick	43	\N	\N
42129	6	1	slice, thin	14.0	\N	\N
42131	1	1	cup	137	\N	\N
42135	1	1	cup	75	\N	\N
42136	1	1	cup	94	\N	\N
42136	2	1	packet	3.0	\N	\N
42137	1	1	tbsp	13.4	\N	\N
42137	2	1	fl oz	26.0	\N	\N
42138	1	1	tbsp	14.6	\N	\N
42138	2	1	cup	231	\N	\N
42139	1	1	oz	28.35	\N	\N
42140	1	1	tbsp	14.0	\N	\N
42140	2	1	cup	216	\N	\N
42141	1	1	fl oz	30.0	\N	\N
42141	2	1	cup	242	\N	\N
42148	1	1	serving 1.63 oz singles bag	46	1	\N
42148	2	1	cup	203	\N	\N
42148	3	1	piece	2.2	\N	\N
42150	1	1	tbsp	15.0	\N	\N
42150	2	1	jar NFS	113	\N	\N
42150	3	1	jar Beech-Nut Stage 2 (4 oz)	113	\N	\N
42151	1	1	tbsp	13.0	\N	\N
42151	2	1	cup	207	\N	\N
42153	1	1	tbsp	16	\N	\N
42153	2	1	cup	249	\N	\N
42155	1	1	cup, diced	132	\N	\N
42155	2	1	cup, shredded	113	\N	\N
42155	3	1	cubic inch	17	\N	\N
42155	4	1	slice (1 oz)	28	\N	\N
42157	1	1	tbsp	17	\N	\N
42157	2	1	cup	264	\N	\N
42158	1	1	tbsp	15.0	\N	\N
42158	2	1	cup	234	\N	\N
42161	1	1	slice	28	1	\N
42161	2	1	cubic inch	14.0	\N	\N
42161	3	1	slice, medium	28	\N	\N
42161	5	1	slice, thick	43	\N	\N
42161	6	1	slice, thin	14.0	\N	\N
42171	1	1	tbsp	16	\N	\N
42171	2	1	cup	260	\N	\N
42173	1	1	cup, cooked	130	\N	\N
42173	2	1	oz	28	\N	\N
42173	3	1	oz cooked, yield	21	\N	\N
42173	4	1	patty, cooked	25	\N	\N
42178	1	1	tbsp	15.0	\N	\N
42178	2	1	cup	240	\N	\N
42179	1	1	frankfurter	57	\N	\N
42179	2	1	cup, sliced	151	\N	\N
42183	1	2	cookie 2011 label	51	\N	\N
42185	1	1	cup	186	\N	\N
42186	1	1	cup	174	\N	\N
42187	1	1	cup	174	\N	\N
42189	1	1	cup	245	\N	\N
42189	2	1	fl oz	30.6	\N	\N
42190	1	2	links 1 NLEA serving	45	2	\N
42190	2	3	links 1 NLEA serving	60	1	\N
42192	1	1	tbsp	17	\N	\N
42192	2	1	cup	265	\N	\N
42193	1	1	tbsp	16	\N	\N
42193	2	1	cup	256	\N	\N
42196	1	1	serving 1.76 oz bar	50	1	\N
42196	2	1	bar fun size	19	1	\N
42196	3	1	serving 5 miniatures	41	1	\N
42204	1	1	cubic inch	4.2	\N	\N
42205	1	1	cubic inch	16	\N	\N
42205	2	1	slice (3/4 oz)	21	\N	\N
42227	1	1	serving 1.31 oz bag	37	1	\N
42227	2	1	serving about 1/4 cup	42	1	\N
42227	3	1	cup	195	\N	\N
42227	4	1	piece	3.4	\N	\N
42230	1	1	tbsp	17	\N	\N
42230	2	1	cup	269	\N	\N
42231	1	1	tbsp	13.6	\N	\N
42231	2	1	cup	218	\N	\N
42235	1	4	oz	113	\N	\N
42235	2	1	cup	227	\N	\N
42236	1	0.75	cup (1 NLEA serving)	30	\N	\N
42237	1	2	biscuits (1 NLEA serving)	35	1	\N
42237	2	1	cup	57	\N	\N
42240	1	0.75	cup (1 NLEA serving)	32	1	\N
42256	1	1	tablespoon	14.0	\N	\N
42258	1	1	slice 1 oz	28	\N	\N
42259	1	1	cup	8.0	\N	\N
42259	2	1	oz	28.35	\N	\N
42261	1	0.75	cup (1 NLEA serving)	52	1	\N
42265	1	0.75	cup (1 NLEA serving)	55	1	\N
42266	1	1	fl oz	30.8	\N	\N
42266	3	1	bottle NFS	246	\N	\N
42267	1	1	fl oz	30.8	\N	\N
42267	3	1	bottle NFS	246	\N	\N
42270	1	1	cup	249	\N	\N
42270	2	1	fl oz	31.1	\N	\N
42270	3	1	drink box (8.45 fl oz)	263	\N	\N
42272	1	1	oz	28.35	\N	\N
42278	1	1	cup	230	\N	\N
42278	2	1	tbsp	14.4	\N	\N
42278	3	1	jar Earth's Best (4.5 oz)	128	\N	\N
42279	1	1	cup	230	\N	\N
42279	2	1	tbsp	14.4	\N	\N
42279	3	1	jar Earth's Best (4.5 oz)	128	\N	\N
42280	1	1	cup, sliced	143	\N	\N
42281	1	1	oz	28.35	\N	\N
42283	1	1	cup	34	\N	\N
42283	2	10	chips	12.0	\N	\N
42284	1	1	cookie	1.7	\N	\N
42285	1	1	tbsp	3.7	\N	\N
42286	1	1	tbsp	14.0	\N	\N
42286	2	1	jar Gerber Second Food (4 oz)	113	\N	\N
42289	1	1	tbsp	14.0	\N	\N
42289	2	1	cup	224	\N	\N
42289	3	1	teaspoon	4.5	\N	\N
42290	1	1	cup	247	\N	\N
42290	2	1	fl oz	30.9	\N	\N
42291	1	1	tbsp	16	\N	\N
42297	1	1	cup (1 NLEA serving)	59	\N	\N
42303	1	1	cup, shredded	113	\N	\N
42303	2	1	cubic inch	18	\N	\N
42303	3	1	slice	28	\N	\N
42304	1	1	cup, shredded	113	\N	\N
42307	1	1	tablespoon	14.0	\N	\N
42309	1	1	tablespoon	14.0	\N	\N
42316	1	1	oz	28.35	\N	\N
43004	1	1	tbsp	15.0	\N	\N
43004	2	1	jar NFS	113	\N	\N
43004	3	1	jar Beech-Nut Stage 2 (4 oz)	113	\N	\N
43004	4	1	jar Heinz Strained-2 (4.25 oz)	120	\N	\N
43006	1	1	tbsp	15.0	\N	\N
43006	2	1	jar NFS	113	\N	\N
43006	3	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
43007	1	1	tbsp	15.0	\N	\N
43007	2	1	jar NFS	170	\N	\N
43007	3	1	jar Heinz Junior-3 (6 oz)	170	\N	\N
43008	1	1	tbsp	16	\N	\N
43008	2	1	jar, Gerber (4 oz)	113	\N	\N
43008	3	1	jar NFS	113	\N	\N
43008	4	1	jar Beech-Nut Stage 2 (4 oz)	113	\N	\N
43015	1	1	tbsp	14.7	\N	\N
43015	2	1	cup	235	\N	\N
43015	3	1	serving (2 tbsp)	30	\N	\N
43016	1	1	tbsp	16	\N	\N
43016	2	1	cup	250	\N	\N
43017	1	1	tbsp	15	\N	\N
43017	2	1	cup	245	\N	\N
43019	1	1	tbsp	16	\N	\N
43019	2	1	cup	250	\N	\N
43020	1	1	tbsp	15	\N	\N
43020	2	1	cup	245	\N	\N
43021	1	1	tbsp	15.0	\N	\N
43021	2	1	cup	240	\N	\N
43026	1	1	cup	240	\N	\N
43026	2	1	tbsp	15.0	\N	\N
43027	1	1	cup	300	\N	\N
43027	2	1	tbsp	19	\N	\N
43028	1	1	cup	224	\N	\N
43028	2	1	tbsp	14.0	\N	\N
43031	1	1	piece	14.0	\N	\N
43046	1	1	piece	14.0	\N	\N
43057	1	1	cup	182	\N	\N
43057	2	1	piece	5.0	\N	\N
43058	1	1	piece	3.0	\N	\N
43060	1	1	piece	2.0	\N	\N
43075	1	1	fl oz	31.2	\N	\N
43075	2	1	cup (8 fl oz)	250	\N	\N
43078	1	1	tbsp	7.0	\N	\N
43078	2	1	envelope	21	\N	\N
43098	1	1	serving	85	1	\N
43098	2	1	cup	264	\N	\N
43100	1	1	bar	43	\N	\N
43109	1	1	large	143	\N	\N
43109	2	1	medium	115	\N	\N
43109	3	1	small	62	\N	\N
43112	1	1	cup	253	\N	\N
43114	1	1	cup	140	\N	\N
43125	1	1	cup	240	\N	\N
43128	1	1	cup	168	\N	\N
43130	1	1	cup, sliced	140	\N	\N
43130	2	1	frankfurter	70	\N	\N
43131	1	1	slice, thin	14.0	\N	\N
43132	1	1	cup	144	\N	\N
43134	1	1	fillet	85	\N	\N
43135	1	1	tbsp	15.0	\N	\N
43137	1	1	slice	56	\N	\N
43142	1	1	cup	150	\N	\N
43143	1	1	cup	150	\N	\N
43144	1	1	cup	128	\N	\N
43146	1	1	cup	136	\N	\N
43154	1	1	tsp	4.9	\N	\N
43154	2	1	fl oz	29.0	\N	\N
43155	1	1	fl oz	29.5	\N	\N
43155	2	1	serving 5 fl oz	148	\N	\N
43158	1	1	serving 1 packet	1.0	25	0.099
43158	2	1	serving 1 packet SUGAR TWIN	0.8	4	\N
43205	1	1	tbsp	7.4	\N	\N
43205	2	1	envelope	37	\N	\N
43212	1	1	tbsp	7.0	\N	\N
43214	1	1	cup	80	\N	\N
43215	1	1	tablespoon	15.0	\N	\N
43215	2	1	serving (2 tbsp)	30	\N	\N
43216	1	1	cup	196	\N	\N
43216	2	1	tsp	4.2	\N	\N
43216	3	1	individual packet	3.0	\N	\N
43217	1	1	cup	245	\N	\N
43218	1	0.67	cup (1 NLEA serving)	55	\N	\N
43241	1	1	cup	122	\N	\N
43245	1	1	cup (1 NLEA serving)	55	\N	\N
43260	1	1	tbsp	5.6	\N	\N
43260	2	1	envelope	20	\N	\N
43261	1	1	container (6 oz)	170	\N	\N
43261	2	1	container (4.4 oz)	125	\N	\N
43261	3	1	cup (8 fl oz)	245	\N	\N
43261	4	1	container (8 oz)	227	\N	\N
43268	1	1	cup	80	\N	\N
43273	1	4	oz	113	\N	\N
43273	2	1	cup	226	\N	\N
43274	1	1	tbsp	15.0	\N	\N
43274	2	1	cup	240	\N	\N
43274	3	1	tbsp, whipped	10.0	\N	\N
43275	1	1	cup, diced	140	\N	\N
43275	2	1	cup, shredded	113	\N	\N
43275	3	1	cubic inch	18	\N	\N
43275	4	1	slice (3/4 oz)	21	\N	\N
43276	1	1	oz	28.35	\N	\N
43276	2	1	cup	240	\N	\N
43278	1	1	slice	21	\N	\N
43278	2	1	cubic inch	18	\N	\N
43278	3	1	cup	224	\N	\N
43282	1	1	oz	28.35	\N	\N
43282	2	1	lb	453.0	\N	\N
43283	1	1	cup, chopped or diced	140	\N	\N
43285	1	1	oz	28.35	\N	\N
43287	1	1	cup, chopped or diced	140	\N	\N
43297	1	1	cup	22	\N	\N
43299	1	1	cup	225	\N	\N
43311	1	1	cup	180	\N	\N
43312	1	1	cup	182	\N	\N
43325	1	1	oz, boneless	28.35	\N	\N
43325	2	1	cubic inch, boneless	17	\N	\N
43326	1	1	oz, boneless	28.35	\N	\N
43326	2	1	cubic inch, boneless	17	\N	\N
43327	1	1	oz	28.35	\N	\N
43327	2	1	lb	453.0	\N	\N
43329	1	1	tbsp	14.5	\N	\N
43329	2	1	cup	232	\N	\N
43331	1	1	tbsp	15.0	\N	\N
43331	2	1	cup	240	\N	\N
43340	1	1	cup, grated	100	\N	\N
43340	2	1	tbsp	5.0	\N	\N
43345	1	1	tsp	2.0	\N	\N
43346	1	1	fl oz	29.8	\N	\N
43346	4	1	bar	74	\N	\N
43352	1	4	oz	113	\N	\N
43352	2	1	cup	226	\N	\N
43355	1	1	tbsp	14.0	\N	\N
43355	2	1	cup	224	\N	\N
43364	1	1	cup	26	\N	\N
43364	2	1	bag, single serving	28	\N	\N
43364	3	10	chips	18	\N	\N
43365	1	1	cup	242	\N	\N
43365	2	1	fl oz	30.2	\N	\N
43366	1	1	oz with bone, cooked (yield after bone removed)	19	\N	\N
43366	2	1	cubic inch, boneless	17	\N	\N
43367	1	1	oz with bone, cooked (yield after bone removed)	21	\N	\N
43367	2	1	cubic inch, boneless	17	\N	\N
43369	1	1	cup	244	\N	\N
43369	2	1	fl oz	30.5	\N	\N
43373	1	1	tbsp	16	\N	\N
43373	2	1	jar NFS	170	\N	\N
43373	4	1	jar Beech-Nut Table Time (6 oz)	170	\N	\N
43378	1	1	slice cooked	8.0	157	\N
43379	1	1	cup, diced	140	\N	\N
43379	2	1	cup, shredded	113	\N	\N
43379	3	1	cubic inch	18	\N	\N
43379	4	1	slice (3/4 oz)	21	\N	\N
43382	1	1	cup	253	\N	\N
43382	2	1	fl oz	31.6	\N	\N
43384	1	1	cup pieces	138	\N	\N
43384	2	1	slice, medium	28	\N	\N
43384	4	1	slice, thick	43	\N	\N
43384	5	1	slice, thin	14.0	\N	\N
43387	1	1	cup	144	\N	\N
43390	1	3	oz, boneless	85	\N	\N
43390	2	1	medium slice (approx 3"" x 2"" x 1/4"")	28	\N	\N
43390	3	1	thick slice (approx 3"" x 2"" x 3/8"")	42	\N	\N
43391	1	1	medium slice (approx 3"" x 2"" x 1/4"")	28	\N	\N
43391	2	1	thick slice (approx 3"" x 2"" x 3/8"")	42	\N	\N
43393	1	1.25	cup (1 NLEA serving)	59	\N	\N
43396	1	4	oz	113	\N	\N
43396	2	1	cup	226	\N	\N
43398	1	1	cup, diced	140	\N	\N
43398	2	1	cup, shredded	113	\N	\N
43398	3	1	cubic inch	18	\N	\N
43398	4	1	slice	21	\N	\N
43401	1	1	tsp dry	1.7	\N	\N
43404	1	1	cup (8 fl oz)	240	\N	\N
43404	2	1	fl oz	30.0	\N	\N
43405	1	1	slice	28	\N	\N
43405	2	1	cubic inch	15.0	\N	\N
43405	3	1	cup, shredded	108	\N	\N
43405	4	1	cup, diced	132	\N	\N
43406	1	1	tsp	6.0	\N	\N
43408	1	1	fl oz	31.2	\N	\N
43408	2	1	bottle Earth's Best (4.2 fl oz)	131	\N	\N
43408	3	1	bottle Heinz Strained (4 fl oz)	125	\N	\N
43408	4	1	bottle Gerber First Food (4 fl oz)	125	\N	\N
43408	5	1	bottle Beech-Nut Stage I (4 fl oz)	125	\N	\N
43408	6	1	bottle NFS	125	\N	\N
43410	1	1	cup, diced	130	\N	\N
43410	2	1	cup pieces	168	\N	\N
43410	3	1	piece	36	\N	\N
43417	1	1	jar NFS	179	\N	\N
43432	1	1	tbsp	16	\N	\N
43441	1	1	medium (2-1/2"" dia)	36	\N	\N
43441	2	1	roll (pan, dinner, or small roll) (2"" square, 2"" high)	28	\N	\N
43447	1	1	cup, crushed	88	\N	\N
43447	2	1	bag, single serving	28	\N	\N
43447	3	10	chips	18	\N	\N
43449	1	1	cup	253	\N	\N
43450	1	2.5	oz	71	1	\N
43476	1	1	cup	262	\N	\N
43479	1	1	fl oz	29.1	\N	\N
43483	1	1	cup	21	\N	\N
43495	1	1	cup (1 NLEA serving)	50	1	\N
43497	1	1	cup	58	\N	\N
43506	1	1	bar	54	\N	\N
43507	1	1	frankfurter	57	\N	\N
43507	2	1	cup, sliced	151	\N	\N
43514	1	1	serving 1.75 fl oz pop	55	1	\N
43523	1	1	tbsp	15.0	\N	\N
43523	2	1	jar NFS	113	\N	\N
43523	3	1	jar Gerber Second Food (4 oz)	113	\N	\N
43523	4	1	jar Beech-Nut Stage 2 (4 oz)	113	\N	\N
43523	5	1	jar Heinz Strained-2 (4.25 oz)	120	\N	\N
43528	1	1	cup	252	\N	\N
43528	2	1	fl oz	31.5	\N	\N
43529	1	1	tbsp	2.5	\N	\N
43535	1	1	fl oz	31.2	\N	\N
43535	2	1	bottle Heinz Strained (4 fl oz)	125	\N	\N
43535	3	1	bottle NFS	125	\N	\N
43535	4	1	bottle Beech-Nut Stage 2 (4 fl oz)	125	\N	\N
43535	5	1	bottle Gerber Second Foods (4 fl oz)	125	\N	\N
43536	1	1	tbsp	15.0	\N	\N
43536	2	1	jar NFS	113	\N	\N
43536	3	1	jar Gerber Second Food (4 oz)	113	\N	\N
43536	4	1	jar Beech-Nut Stage 2 (4 oz)	113	\N	\N
43536	5	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
43537	1	1	tbsp	15.0	\N	\N
43537	2	1	jar NFS	113	\N	\N
43537	3	1	jar Heinz Strained-2 (4 oz)	113	\N	\N
43539	1	1	tbsp	15.0	\N	\N
43539	2	1	jar NFS	113	\N	\N
43539	3	1	jar Gerber Second Food (4 oz)	113	\N	\N
43539	4	1	jar Beech-Nut Stage 2 (4 oz)	113	\N	\N
43539	5	1	jar Heinz Strained-2 (4.25 oz)	120	\N	\N
43541	1	1	cup	148	\N	\N
43541	2	1	cubic inch	10.2	\N	\N
43543	1	1	cup	244	\N	\N
43543	2	1	fl oz	30.5	\N	\N
43544	1	1	serving	15.0	\N	\N
43546	1	1	tbsp	15.0	\N	\N
43546	2	1	jar NFS	113	\N	\N
43546	3	1	jar Beech-Nut Baby's First (2.5 oz)	71	\N	\N
43546	4	1	jar Beech-Nut Stage I (4 oz)	113	\N	\N
43546	5	1	jar Gerber First Foods (2.5 oz)	71	\N	\N
43546	6	1	jar Earth's Best (4.5 oz)	128	\N	\N
43546	7	1	jar Heinz Beginner-1 (2.5 oz)	71	\N	\N
43550	1	1	tbsp	15.0	\N	\N
43550	2	1	jar NFS	113	\N	\N
43550	3	1	jar Gerber Second Food (4 oz)	113	\N	\N
43566	1	1	cup, crushed	63	\N	\N
43566	2	10	chips	16	\N	\N
43570	1	0.75	cup (1 NLEA serving)	30	1	\N
43572	1	1	oz	28.35	\N	\N
43585	1	1	tbsp	15.0	\N	\N
43589	1	1	slice (1 oz)	28	\N	\N
43589	2	1	cubic inch	15.0	\N	\N
43589	3	1	cup, shredded	108	\N	\N
43589	4	1	cup, diced	132	\N	\N
43595	1	1	oz	28.35	\N	\N
43595	2	1	bar	37	\N	\N
43597	1	1	cup, diced	132	\N	\N
43597	2	1	cup, shredded	113	\N	\N
43597	3	1	cubic inch	18	\N	\N
43597	4	1	slice (1 oz)	28	\N	\N
43598	1	1	tbsp	15.0	\N	\N
43598	2	1	cup	239	\N	\N
44005	1	1	tablespoon	14.0	\N	\N
44005	2	1	teaspoon	4.5	\N	\N
44018	1	1	serving	0.1	\N	\N
44048	1	1	oz	28.35	\N	\N
44061	1	1	serving	9.9	\N	\N
44061	2	1	package 1.4 oz box, 4 servings	40	\N	\N
44110	1	1	tbsp	19	\N	\N
44110	2	1	cup	300	\N	\N
44158	1	1	serving	151	1	\N
44158	2	1	cup	262	\N	\N
44203	1	1	fl oz	36.0	\N	\N
44203	2	1	serving 2 fl oz	71	1	\N
44203	3	1	can 10 fl oz	355	2	\N
44258	1	1	serving	9.9	1	\N
44258	2	1	package	40	1	\N
44259	1	1	serving	113	\N	\N
44259	2	1	cup	260	\N	\N
44260	1	1	serving	8.0	1	\N
44260	2	1	package 4 servings	32	1	\N
80200	1	1	leg	45	\N	\N
83110	1	1	piece (5-1/2"" x 1-1/2"" x 1/2"")	80	\N	\N
83110	2	1	cubic inch, boneless	17	\N	\N
83110	3	1	cup, cooked	136	\N	\N
90240	1	3	oz	85	\N	\N
90480	1	1	serving	21	\N	\N
90560	1	3	oz	85	\N	\N
93600	1	3	oz	85	\N	\N
\.


--
-- Name: dataderivationcode dataderivationcode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dataderivationcode
    ADD CONSTRAINT dataderivationcode_pkey PRIMARY KEY (derivationcode);


--
-- Name: fooddescription fooddescription_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fooddescription
    ADD CONSTRAINT fooddescription_pkey PRIMARY KEY (ndbnumber);


--
-- Name: foodgroupdescription foodgroupdescription_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.foodgroupdescription
    ADD CONSTRAINT foodgroupdescription_pkey PRIMARY KEY (foodgroupcode);


--
-- Name: footnote footnote_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footnote
    ADD CONSTRAINT footnote_pkey PRIMARY KEY (ndbnumber);


--
-- Name: langualfactor langualfactor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.langualfactor
    ADD CONSTRAINT langualfactor_pkey PRIMARY KEY (nutdbnumber);


--
-- Name: langualfactordescription langualfactordescription_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.langualfactordescription
    ADD CONSTRAINT langualfactordescription_pkey PRIMARY KEY (factorcode);


--
-- Name: nutrientdata nutrientdata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nutrientdata
    ADD CONSTRAINT nutrientdata_pkey PRIMARY KEY (ndbnumber);


--
-- Name: nutrientdefinition nutrientdefinition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nutrientdefinition
    ADD CONSTRAINT nutrientdefinition_pkey PRIMARY KEY (nutrientnumber);


--
-- Name: sourcecode sourcecode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sourcecode
    ADD CONSTRAINT sourcecode_pkey PRIMARY KEY (sourcecode);


--
-- Name: sourcesofdatalink sourcesofdatalink_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sourcesofdatalink
    ADD CONSTRAINT sourcesofdatalink_pkey PRIMARY KEY (ndbnumber);


--
-- PostgreSQL database dump complete
--

