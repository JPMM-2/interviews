
use BetsSon

go

insert into DBtest.[dim.calendar] values 
('20190101','2019-01-01','2019-01-01'),
('20190102','2019-01-02','2019-01-01'),
('20190103','2019-01-03','2019-01-01'),
('20190104','2019-01-04','2019-01-01'),
('20190105','2019-01-05','2019-01-01'),
('20190106','2019-01-06','2019-01-01'),
('20190205','2019-02-05','2019-02-01'),
('20190303','2019-03-03','2019-03-01'),
('20190304','2019-03-04','2019-03-01'),
('20190324','2019-03-24','2019-03-21'),
('20190401','2019-04-01','2019-04-01'),
('20190402','2019-04-02','2019-04-01'),
('20190404','2019-04-04','2019-04-01'),
('20190407','2019-04-07','2019-04-01')

go

insert into DBtest.[dim.device] (channelname) values
('Mobile'),
('Web')

go

insert into DBtest.[dim.provider] (providerName, ProductName) values
('Poker','Poker'),
('Provider B','Games of Chance'),
('Sportsbook','Sportsbook'),
('Provider B','Games of Chance')

go

insert into DBtest.[dim.PaymentStatus] (StatusName, Description) values
('Pending','payment is pending approval'),
('Completed','payment has been completed successfully'),
('Failed','payment has failed')

go

Insert into DBtest.[dim.PaymentMethod] (PaymentMethodName, PaymentType) values
('Method A','Type A'),
('Method B','Type A'),
('Method C','Type B')

go

Insert into DBtest.[dim.customers] (brandName, CustomerMarketName, AccountState, RegistrationDate, FirstDepositDate) values
('Brand A','Market A','Active','20190101','22221201'),
('Brand B','Market B','Closed','20190205','20190205'),
('Brand C','Market C','Active','20190303','20190303'),
('Brand A','Market D','Active','20190304','22221201'),
('Brand B','Market C','Active','20190404','20190404'),
('Brand C','Market D','Closed','20190407','22221201'),
('Brand A','Market A','Active','20190304','20190324'),
('Brand B','Market B','Active','20190401','20190402')

go

insert into DBtest.[revenue.aggregation] values 
('20190101',1,1,1,1,44.8129339310202,1.56845268758571,-3.4566090675214,-1.8881563799357,1),
('20190102',2,2,2,2,84.607831246723,-42.3039156233615,-3.99404237794065,-46.2979580013021,1),
('20190103',3,1,1,3,81.788408914444,2.86259431200554,-0.465174677571876,2.39741963443366,1),
('20190104',4,2,2,4,13.2440251110127,0.463540878885444,-1.49611211886682,-1.03257123998138,1),
('20190105',5,3,1,5,13.2411714314028,-6.62058571570142,NULL,-6.62058571570142,1),
('20190106',6,1,1,6,91.981273065974,3.21934455730909,-19.7602831550007,-16.5409385976916,1),
('20190101',7,2,2,7,47.7058307214529,1.66970407525085,-9.57260127824153,-7.90289720299068,1),
('20190102',8,1,1,8,33.1726383748924,1.16104234312124,-4.45693731394631,-3.29589497082507,1),
('20190103',1,2,2,9,76.3334783234968,2.67167174132239,-14.688580507146,-12.0169087658236,1),
('20190104',2,3,1,10,84.9769563181435,-42.4884781590717,-12.8146027268001,-55.3030808858718,1),
('20190105',3,4,1,11,48.2415107888772,1.6884528776107,-16.4702498194884,-14.7817969418777,1),
('20190106',4,3,2,12,25.2804932243714,-12.6402466121857,NULL,-12.6402466121857,1),
('20190101',5,4,1,13,38.6029420560524,-19.3014710280262,-3.26331064221852,-22.5647816702447,1),
('20190102',6,1,2,14,70.5289789644875,2.46851426375706,-14.0173090429244,-11.5487947791673,1),
('20190103',1,2,1,15,57.6627116781367,2.01819490873479,-16.5821576831456,-14.5639627744108,1),
('20190104',2,1,2,16,30.3885114487158,1.06359790070505,-1.46831002559052,-0.404712124885471,0),
('20190105',1,2,1,17,37.6443403532134,1.31755191236247,NULL,1.31755191236247,1),
('20190106',2,3,2,1,65.395566514566,-32.697783257283,-8.37266703516301,-41.070450292446,1),
('20190101',1,1,1,2,77.7216428516209,2.72025749980673,-12.5276582868626,-9.8074007870559,1),
('20190102',2,2,1,3,14.3672894308006,0.502855130078023,-18.4409196402039,-17.9380645101259,1),
('20190103',3,3,1,4,54.3699639452573,1.902948738084,-14.8184934849432,-12.9155447468592,1),
('20190104',4,1,1,5,84.8186324033293,2.96865213411653,-13.6027143263489,-10.6340621922324,0),
('20190105',5,2,2,6,43.7370971837275,-21.8685485918638,-4.69738075734036,-26.5659293492041,1),
('20190106',6,3,1,7,70.1630249705434,-35.0815124852717,NULL,-35.0815124852717,1),
('20190101',7,4,2,8,60.4062855225645,2.11421999328976,-13.9212440547155,-11.8070240614258,1),
('20190102',8,1,1,9,25.4808028022091,-12.7404014011045,-7.95925427207389,-20.6996556731784,1),
('20190103',4,2,1,10,87.8772592441569,3.07570407354549,-19.8028038770774,-16.7270998035319,1),
('20190104',1,3,1,11,20.9115701863826,0.731904956523391,-15.7215194939658,-14.9896145374424,0),
('20190105',1,4,2,12,44.3939990698821,1.55378996744587,-13.5266570773304,-11.9728671098845,1),
('20190106',2,1,1,13,62.9915913344971,2.2047056967074,NULL,2.2047056967074,1),
('20190101',1,2,2,14,25.7929465673568,-12.8964732836784,NULL,-12.8964732836784,1),
('20190102',2,3,1,15,10.8263375222229,-5.41316876111143,NULL,-5.41316876111143,1),
('20190103',3,4,1,16,61.8148442840272,2.16351954994095,-18.0072887470104,-15.8437691970695,1),
('20190104',4,1,1,34,96.3808001684389,3.37332800589536,-14.4283164440616,-11.0549884381663,0),
('20190105',5,2,2,35,41.0495317607655,1.43673361162679,-5.58268442062644,-4.14595080899965,1),
('20190106',6,3,1,36,68.7709726762535,2.40698404366887,-15.1519992129045,-12.7450151692356,1),
('20190101',7,4,2,1,88.6190061261121,3.10166521441392,NULL,3.10166521441392,1),
('20190102',8,1,1,2,53.4651738584552,-26.7325869292276,-2.22811091439144,-28.960697843619,1),
('20190103',1,2,1,3,20.052346605019,-10.0261733025095,-1.51118984638231,-11.5373631488918,1),
('20190104',1,3,2,4,78.5344390260734,2.74870536591257,-4.33276644570621,-1.58406107979364,0),
('20190105',2,1,1,5,96.7743309499029,3.3871015832466,-4.82974073919871,-1.4426391559521,1),
('20190106',3,2,2,6,2.55271263917609,0.0893449423711632,-7.59800257394972,-7.50865763157856,1),
('20190101',4,1,1,7,7.44674187326584,0.260635965564304,NULL,0.260635965564304,0),
('20190102',3,2,1,8,21.1439708688072,-10.5719854344036,-10.1455648505438,-20.7175502849474,1),
('20190103',1,3,2,9,60.6487862280698,2.12270751798244,-14.6636098001398,-12.5409022821574,1),
('20190104',1,4,1,10,36.2959761468221,1.27035916513877,-17.4770342975277,-16.206675132389,0),
('20190105',2,1,2,11,15.0426308289687,0.526492079013904,-13.6328564441401,-13.1063643651262,1),
('20190106',1,2,1,12,33.2116026585096,1.16240609304784,-4.68473162291911,-3.52232552987128,1),
('20190101',2,3,2,1,59.4907774216544,-29.7453887108272,-10.47751526537,-40.2229039761972,1),
('20190102',3,4,1,2,14.9553638724832,-7.47768193624159,-14.0933270378335,-21.5710089740751,1),
('20190103',4,1,2,3,45.8003146483669,1.60301101269284,NULL,1.60301101269284,1),
('20190104',5,2,1,4,36.2297848656979,-18.1148924328489,-11.9712631682194,-30.0861556010684,1),
('20190105',6,3,1,5,71.9431125319675,2.51800893861886,-7.48144311608833,-4.96343417746946,0),
('20190106',7,4,1,6,42.1330653147673,1.47465728601685,-15.1165171849456,-13.6418598989288,0),
('20190101',1,1,2,7,5.28712772356238,-2.64356386178119,-3.77416857707358,-6.41773243885477,0),
('20190102',2,2,1,8,74.9290959341832,2.62251835769641,NULL,2.62251835769641,1),
('20190103',3,3,2,9,41.7135429674622,1.45997400386118,-19.3405158360855,-17.8805418322243,1),
('20190104',4,1,1,10,10.6099681497388,0.371348885240859,-4.21582277991384,-3.84447389467298,1),
('20190105',5,2,1,11,52.3093073947238,-26.1546536973619,-11.2394005071294,-37.3940542044913,1),
('20190106',6,3,2,12,2.26947976786045,0.0794317918751157,-1.98410609279286,-1.90467430091775,0),
('20190101',7,4,1,13,69.1629007899438,2.42070152764803,-18.397675366064,-15.976973838416,1),
('20190102',1,1,2,14,40.747721815491,1.42617026354219,NULL,1.42617026354219,1),
('20190103',2,2,1,15,57.0516935309919,1.99680927358472,-11.9056688436248,-9.90885957004007,1),
('20190104',3,3,2,16,91.0834229576872,3.18791980351905,-14.9504518813976,-11.7625320778786,0),
('20190105',4,4,1,11,60.2640396133342,2.1092413864667,-19.0389262515345,-16.9296848650678,1),
('20190106',5,1,2,12,58.9579021117657,2.0635265739118,-17.3243837692285,-15.2608571953167,1),
('20190101',6,2,1,13,21.7288377074023,0.760509319759081,-2.28909937840857,-1.52859005864948,1),
('20190102',7,3,2,22,46.2933074969162,1.62026576239207,-9.16685820552953,-7.54659244313747,1),
('20190103',8,4,1,3,38.2656560846404,-19.1328280423202,-11.4966992093075,-30.6295272516277,0),
('20190104',4,1,2,34,59.1672752522154,2.07085463382754,NULL,2.07085463382754,1),
('20190105',5,2,1,4,96.117331549888,-48.058665774944,-3.36692130929961,-51.4255870842436,1),
('20190106',6,3,2,5,51.7810462917023,1.81233662020958,-4.74283285330473,-2.93049623309515,1),
('20190101',7,4,1,73,45.5931172175193,1.59575910261317,-12.9073071146644,-11.3115480120512,1),
('20190102',8,1,2,74,18.2349806152104,0.638224321532365,-13.4739766058185,-12.8357522842861,0),
('20190103',2,2,1,75,95.313274137227,-47.6566370686135,-6.49304124430875,-54.1496783129222,1),
('20190104',1,3,2,76,41.8409413791986,1.46443294827195,-10.4115123700223,-8.94707942175034,1),
('20190105',2,4,2,77,37.1028720928183,1.29860052324864,-13.8032766871918,-12.5046761639432,0),
('20190106',3,1,1,78,85.9227062983163,3.00729472044107,-18.8705320642608,-15.8632373438198,1),
('20190101',4,2,1,1,49.9486742289614,1.74820359801365,-14.4968576172263,-12.7486540192127,1),
('20190102',5,3,2,34,99.0680960219708,3.46738336076898,NULL,3.46738336076898,1),
('20190103',6,4,1,35,88.6405459754463,-44.3202729877232,NULL,-44.3202729877232,1),
('20190104',7,1,2,36,81.9744100718206,2.86910435251372,NULL,2.86910435251372,1),
('20190105',8,2,1,1,83.8105684187495,2.93336989465623,-8.17140020713547,-5.23803031247923,1),
('20190106',1,3,1,2,61.9823550706055,2.16938242747119,-3.71882853526615,-1.54944610779496,1),
('20190101',2,4,2,3,35.3650495251741,-17.682524762587,NULL,-17.682524762587,1),
('20190102',3,1,1,4,93.929245181751,-46.9646225908755,-1.36316643913928,-48.3277890300148,0),
('20190103',4,2,2,5,0.289506933950356,0.0101327426882625,-10.7660120218999,-10.7558792792117,1),
('20190104',1,3,1,6,21.9384382368473,0.767845338289656,NULL,0.767845338289656,1),
('20190105',2,4,2,7,57.5278660351322,2.01347531122963,-18.4420614145569,-16.4285861033273,0),
('20190106',3,1,1,8,70.0130384824537,2.45045634688588,-10.5090964608485,-8.05864011396263,1),
('20190101',4,2,2,9,26.6190771438602,0.931667700035108,-1.23306209462168,-0.301394394586576,1),
('20190102',5,3,1,10,36.4186493575981,1.27465272751593,-5.47911051881472,-4.20445779129879,0),
('20190103',6,4,1,11,7.3878526358741,0.258574842255594,-9.72399308380719,-9.4654182415516,1),
('20190104',7,1,1,12,81.3537530509308,2.84738135678258,-13.5548150458314,-10.7074336890488,1),
('20190105',8,2,2,1,17.9833430304332,-8.99167151521658,-13.7441398130379,-22.7358113282545,1),
('20190106',1,1,1,2,79.1562782118774,2.77046973741571,-4.83006016643707,-2.05959042902136,0),
('20190101',2,1,2,34,35.0839531656863,1.22793836079902,-12.2879172538169,-11.0599788930178,1),
('20190102',1,2,2,35,41.8960668369556,1.46636233929345,-4.11382479674086,-2.64746245744742,0),
('20190103',2,3,1,36,41.6988585696137,1.45946004993648,-19.6897288320545,-18.230268782118,1),
('20190104',3,4,1,1,44.1602039670889,-22.0801019835445,-18.871918649462,-40.9520206330065,1)




go

insert into DBtest.[deposits.transactions] values 
('20190101',1,1,2,13.8016333158495),
('20190102',2,2,2,27.4218119950548),
('20190102',3,3,3,95.2215572972771),
('20190103',4,1,2,73.3589850544864),
('20190104',5,3,2,77.1317364667259),
('20190105',6,1,2,9.82993901746338),
('20190106',7,2,2,53.2380443871398),
('20190101',8,3,2,29.2828269064614),
('20190102',1,1,3,69.5409275385203),
('20190103',2,1,1,18.4042714976632),
('20190104',3,3,2,78.523277787534),
('20190105',4,1,3,5.09766048265048),
('20190106',5,2,2,93.8364856254602),
('20190101',6,3,2,99.3935206004557),
('20190102',1,3,2,84.1799330578349),
('20190103',2,1,2,17.4293620674944),
('20190104',1,3,2,93.2658476685821),
('20190105',2,1,2,23.1825911248463),
('20190106',1,2,2,8.49495228715553),
('20190101',2,3,2,64.9082910984732),
('20190102',3,2,2,77.5338084304613),
('20190103',4,3,2,63.670799496373),
('20190104',5,1,2,72.413184327443),
('20190106',6,3,2,69.530690773452),
('20190101',7,1,2,91.5288209123623),
('20190102',8,2,1,55.9109471392824),
('20190103',4,3,2,34.377408354807),
('20190104',1,2,3,21.8371492575144),
('20190105',1,3,2,78.709039334417),
('20190102',2,2,2,68.6311008787422),
('20190103',1,1,2,30.899687972169),
('20190104',2,2,2,98.7276194932791),
('20190105',3,3,2,96.5425041148863),
('20190106',4,1,2,58.5731849398561),
('20190101',5,2,2,2.14911043989537),
('20190102',6,3,2,81.0969174814033),
('20190103',7,1,2,20.8186133430522),
('20190104',8,2,2,56.2767704350407),
('20190105',1,3,1,92.7789768727674),
('20190106',1,1,2,41.3970761250197),
('20190101',2,2,3,1.0772923726335),
('20190102',3,3,2,98.550624035972),
('20190103',4,1,2,83.3826280907285),
('20190104',3,2,2,84.486699203268),
('20190105',1,3,2,30.8988947281681),
('20190106',1,1,2,93.9157579016345),
('20190101',2,2,2,57.375607860293),
('20190102',1,3,1,89.2867553635664),
('20190103',2,1,2,53.6203705600649),
('20190104',3,2,2,51.1892758799157),
('20190102',4,3,2,88.7989280996901),
('20190103',5,1,2,16.0544664519945),
('20190104',6,2,3,68.4122891405106),
('20190105',7,3,2,99.9542193962382),
('20190106',1,1,2,27.0760649639679),
('20190101',2,2,2,80.3659325160312),
('20190102',3,1,2,46.6830434401372),
('20190103',4,2,2,17.8136162839473),
('20190104',5,3,2,24.0275434043145),
('20190105',6,1,2,69.2809684711242),
('20190106',7,2,2,47.1237174369684),
('20190101',1,3,2,54.5741426819041),
('20190102',2,1,2,56.3341190264456),
('20190103',3,2,3,45.7758239493993),
('20190104',4,3,2,57.3743654892277),
('20190104',5,1,2,12.8778356676197),
('20190105',6,2,2,57.4290823112698),
('20190106',7,3,2,7.62413822493958),
('20190101',8,1,2,83.2414990251212),
('20190102',4,2,2,12.1190900785242),
('20190103',5,3,2,29.1514006459124),
('20190104',6,3,2,80.4226935785837),
('20190105',7,1,1,24.3019147234849),
('20190106',8,2,2,48.1587878909843),
('20190101',2,3,3,69.0430712465215),
('20190102',1,2,1,70.5785784741791),
('20190103',2,3,2,59.6275487580817),
('20190104',3,1,2,9.75048547367604),
('20190101',4,2,2,85.5747241575188),
('20190102',5,3,2,27.7427906098986),
('20190103',6,3,2,53.7134551376784),
('20190104',7,1,2,41.4115165251858),
('20190105',8,2,3,5.87688814880816),
('20190106',1,3,1,48.1647039559651),
('20190101',2,3,2,59.4880292756693),
('20190102',3,3,3,30.764638618418),
('20190103',4,1,2,69.4250502253285),
('20190104',1,2,2,70.790767328531),
('20190105',2,3,3,30.0005776333261),
('20190106',3,1,1,69.3943893470838),
('20190101',4,2,2,48.1694391125192),
('20190102',5,3,3,85.7672098183328),
('20190103',6,1,2,27.3352427842454),
('20190104',7,2,3,98.9634327403235),
('20190105',8,3,1,13.3461093638397),
('20190106',1,3,2,15.466501217915),
('20190101',2,3,3,38.5055061852599),
('20190102',1,1,1,44.9593427864668),
('20190103',2,2,2,38.7444880384241),
('20190104',3,3,3,53.5457896085076)


