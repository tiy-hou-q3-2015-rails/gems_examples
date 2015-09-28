--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: movies; Type: TABLE; Schema: public; Owner: jwo; Tablespace: 
--

CREATE TABLE movies (
    id integer NOT NULL,
    title character varying,
    photo_id character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE movies OWNER TO jwo;

--
-- Name: movies_id_seq; Type: SEQUENCE; Schema: public; Owner: jwo
--

CREATE SEQUENCE movies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE movies_id_seq OWNER TO jwo;

--
-- Name: movies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jwo
--

ALTER SEQUENCE movies_id_seq OWNED BY movies.id;


--
-- Name: refile_attachments; Type: TABLE; Schema: public; Owner: jwo; Tablespace: 
--

CREATE TABLE refile_attachments (
    id integer NOT NULL,
    namespace character varying NOT NULL
);


ALTER TABLE refile_attachments OWNER TO jwo;

--
-- Name: refile_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: jwo
--

CREATE SEQUENCE refile_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE refile_attachments_id_seq OWNER TO jwo;

--
-- Name: refile_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jwo
--

ALTER SEQUENCE refile_attachments_id_seq OWNED BY refile_attachments.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: jwo; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO jwo;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jwo
--

ALTER TABLE ONLY movies ALTER COLUMN id SET DEFAULT nextval('movies_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jwo
--

ALTER TABLE ONLY refile_attachments ALTER COLUMN id SET DEFAULT nextval('refile_attachments_id_seq'::regclass);


--
-- Name: 296369; Type: BLOB; Schema: -; Owner: jwo
--

SELECT pg_catalog.lo_create('296369');


ALTER LARGE OBJECT 296369 OWNER TO jwo;

--
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: jwo
--

COPY movies (id, title, photo_id, created_at, updated_at) FROM stdin;
1	Hotel Transelvania 2	296369	2015-09-28 17:10:11.33507	2015-09-28 17:10:11.33507
\.


--
-- Name: movies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jwo
--

SELECT pg_catalog.setval('movies_id_seq', 1, true);


--
-- Data for Name: refile_attachments; Type: TABLE DATA; Schema: public; Owner: jwo
--

COPY refile_attachments (id, namespace) FROM stdin;
296369	default
\.


--
-- Name: refile_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jwo
--

SELECT pg_catalog.setval('refile_attachments_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: jwo
--

COPY schema_migrations (version) FROM stdin;
20150928170112
20150928170222
\.


--
-- Data for Name: BLOBS; Type: BLOBS; Schema: -; Owner: 
--

SET search_path = pg_catalog;

BEGIN;

SELECT pg_catalog.lo_open('296369', 131072);
SELECT pg_catalog.lowrite(0, '\xffd8ffe000104a46494600010100000100010000ffe20c584943435f50524f46494c4500010100000c484c696e6f021000006d6e74725247422058595a2007ce00020009000600310000616373704d5346540000000049454320735247420000000000000000000000010000f6d6000100000000d32d4850202000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001163707274000001500000003364657363000001840000006c77747074000001f000000014626b707400000204000000147258595a00000218000000146758595a0000022c000000146258595a0000024000000014646d6e640000025400000070646d6464000002c400000088767565640000034c0000008676696577000003d4000000246c756d69000003f8000000146d6561730000040c0000002474656368000004300000000c725452430000043c0000080c675452430000043c0000080c625452430000043c0000080c7465787400000000436f70797269676874202863292031393938204865776c6574742d5061636b61726420436f6d70616e790000646573630000000000000012735247422049454336313936362d322e31000000000000000000000012735247422049454336313936362d322e31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058595a20000000000000f35100010000000116cc58595a200000000000000000000000000000000058595a200000000000006fa2000038f50000039058595a2000000000000062990000b785000018da58595a2000000000000024a000000f840000b6cf64657363000000000000001649454320687474703a2f2f7777772e6965632e636800000000000000000000001649454320687474703a2f2f7777772e6965632e63680000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000064657363000000000000002e4945432036313936362d322e312044656661756c742052474220636f6c6f7572207370616365202d207352474200000000000000000000002e4945432036313936362d322e312044656661756c742052474220636f6c6f7572207370616365202d20735247420000000000000000000000000000000000000000000064657363000000000000002c5265666572656e63652056696577696e6720436f6e646974696f6e20696e2049454336313936362d322e3100000000000000000000002c5265666572656e63652056696577696e6720436f6e646974696f6e20696e2049454336313936362d322e31000000000000000000000000000000000000000000000000000076696577000000000013a4fe00145f2e0010cf140003edcc0004130b00035c9e0000000158595a2000000000004c09560050000000571fe76d6561730000000000000001000000000000000000000000000000000000028f0000000273696720000000004352542063757276000000000000040000000005000a000f00140019001e00230028002d00320037003b00400045004a004f00540059005e00630068006d00720077007c00810086008b00900095009a009f00a400a900ae00b200b700bc00c100c600cb00d000d500db00e000e500eb00f000f600fb01010107010d01130119011f0125012b01320138013e0145014c0152015901600167016e0175017c0183018b0192019a01a101a901b101b901c101c901d101d901e101e901f201fa0203020c0214021d0226022f02380241024b0254025d02670271027a0284028e029802a202ac02b602c102cb02d502e002eb02f50300030b03160321032d03380343034f035a03660372037e038a039603a203ae03ba03c703d303e003ec03f9040604130420042d043b0448045504630471047e048c049a04a804b604c404d304e104f004fe050d051c052b053a05490558056705770586059605a605b505c505d505e505f6060606160627063706480659066a067b068c069d06af06c006d106e306f507070719072b073d074f076107740786079907ac07bf07d207e507f8080b081f08320846085a086e0882089608aa08be08d208e708fb09100925093a094f09640979098f09a409ba09cf09e509fb0a110a270a3d0a540a6a0a810a980aae0ac50adc0af30b0b0b220b390b510b690b800b980bb00bc80be10bf90c120c2a0c430c5c0c750c8e0ca70cc00cd90cf30d0d0d260d400d5a0d740d8e0da90dc30dde0df80e130e2e0e490e640e7f0e9b0eb60ed20eee0f090f250f410f5e0f7a0f960fb30fcf0fec1009102610431061107e109b10b910d710f511131131114f116d118c11aa11c911e81207122612451264128412a312c312e31303132313431363138313a413c513e5140614271449146a148b14ad14ce14f01512153415561578159b15bd15e0160316261649166c168f16b216d616fa171d17411765178917ae17d217f7181b18401865188a18af18d518fa19201945196b199119b719dd1a041a2a1a511a771a9e1ac51aec1b141b3b1b631b8a1bb21bda1c021c2a1c521c7b1ca31ccc1cf51d1e1d471d701d991dc31dec1e161e401e6a1e941ebe1ee91f131f3e1f691f941fbf1fea20152041206c209820c420f0211c2148217521a121ce21fb22272255228222af22dd230a23382366239423c223f0241f244d247c24ab24da250925382568259725c725f726272657268726b726e827182749277a27ab27dc280d283f287128a228d429062938296b299d29d02a022a352a682a9b2acf2b022b362b692b9d2bd12c052c392c6e2ca22cd72d0c2d412d762dab2de12e162e4c2e822eb72eee2f242f5a2f912fc72ffe3035306c30a430db3112314a318231ba31f2322a3263329b32d4330d3346337f33b833f1342b3465349e34d83513354d358735c235fd3637367236ae36e937243760379c37d738143850388c38c839053942397f39bc39f93a363a743ab23aef3b2d3b6b3baa3be83c273c653ca43ce33d223d613da13de03e203e603ea03ee03f213f613fa23fe24023406440a640e74129416a41ac41ee4230427242b542f7433a437d43c044034447448a44ce45124555459a45de4622466746ab46f04735477b47c04805484b489148d7491d496349a949f04a374a7d4ac44b0c4b534b9a4be24c2a4c724cba4d024d4a4d934ddc4e254e6e4eb74f004f494f934fdd5027507150bb51065150519b51e65231527c52c75313535f53aa53f65442548f54db5528557555c2560f565c56a956f75744579257e0582f587d58cb591a596959b85a075a565aa65af55b455b955be55c355c865cd65d275d785dc95e1a5e6c5ebd5f0f5f615fb36005605760aa60fc614f61a261f56249629c62f06343639763eb6440649464e9653d659265e7663d669266e8673d679367e9683f689668ec6943699a69f16a486a9f6af76b4f6ba76bff6c576caf6d086d606db96e126e6b6ec46f1e6f786fd1702b708670e0713a719571f0724b72a67301735d73b87414747074cc7528758575e1763e769b76f8775677b37811786e78cc792a798979e77a467aa57b047b637bc27c217c817ce17d417da17e017e627ec27f237f847fe5804780a8810a816b81cd8230829282f4835783ba841d848084e3854785ab860e867286d7873b879f8804886988ce8933899989fe8a648aca8b308b968bfc8c638cca8d318d988dff8e668ece8f368f9e9006906e90d6913f91a89211927a92e3934d93b69420948a94f4955f95c99634969f970a977597e0984c98b89924999099fc9a689ad59b429baf9c1c9c899cf79d649dd29e409eae9f1d9f8b9ffaa069a0d8a147a1b6a226a296a306a376a3e6a456a4c7a538a5a9a61aa68ba6fda76ea7e0a852a8c4a937a9a9aa1caa8fab02ab75abe9ac5cacd0ad44adb8ae2daea1af16af8bb000b075b0eab160b1d6b24bb2c2b338b3aeb425b49cb513b58ab601b679b6f0b768b7e0b859b8d1b94ab9c2ba3bbab5bb2ebba7bc21bc9bbd15bd8fbe0abe84beffbf7abff5c070c0ecc167c1e3c25fc2dbc358c3d4c451c4cec54bc5c8c646c6c3c741c7bfc83dc8bcc93ac9b9ca38cab7cb36cbb6cc35ccb5cd35cdb5ce36ceb6cf37cfb8d039d0bad13cd1bed23fd2c1d344d3c6d449d4cbd54ed5d1d655d6d8d75cd7e0d864d8e8d96cd9f1da76dafbdb80dc05dc8add10dd96de1cdea2df29dfafe036e0bde144e1cce253e2dbe363e3ebe473e4fce584e60de696e71fe7a9e832e8bce946e9d0ea5beae5eb70ebfbec86ed11ed9cee28eeb4ef40efccf058f0e5f172f1fff28cf319f3a7f434f4c2f550f5def66df6fbf78af819f8a8f938f9c7fa57fae7fb77fc07fc98fd29fdbafe4bfedcff6dffffffdb0043000302020302020303030304030304050805050404050a070706080c0a0c0c0b0a0b0b0d0e12100d0e110e0b0b1016101113141515150c0f171816141812141514ffdb00430103040405040509050509140d0b0d1414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414ffc2001108010b00b403012200021101031101ffc4001d000100000701010000000000000000000000020304050607080109ffc4001a010100030101010000000000000000000000010203040506ffda000c03010002100310000001ea9000000000000000000000000294aa000014da993b8949568000014957e1c7575b06593df99d3eb0bf55223d43b3b6e9aa9d362c32f61b44ab4e474522f19c6075115b769dcdbef9ff00a02bc00c80010c438caaba4abe9dfc639275b47771266dd15577d39ff0dddb9ce76e5b9dd6b2d97234aebba6bdb972ebbf6cf58d7fd238f642e406200000000000000000000000000000000000000000000000000000000000000000000924e62d94800000000051f90ad2cd2a2c9792773d74da0b7e3d6cf31c6303e69b46fcdb5a93454dbbcda177d56a1122db0b94367c0eb6c9ee5c7bb331dba4fc87546b8e1793eb7ccfcfe9df9cc9bb70af4f9791ba2b9af7fe91ba35e67bce78e969c4b79f3d6f86c7c6ed7ecdaffdb7a237a522fe2b6025f3a747ebaa5b95362d9366fa5c1538be61817cf7b393ddb0b9b85ea772e17b2bb70e03d918a41eb77ef3d5bbba8b8fcdc8f893e91fceed79ec73bdb34476174060f9ed6e09004939af39cbe962d9e688def228e38a8dd571e3e8c9f243bb9b95a567fbbf5db9b76f54caa5b30e12eedf9c36e4aa82cf14c7d2d6059ed2e0254d94456c9f4c8a7bfdb45c6c357452b54573175adb255c310cfeca2ed659f50b57eabda3ea396724db32ad5f72fc56f313717889f412d30430cc14b056f851ab052d447096d95722137df53213850d25cbd45b66568a75509c120002d85cd411958b6c45c1451954b657930003cf478f400000d53b586b8bf653869648aed023c9d1dfd3aef3abdc2448230f294ab431000141513c4ba5ae144ad0f3d10bd1e45e7a28eb051567a3cb6dcc499c007fffc4002d10000104020103040104010500000000000401020305000612071113101415201621223040172731336070ffda0008010100010502ff00a7485450bfec41118b149d52a661621511b07dcb95d00c5ecf7f685b76ab8d66ebfc9322c6cea8f91e7ec85df5e194d1945fe41b52e3af36e648eb8da5b33edf6c62176fb24712dcedde5bfb6bf32b038aacf4e921cf9ea3f80a1dad3ce628f76658921d2ce64a9b0932bbdecad57ed55e34b2930da462d24e3be9f015596d8a8a5754db3d279762127175bac6fc651f491206d6fddcbc5b21031065aec95739eeb31a6d763b7a8f913d007425db015b7834deeead3621dc44f7d5d2c026cb5d014cd9060a21f65624963655d3e5a8f57607749e173a6fe07ea153292cd76b63c6d484dcf8c130dd52aac25875dac1d0fe980451557aad7550bf0e167c2018b435cb8fd5ea64c9348a49327e9b514c947483d003ff009b4d2a43154de7cacbfd0b2ba400c4fd7e97b7c2520b432414cdacd86bed93f8ca2e10610cd82c20cb837e3ababb779ecd9a213787d71e7c158251ed606c0eea1ee0fd7c5a645b3bc02b47f6d24bdb3a7dba2d87d955130edb2aaba5aabb0eea3c55e29b85dc264da09c210cceb297df01920913a5764bef778ad96ce8b499abec6f76c91f7db8864b85901dc2cc7855ecf155541b1be94e7d856fa1fee7c51486a15be13cc2f77db359245a7239a71bebff0076f9017396905707150ddb6ce15ab8eef75784e1a7e903516df7c7c8ea0e974ce66ca56a108f6f1b911ac7febe64f1689c5baad271705eb23b8475daff00e4db258d64c05c7c633e16e36373684281e3c2c6bb192b9d9373a9b4ad64729f788b16c3d3721f5db1f53cc93e23a6d02c86dc8047bd72ae79fb3bdc66814b15ceaf1c6d863fa5a53122da6de48b06d1a4c8967555d48e6db1a52c76519cbd90afde3c7f21495a8f4afdd4370bb9446be276ded66d9a174aa87d9533a16ac0e8d2296c23e289dfbe8d50ea5d63edf8725d6d5d320160a5cdda87db3fbc91c9c97bebc03abaaf3a83532d96f6fe985bb21268ecb50d5f4be3f8a66d35f28db1cf023a1d56bd6caf3ed322ac2108e086d4ab0aae0726858445ac81ed49d6ea20691e97edff005333618d93c1a90aa0d0e1a7b3e44929b3a56d83eb5da31861fabfaf95b8af4442dfcdade53498e72350839cec879428d4e0a311e66e5b5230bd9b1ec4919570fb5f4db350acb6c8ba6758d91345a9ef471fb083d5cd4eddfb670ef8c4e38fef1b66fdf1f8b3c59e2c89a8c413f6e1dff27bc932296695d3776ca8f454722392617c4f48f1aced9112b88bdfd78670c44ed8e623b3c59c338670cf1635bc7266f293c790b38b55bdd11bc72555f1a279a3f176ce188cce3fc3dbe8adeebc713e9e3ecbc7be71ce39c7fbeb681b71e78d1e4664133d964248acb1164594d1c757950c527c989c6391b2b7f98dd4ca25ff008f11f2b0d53c7bb76af2b561d78b15f75473d84f6b4d39c60baa9030d4c34c1d7ff42e289d6534340f8a1028a709d3d24c4095c2a82162b91b88f6b97157b27ba8b1ae477d5e2248e8a2f0b5cde59ecd99ed1b8d1519e9dd133926724ce49eaf1924c68a8cc4ff0065fd73d926451f899fd9ffc4002a11000103020405030500000000000000000100021103121314202104103141513050f032406191d1ffda0008010301013f01fb4009e9aac0b011a16c2c30b0842c20b0c110aafd7a730df0b33f859b100423c4d30360b343c2cd37bb5661be3e7e9557dee91ef2e0000473730d2369d004984ea6d6b2e2836559b2220c1507740988e45c5e65da2d63c439520e151860ed3d508edc9e570b4316f1f3bff5105877ec8f21a5aeb4a350044ceea9d77d2d9aaa3df545ef47d393d3dd7fffc4002b11000104010300080700000000000000000100021121120310311320224171a1e1f14050516061c1f0ffda0008010201013f01f8aaee57fdec9da58dac82fcac82118e4154d7562a138e5efe8ba4968691f5f343082227f4aa223cfd17622dbe6aaa26bc3c17267e723601361e251adcba04a6ea173f109cf0d59f6b2ef4c70758478479d840101135b973d8726ad5c0e8bc08b8e13a793b6883ca63729445c21d6929edcc421a04a0311083cb7845d93ad0fb03ffc40049100002010302020604080b0509010000000102030004111221133105223241516110527181142023304291a1b10624344043628292c1d1f033535472934450607073b2c2d2e2f1ffda0008010100063f02ff0083955e4556638009f8e6495c220ef35c10ccdbe35f752cd0b6b46eff009896445d6caa485f1abf9adee05adbda9f9405b90ce3357104f2b74b2c51ab4a513023cd710742df98f1ab5f04e31e34157a26f198f2023a97f199fa1e0b6859e5063cbae3bb4d4512f4bdd4bd24aa9711cd72311693938d23c855c04bab665861171ab3da8fd65f1ae199edb569471d7e61b962ad82dfdac90dcb048ee54fc9962338f1eef0ab963776ba608b8e7adda8fd614b2c3d276b2c64c6a720a152f8d231ef153442e2d8cb1332b26bc1ea804fbb0455a0bc9e192def0fc9708ee6affa152ca3536f133c77dfa4774ed67cb9d4b13b16d0db7f5f57ccfe11c26e12d6368e3d4cc09c61c787f5bd5a4ffe2ba48c7279af0d540fb4d4e5247cc5d26f12f5b6c08f48f75744b7c344a9706dd0c21c9d380a738f3357722b90ced2648efc939ae8ed3fe0131fe8b54b6fa7a905aaf47331206a6e1b138f1dc8ae8dbe9075ad4c114bfe4233fceba5edb56b8ada34bab461e1ba8ffbfeca82d8938b9e8816e3fd3c8fb4574a118d1b3af5867e4da35e5fb268dc443af25b5e06c7acaba7f85746f110c6f6d2aa0cf9c60fdf9ae91e969574cd779b7b7f79eb9a9f436663da1e1fd6df304f857e118b89e381a684247c438c90437f0a1224ad208668eea2214ee42e190f8721bd4b6ed31f86bddfc27b1b6e3077ab59f54ebc31029d716c387cdb63df8a8d6d2613cc64919df414ea93d51bd595d7156f634b2103081c76b4e9ab2e91b283e137d6f3219901f550a82de1b77d4bc681618245406388e74e9c80c33e47ecaba875cda3e029670b326e7073a9b7daade548255744861cc922e90aa7738f1ab568556e26e0cb14e936ca75beadaa6678a3612b4dd4d7b289400df75748d944fae1ba9a278eeb908f48c6e39d59e9e97b58fa3ace30a910ceb38f6ed9357d3e9d31b1f77f5fcbe65e792ce39256392cc2bab6308fd9adad621fb35f9345fbb48f3d9c6fa390c6d5f27650afecd34b0cf2dbab9cb22f2a104702bf7ea7dc9afc962fddafc8e1fdcafc8e1fddaeb58407f66b7e8e87dc2b6b6311f146c52dadbf64779e67fe5bbc8412146ac28c9a602d65863d3a95a4237f7777e63040115f56ee4b60a8f2db7f8a5a7955646da38fe931a96f5071a50a78997c929df8afc5ee519ffbb3b37d5f3866b89562887366381426b7956688f264391e89e7e2dbc0cabd57ba6d31e7ceba42e6fe48b8f6eada043b2918dbeda175d2d35b3c720cc4225ebfbc8dbdd525cdcc822863196634eb6c64575df4ca9a491e2296dad180bd9876bfbb5f1f6d5af1dda469255cb31c9e75d3924209d5ae2049f05dfedad7dfce8585ec9ae5fd0cadf4bf54fc61e74d14d76bc55d8a202c7eca2f6930934f31c88f464ec2967943496968da846be3eb11524b6b0702398eff00ae46d9f47475a8272baa62bf60fe35d71d6e757562bfd898f8dec39c532c2bc478e449785ebe0f2a77b181e2e1a3348cdde4ed8f6f3deae943e0711867c1231ffc9a49e138963c329f034f1868cab9627526773ce977c64559bd9ac938b84334463e68cad86fa8fde2a19a58cc53e31246df45bbfd23e0ba789ab7d5e15a6548cc38edaf8d0b78dd4488cb2fb3c2a424c88cfd5e1b3f77ba96556e16bdb76e75ab3d5f1a6b4b53d5032ed457077e7e7588f6ee14558fcb21d2de75d2e2e5752c36890c7e5ac1c9fbea65ef53a6ba55b3d6e1a803cb3ffe53dac2e2392ed843a89ecaf363f50350b6542b2b467cf236fbaaee58ee24371c2ba60ac46e4a9ffdab4fa1a261c8e46d5692be78b1dccc531ea6dabdd5c44ecc8c5f3e3f119b9e055f4dd2170dd41d5456c31cf23ec152da1941684ee53beaeee507cb5a05624778277ab2df43c90ab9c77d32cc3170ed971e1e02b246477640ae48a47777d25dc0345b4c77c7d17ef1efe7f5d5c5dac7a5e68e3cb7ac072fe35d209eaccdf7d43ad4a45760c618f26fe88a69d164440df06462319d7da3fba31fb557b27f87856707cd5bf96aaf875ac6935b4913eb3ab046539fdd59f4c264b9b98d1677d5144fa55b973a58d142a28c003b87c587a47a2e256977592366c29157e0e51b3d6d22ba592040e4a84d32ec0e41ae8882f2224dada0ce0129a872dea6d5b1d6771edaeb3ea1df5abb239e6aff00444d37506945e65b98ab71247c27d03287baba463e5ae5120f7ef56ac874980e63f23cea4b9879a0170147715ed0fbe9efa4fed2efb3ff004c72fb734621b2e9d35246dcd18a914195468f1f459dbc834cc578920f02dbfc7fc2292f5597840bc0bcb516ce96f66d525d1ff6a7caff00946dfcfd0d7d0afc9487e531f44d2c7d625bb385c9ac6ecf9c68efcd431c831291a9c79fa2cade0d224b8b7503572db5d26992d9d9b9aeb234fd95d2ed35e46f14b108c47167b4c40cefe55d15a797c1d7d1d23a422ab4eda46a193bf853452755b1915d1f12c465ccca5947aa0eff0067c770afc36c6cf8ce2aee79a67bcb893abc57db50ee03c06f404f77c54c0096eabd5871dd9e67d0d1c8a1d1860a9efabf668de296d8111a4dbe907cfbc6d525d5c859fa499b51988c7d43bbd3f83e7c626fb9fd16b14a9c481ee5049b6463cfdf8ab7b53b9b72f167fcae47a2e9999db3339c91bf3aeab927bb35ae2038bdcc46e3d95653df1d53b83d63cd973b13eef887ac36ace76a0a3df5129e4be8c9d85158c60789a900e4fce811b115bf687a3a2ba438af1bdb061a579367d054f2357111249e21937f3dfd1c697a3d1a66ed4ea4ab7bf1ce83319dc7abaf6acfc17ddadb1f7d476914605ba6ca07d1f887aa0d7eb7a36ed5691cfbcd20cfc47f318a23baa32398aec8158c81eea571ecacd1079563bbbbd3d7faeb6f9d3f14e2b07b5f9bedfee37cdd42343686cc8366f0a7d57112e86d0d971b1f0ad09346ef8ce95604e2b0b73131d7c3c071daf0f6ed4025cc4d9381871444b3c71903510cc06d488f2a2bbf654b6edeca43f0a870e0b29e20dc0e66b523075f153f3f7ce2484719c941e5d6e7fbd4f74043a4c8b2e87391b23c7e1ea95faa9aea3d1140d1e96453db3b60e3bbe96fe7492ab29985dfc20f5b6c091881cbc1dfdf5d1250c38b25e1b05fd22f5464ede033edc5492c4515b84ab1b6a2a51c124372f3ab09d1e3fc5f9eaef3a94ffe357110e0b6b81e05d4790d4e57bbf5feca8e09cea923caebf5867627cff31e22c810f539f967f9d346660419237c63d5fe756ff2c8e222bcc1c9c214fbaae217bb2fc460ca5b274543017e218d71abd1b9c56c41f4f6eb6f8a4977deb1927db5cc8f65733cf35ccd1d2ec3d3cc57315cc7a4e5db1e15b3b0fabd3ceb1f9d7fffc4002b10010002020103030402030003000000000100112131415161711081912030a1b1d1e140c1f16070f0ffda0008010100013f21ff00c36e6e9ea42fd7b7e2b4ac5b312be7afcc1722b07ebcfd8c94fd2ac17501dc6aada80737c07f7158d85051b4f0996a05af5595ee74ef354e28dac62ac500d793394ef9ed3006ee8b432db630be0203072cbb4c79b96bb7bf5d46af3a6fa4779cad43c98645e132e9195a1c3793159a8db3940349678cd121d79b212d2ecae5217495d1be837507c2732165dcd03404c0b483c063f54f6fb0e48ff080f197415d5452474ed5e8f6f9e30c190a8d0fdaa1c08d605d962d16fa44868b8ea0f0dc19148c16881f860d29485bd0d6ccc4d2debb43fa31dbae00787edf286a82c74aa80305ee44f325ee8dbc7bcae776949fe9f332ab212cf82c467a4f928a7209d38becc3cb60a77367e7f0fb028e85ce04a48303ff009b8680a42b085325f6e6267a704d7dc99b95ca93152842c6c52ab96681a880afe559cf765b4d26214aef8a62d638c0372af058f8311326f6800e42bec9ac14c2f8a1c805172f19ea01b4b362ced2a0424b975439ad4b585d6959ad2f5d77865a3268b763a1d71347411fcd303077de14d3b4061698fb2ab3a84c0a82ec67e148cff818a100954f84a478431a8b2995e31884e51b0dceb15fe3cff989b46f6fa027463d98ebbb1c092dd7fbcffd6e8eb6ac145e0e5947c8dda7c55ff05b04b4e86c0ad7c5910046c79fa0d59e6e5e80dd77883b444d9b39aab2fc620a18edebf77fafb9c7e3589c83f50f4ad19ac438dccd78cc58ba35496af538306434261d5b5f02fad6a743f1abfbed09b8e73f3012c280ebd34ee75e1608dff7af93291b184ba238f183d0d09b3c4b6d4d8cf71cbd1e7ea50283807596d11414f468d32ff2aab7cb1f435400b5789773966f4e03efa9bd451b1a219a393bd7a64103743a6f3fce57ed2e5464e91a2f0778af81dc7f044af5e0d7276ef7ac47b89a30e2c6db17831aa983637ac57f1f243e2eee9e31cc07d7629dabef1db914177d600828b52178a0cf48228d4ca4703fd9d93d50add038c1ff007508bcd29470beae38f89650e54150f52579826ca2aded95d17c60ef2999ce6458d9d0eb11b8e17962a65d2a3e7da52e74e80eeee2161941a0aec43eb7a8d239998c5ad0f7c67e528064a0de1cc5b8a7cb8fd462785a58fb224c495561b0fe421ae554e4eb457f09590de1d54a167bcb54366d08e6335ac22f6ca7434fb4d2d4e1a17427903e8c70d86885916bc7807e8eb5c479c1d2af17edc41513d889afb03ed35e84fb057c7e662085a9472770df7b95b86a81fa84dec87278cc550673d99ecf6439827ac46dd30a268807f19c4708f3804af007bce51542458f6b6fdd357fb0a16bde88a14a4c0507bcc691cd20fa11d698cf091d77d0be0e7961fa51d40683e9c42918d566bfbe9096ab282361fcee6ced7bb4ad2f117e22d13a6bab30f92597406ada281cb4ce94fb4c8078499fb68b59c17c91980dc0575a6a54ef85659a799dc2df212dc56a7ba7c1fac239749ee3f24fe21016d0742aa6136a0f235138f046c6203996e92eb161ec21edf5e436c9c07923f3dea602da6ecd3f3e85506c8e4f3e1fdc2804e8323d26cdc148dba2bac1af58385c7b6bd2e8095d596efb4685ec5d81b72988690cb2dc6324c6fda2546bf36b3f9f4bc5ed589b6add79951f7c1c37c4af427782bf007ebbb1cca16f5a66123f1185860ab16baacb25a5208052966337cfa37f31b6065949057b08871c44cd6e989b855937ceb5e3d728c031ea9fc9e958b4981653c283de336d8e3744fc0465ac5b00cf7de5885e87246d8257f48a32c4435d8798d3e8e88b539d4b381d52f161cc72c310f1cc2b888d68e582d818ab31bfe3e32fcba092ef4d9fccbb950a44043837ae75d7d085b0a63dce5677bdabb5afa2dc5a65ee9ee6e1200dde8bf1710787fe24549ae8ebfc7d17ef810dd57a1d08b4ae563deb962fa4c8e8f210d026b773c678fa6c03a0811e743e798b0d7750a501958da702dde666c416ad1492ee9dc9d88884c2724a002fb201b567aa2560e936bb8d7bcf19e33c617ed0cd12f509f26c2a996a011530acf0d2ccd4909ec4106ebec57a02bd0516e583e93457a24ac57137a1b2dff0257d8a952bec7487b1ef73870e3b4d3a4a25e58bba3750aad2c4834b47178805d6841dbf731d98d834275a20867aa7cc22974609a1cf1789ae6fd1e07305e0b40d43390a6d83d731907de620932aef7ac36a0ec5e731c165996523e4bca3bcb01b28f0ad2381c82cc40810468087eeddc711d606d5758363d98677195d5a49c22d231ce4770491366c153c06afd963c4afa9f32b247ba3d3aae0b86544bb985c8a5ef7fe09814d03ceff00203da194e76bc2f7d9ad19eb1ed775a83617d5f328ec23c0d8679ff6c53c03455ff5e85590d65a95853a0fa022e8ccd5867b301b567d2705d898fc42a67bb9c6d7eadcc976f83f898703cd95fc42c59f44fe3d1dc427fde9ff007a7fdef5cc2a6f228fc403de0fe90502efbb0513ac6cc6bab87555cde7ee54a3a4a251f6ff00ffda000c03010002000300000010f3cf3cf3cf3cf3cf3cf3cc3cc30c30f74f3cf3ce65eec0d35fff003cf2c1263bef9861cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cef85bca29f7cfb2aee3e52d4613e7cf1cfa4ce07882737bcf2844f3de2e845a73ca337d8c8b2f0931670b2cf1ed38dc4e0fdc3f3cf38d28238f2c73cf3ce00305008d3cd3cf1cb1c20c33c73c73cffc4002a1101000201020405030500000000000000010011213141106191b12050a1d1f03071814051c1e1f1ffda0008010301013f10fd268a9a61f08c0240a5d77f78381c56dcbe7383695d0f682580e872e501743a1ed02864bff7a1da0a43e149c7afe778970faa6e4d5efadfe2246c5db4af5cf421bbeb615a5b7cff00a97e88fc8fc636a84e58f37a6af82919782ec4df8d0f507ae73ce0df1ac0eb192557efda33a2270daa2c00bec6bbfb43326bc1ab5ac35e22065ea2ec9da243726d59714bf2a24d68d6042a4ace9fccbe98175db203b18f4356aae700389a41478314d312c2294444a85ab43af49ac25dfec5679e379b22974f8af8dc08438788fd0ae352bc9bffc40027110100010401010803010000000000000001110021314110512061718191a1c1f04050b1d1ffda0008010201013f10fca2f8fac39f5f6d54141df79a25f25471ba5c1a2faf22f6b79b80bb6379cf5b4decf52a2d8204cdee664bf4a21819cedd030dfbfda902d860872cc1bb8f46d7a6e188bd92410d88c8681d398f7f4511104ad86e2d974a520310652fe20f8a018d389b4321328c582de350e551f5f5f1436a5cedbf20f98dd49200f8978bb578f2a592112fede498e12a8f125da100d09470b04d48b31458267a7f7c3ad132d02f9e3eee940e8a0975020d0d4105aa40720558c21b1fed4f4d221368c87d9a04d98f40a5a23d093ef14e47dc3fe948279a9a5e9918a73d8d09432a8b16d460305170a9a457a714b2f6238384e209e269eccf33ccd4d4fe97ffc4002b10010100020202000602020203010000000111002131415161102030718191a1b1c1f1d1f0406070e1ffda0008010100013f10ff00d26fc8810bb7ac3d943c2b803de5cb972e5cb803aaca0f5edf590cfc40772df0bda0f66709c32223143b02223c27d03bab3ec8d9ee6587f3ab04fa05f8aaaa0dde02a50290d83665969bf191105005166f698ed215d896152ba7593d57de96125aa4a53a4183d915306d69845a021772cca1f077154448008838ca5d8035c576d4e0561bc215553e7d11b10931327690b00d2aa1b166a371e2b0fda96ba1b857c658098c182a06c0517544c32c2087444bc42a5766bb22c592755bc3ed80046dc9ec24e9a89df2fc1fa004104748e455b0921e7c083b1755147b46e45576591f2702a903c3dd74027aa6a64b11f488c00500b4d8a83d02911388f60847933419224492abe5e7a2e140682e0ec2e2174096730e028398fdbfb130199dd1bdbe82abcb5ef3855be8477cff006b8cca2f35326901805064549a1b8bb97dc7fb0cba7c3c8dd0562745d8d6f10f1675356e75081c2db0f448267db67917da1f3dd1b1c2b02e2d4cfdf5a9cab1f879c25acfc9b4c1798d3104ccdd08b53909c6a5b9be3909c453208d37338be600d114cd6d7890b26254cddd4d302944b7f18e25860650189d460a623f577aff004d682c5d85c05b3235bd20111107db1bf98919c1a3e4817cb94b9fd88d6fee85d38ec4404a1500318efe31b13348d70480461a89bd62605e56131a4352ed69794f51ce66cfd913e8994c95ad540d682c0e8c2e2dd62a9bcffaf596268ffaf59153410a8aa0dac3f586099c713105bd761a815b35fe65de2c1a9f5794b76cc0a2e7fdfac5dad79bff00e383a1cf9c99aa7b385cf7d47f1814c384c7e9cb63e5b13aaee1fb6bcaff00f376687a02880da4d072e390b2db906f2d6948c7893ff06a09ed1b052f46d11b705a0281a27c8d5c46b11097925d00ef8c3bfb58c8b2aae0010adae475801afc325fbd1efea719852fb85ca5ab8e83929dfaf855703a807489d68f80e101178ef02ab1d8d687830508e5d278c9ad076438dc37aa828001b52802aa81ce12d2a58d9b284c18d294298ef86d6d4b171b05f1a1a32feb0d3daacb712838c2cb6bc0d3e50ca64422f3c0a387163756f90551c20a9b022d0bf2ab72a9054581de85fc65c6e0ebf2440ec51306540b40f1108334f0f9f824d1250072ae14c75d2df615e0b054ddcab63d29a8bb25407637e0649039b0caf0e0f462661c2a936b89c1b37bc5e964da4db38b56736c015cd4a5c1392245a216153587a680f6395418498b90dcf2b19a1f793ce07398810029548ae9cde3202049a3c96707596f3ecfe00bcc4fe7375b81aabc95a241ec299dbc9284a3c29434a0d3f1096a1449a1ece41ef4baec9f07047948f307606b177808191bc6b05b77438ac5c1cc6150b60e8e8d076d604885d2a6847615510d6ee2627931c16df197df9aa8b034e28cbccf588b59412f080111dea66b098f16848007ad1e31a3de844123ef1fd64e57bde701f623d5617e77642823f23ac1aa1df36a8f47f3606faef340ce693d2e3291884516048f2b8c7d5732659184ab747e5808c6b56039fdf19df4ebfc3fce3402a2b42178a2a7eb39b8521763214bdd8882f2444b945d05d096befdfc88132495616065f919a2d201e39c34234341cfcd0788e1617a599bd9c7348f50f49f739dd3a3da211e769e7d30df245a63935550482fbb39a6a881c728bc61306c11364da99fde4a31d51040e8a0eac758504ebef040ba2685d17933780547b4887df12d3a03921dd5f870623a82c6b7691146c38c254330dc1de87f261873a52784dc2852ab40de4f7c973685469cb9c8b829114265a350820709c06bc80074001f2948a4b41429ed60d881d8f2a7c31961a6b4aabb9c60073a48276c23579d75871270aa8ecd364a3eb088cb5c00afbbce519424290fb81eb9c548a8228579eb629ef14e876124468293be38e661e2c7bf20d29dcef108d219a452fdaafeb1dc3086ad69d7f8b7de3757b4af61ed533c8b3b0bd7a1469d2d3d645eb05e1607eb0887afe2d7f58996d0c88e3f1955a1dc39c65480f2a37ed8fb5f33c66d99064bc535780b36070c2588238daff37fb4c9812faa781af4b36764d531de34a845802afdbc613260b07406b7b6a7380408a086ee784d35a7e0c2b622f4a029ae51eb21b3875bdd139a301e39c0626d2afe0b2276d64190980e1e13fd98f1884ef3990441d9d831c26275c9503294e0e970bde122acebaa07d0e1c7cd5d9d74421c463b8e99bcba1b01707d4501cb2e1b035c88bc41b2052876e4c67c85444c170e287511610a15028632d5e500b63d27949bdbf109eab5c244fc4fecc383140a352498ba6d3d6ceb2ba00a13f9311f9ce1f9318defbc45e95a43b39334d36b238d25bde0f451555ed12bd9bc3f6bca26c3a09bb74bb5f927bf2262b8cdcb08797db0d2b8a48fa1feff005819045042767b8601506dacef03282bc0600332aa47a383f38514883db629e18a63a3b5e50e14d35c9c3e9801444f262075e2332a18d8ecf639c3418799e0ff003f7ef272a6800e8decc9d5f82960358340ec0fd9498650f0e0785347e718d27025806cfc68aac2bba57cedf909447688dfb71cad972f1fa328da2abcb9cffd2470cdde7e3f7e0c220468ab7de47fa647fa6478cd8d6b0eee423e3f4e21de47f627f586ce3c2acc026f4ce8c518640e96a3814c76bc8f87049b48e11c7229efc864f08dd54d08e03c15ddf93fe30f91384f82511e316eb5876b9c1a2f78d513c8cdc803d64f964e25c37323de792bcbe72b1b801fac0f1fc6171c5ae360fce589a1d279c4641367331d5caacde29e04638275f01302f41fa0972707eef80971eb28072e0710fc38f851c9522ae47229cf1e4c64e479c670c80fa88391e327cd2e478c9c9fa0128d6d4acafb237b787378c18c8d79d1016d113003c05045a2c053c5139c66b06608a41e9e57569c453607980d9068708394cb5d406b2888b43c2eb9cfe64fbfc379f438316e4b254f800d11b89101047462514d24fac289e70a7132d419593518c59423d6175d4a0741adb481304f69cd0a45c2cd4426d8fab90f9a13de3b415e080a0a0a4ce68112540382b230ece02274210d2b1866451418c3d94b0565631b2407440bc66821a8b278002d6815e8f3faaa650ef29e7e0a9a90aed1b8c38b1673d91ccb50826752c8f6e04e08c72c77874d9a5382b758b0f918469bb8b9178f44562dd2a781541c02b002bf0349cc2417c6f101e951a87987c11380a7c06228da29fe8ce5384b137f2b8d958705b0e50c797a050a7ad062b65a5d47e54c360eec797fcb5fa322c454aaa820fe0ff061b248327180805bedc6239cc599feb190ff00819fe8182208d1f82b4c05c8f8ba4c68269221f7b3bff8cd90903b1f6e0a9c04736c93cad193985355dbb67e7fbfa8879073d4fd67a8fd67a8fd7d3fffd9');
SELECT pg_catalog.lo_close(0);

COMMIT;

SET search_path = public, pg_catalog;

--
-- Name: movies_pkey; Type: CONSTRAINT; Schema: public; Owner: jwo; Tablespace: 
--

ALTER TABLE ONLY movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);


--
-- Name: refile_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: jwo; Tablespace: 
--

ALTER TABLE ONLY refile_attachments
    ADD CONSTRAINT refile_attachments_pkey PRIMARY KEY (id);


--
-- Name: index_refile_attachments_on_namespace; Type: INDEX; Schema: public; Owner: jwo; Tablespace: 
--

CREATE INDEX index_refile_attachments_on_namespace ON refile_attachments USING btree (namespace);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: jwo; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: jwo
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM jwo;
GRANT ALL ON SCHEMA public TO jwo;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

