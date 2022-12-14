INSERT INTO person (name, person_number) VALUES
('Pontus Svensson', '200905211337'),
('Ludvig Perisic', '200803101111'),
('Charlott Lukaku', '200712203412'),
('Olle Modric', '200906067867'),
('Carl Rundfelt', '200808125628'),
('Zara Larsson', '200712311234'),
('Sushila Buckley','200606044321'),
('Onyekachi Rothenberg', '200801014714'),
('Lian Terzic', '200902276800'),
('Fabio Kudrna', '200810313096'),
('Kristen Brannon', '2008021511'),
('Mihaila Chancellor', '200701085204'),
('Kayden Rosario', '200912246085'),
('Frida Walters', '200820098002'),
('Nora Cherry', '200907239838'),
('Laylah Rowland', '200810224580'),
('Darian Branch', '200901117476'),
('Konner Mata', '200802192707'),
('Jaiden Moore', '200811248894'),
('Aubrey Gould', '200908296138'),
('Violet Duncan', '200808219589'),
('Jazlene Douglas', '200805264203'),
('Camryn Morris', '200807266359'),
('Harold Mitchell', '200709082929'),
('Miracle Petty', '200702157520'),
('Kingston Church', '200911308856'),
('Mara Blackburn', '200909118165'),
('Kai Burton', '200812158047'),
('Haylie Ibarra', '200905153676'),
('Clarissa Monroe', '200901043228'),
('Rachel Santana', '200707091736'),
('Finn Riggs', '200905062365'),
('Lesly Mueller', '200711091042'),
('Zaria Holt', '200701019897'),
('Cameron Dennis', '200810075855'),
('Harry Shepard', '200812121034'),
('Aliza Park', '200906243345'),
('Jasmine Stephens', '200908037722'),
('Hayley Henderson', '200612084890'),
('Leonardo Morse', '200810245197'),
('Joseph Frost', '200802050541'),
('Carsen Wyatt', '200701225037'),
('Giovanna Kennedy', '200901293393'),
('Beckett Wu', '200606126913'),
('Chase Dennis', '200905091170'),
('Kianna Jefferson', '200704128187'),
('Eliza Pope', '200902227991'),
('Iris Vasquez', '200908099366'),
('Tyree Fuentes', '200706198413'),
('Peyton Jenkins', '200908045267'),
('Asher Roach', '200703031311'),
('Barrett Graves', '200801031417'),
('Rip Harambe', '198004213456'),
('Ye West', '197706086969'),
('Epique Saksgueye', '199002031928'),
('Aladdin Doku', '198509284905'),
('Tom Stack', '198804012102'),
('Eric Andre', '199212300413'),
('Luka James', '198108144532'),
('Giannis Ferrari', '198708105793'),
('Charles Heisenberg', '197011053214'),
('Carlos Arces', '197805061821');

INSERT INTO student (person_id) VALUES
((SELECT id FROM person WHERE id=1)),
((SELECT id FROM person WHERE id=2)),
((SELECT id FROM person WHERE id=3)),
((SELECT id FROM person WHERE id=4)),
((SELECT id FROM person WHERE id=5)),
((SELECT id FROM person WHERE id=6)),
((SELECT id FROM person WHERE id=7)),
((SELECT id FROM person WHERE id=8)),
((SELECT id FROM person WHERE id=9)),
((SELECT id FROM person WHERE id=10)),
((SELECT id FROM person WHERE id=11)),
((SELECT id FROM person WHERE id=12)),
((SELECT id FROM person WHERE id=13)),
((SELECT id FROM person WHERE id=14)),
((SELECT id FROM person WHERE id=15)),
((SELECT id FROM person WHERE id=16)),
((SELECT id FROM person WHERE id=17)),
((SELECT id FROM person WHERE id=18)),
((SELECT id FROM person WHERE id=19)),
((SELECT id FROM person WHERE id=20)),
((SELECT id FROM person WHERE id=21)),
((SELECT id FROM person WHERE id=22)),
((SELECT id FROM person WHERE id=23)),
((SELECT id FROM person WHERE id=24)),
((SELECT id FROM person WHERE id=25)),
((SELECT id FROM person WHERE id=26)),
((SELECT id FROM person WHERE id=27)),
((SELECT id FROM person WHERE id=28)),
((SELECT id FROM person WHERE id=29)),
((SELECT id FROM person WHERE id=30)),
((SELECT id FROM person WHERE id=31)),
((SELECT id FROM person WHERE id=32)),
((SELECT id FROM person WHERE id=33)),
((SELECT id FROM person WHERE id=34)),
((SELECT id FROM person WHERE id=35)),
((SELECT id FROM person WHERE id=36)),
((SELECT id FROM person WHERE id=37)),
((SELECT id FROM person WHERE id=38)),
((SELECT id FROM person WHERE id=39)),
((SELECT id FROM person WHERE id=40)),
((SELECT id FROM person WHERE id=41)),
((SELECT id FROM person WHERE id=42)),
((SELECT id FROM person WHERE id=43)),
((SELECT id FROM person WHERE id=44)),
((SELECT id FROM person WHERE id=45)),
((SELECT id FROM person WHERE id=46)),
((SELECT id FROM person WHERE id=47)),
((SELECT id FROM person WHERE id=48)),
((SELECT id FROM person WHERE id=49)),
((SELECT id FROM person WHERE id=50)),
((SELECT id FROM person WHERE id=51)),
((SELECT id FROM person WHERE id=52));

INSERT INTO instructor (teaches_ensembles, person_id) VALUES
('1', (SELECT id FROM person WHERE id=53)),
('0', (SELECT id FROM person WHERE id=54)),
('0', (SELECT id FROM person WHERE id=55)),
('1', (SELECT id FROM person WHERE id=56)),
('1', (SELECT id FROM person WHERE id=57)),
('0', (SELECT id FROM person WHERE id=58)),
('0', (SELECT id FROM person WHERE id=59)),
('1', (SELECT id FROM person WHERE id=60)),
('1', (SELECT id FROM person WHERE id=61)),
('0', (SELECT id FROM person WHERE id=62));

INSERT INTO teachable_instruments (type) VALUES
('Guitar'),
('Piano'),
('Bass'),
('Saxophone'),
('Trumpet'),
('Drums'),
('Violin'),
('Cello'),
('Accordion');

INSERT INTO instructor_instruments (instrument_id, instructor_id) VALUES
((SELECT id FROM teachable_instruments WHERE type='Accordion'), (SELECT id FROM instructor WHERE id=1)),
((SELECT id FROM teachable_instruments WHERE type='Piano'), (SELECT id FROM instructor WHERE id=1)),
((SELECT id from teachable_instruments WHERE type='Drums'), (SELECT id FROM instructor WHERE id=2)),
((SELECT id from teachable_instruments WHERE type='Saxophone'), (SELECT id FROM instructor WHERE id=3)),
((SELECT id FROM teachable_instruments WHERE type='Guitar'), (SELECT id FROM instructor WHERE id=4)),
((SELECT id FROM teachable_instruments WHERE type='Bass'), (SELECT id FROM instructor WHERE id=4)),
((SELECT id FROM teachable_instruments WHERE type='Violin'), (SELECT id FROM instructor WHERE id=5)),
((SELECT id FROM teachable_instruments WHERE type='Cello'), (SELECT id FROM instructor WHERE id=5)),
((SELECT id FROM teachable_instruments WHERE type='Piano'), (SELECT id FROM instructor WHERE id=5)),
((SELECT id FROM teachable_instruments WHERE type='Bass'), (SELECT id FROM instructor WHERE id=6)),
((SELECT id FROM teachable_instruments WHERE type='Cello'), (SELECT id FROM instructor WHERE id=6)),
((SELECT id FROM teachable_instruments WHERE type='Trumpet'), (SELECT id FROM instructor WHERE id=7)),
((SELECT id FROM teachable_instruments WHERE type='Saxophone'), (SELECT id FROM instructor WHERE id=7)),
((SELECT id FROM teachable_instruments WHERE type='Guitar'), (SELECT id FROM instructor WHERE id=8)),
((SELECT id FROM teachable_instruments WHERE type='Drums'), (SELECT id FROM instructor WHERE id=8)),
((SELECT id FROM teachable_instruments WHERE type='Piano'), (SELECT id FROM instructor WHERE id=9)),
((SELECT id FROM teachable_instruments WHERE type='Violin'), (SELECT id FROM instructor WHERE id=10));

INSERT INTO email_addresses (person_id, email_address) VALUES
(1, 'jdhedden@hotmail.com'),
(2, 'hamilton@optonline.net'),
(3, 'elflord@outlook.com'),
(4, 'rgarton@comcast.net'),
(5, 'lukka@msn.com'),
(6, 'jimmichie@sbcglobal.net'),
(7, 'valdez@att.net'),
(8, 'mahbub@att.net'),
(9, 'ccohen@msn.com'),
(10, 'denton@aol.com'),
(11, 'parkes@comcast.net'),
(12, 'falcao@yahoo.com'),
(13, 'slanglois@icloud.com'),
(14, 'hling@live.com'),
(15, 'epeeist@msn.com'),
(16, 'sscorpio@optonline.net'),
(17, 'pgolle@me.com'),
(18, 'schwaang@verizon.net'),
(19, 'andrei@comcast.net'),
(20, 'wildfire@outlook.com'),
(21, 'aukjan@icloud.com'),
(22, 'lcheng@gmail.com'),
(23, 'benanov@sbcglobal.net'),
(24, 'timlinux@optonline.net'),
(25, 'vganesh@me.com'),
(26, 'harryh@sbcglobal.net'),
(27, 'adamk@aol.com'),
(28, 'satishr@att.net'),
(29, 'breegster@aol.com'),
(30, 'caronni@comcast.net'),
(31, 'podmaster@hotmail.com'),
(32, 'lamprecht@live.com'),
(33, 'zeller@msn.com'),
(34, 'yruan@comcast.net'),
(35, 'murty@comcast.net'),
(36, 'wetter@aol.com'),
(37, 'zyghom@att.net'),
(38, 'sartak@mac.com'),
(39, 'jsmith@optonline.net'),
(40, 'esasaki@msn.com'),
(41, 'dobey@verizon.net'),
(42, 'scotfl@hotmail.com'),
(43, 'lushe@live.com'),
(44, 'dwsauder@att.net'),
(45, 'lcheng@outlook.com'),
(46, 'north@msn.com'),
(47, 'yamla@outlook.com'),
(48, 'jschauma@sbcglobal.net'),
(49, 'dobey@gmail.com'),
(50, 'nachbaur@me.com'),
(51, 'jrkorson@yahoo.com'),
(52, 'mcast@verizon.net'),
(53, 'liedra@msn.com'),
(54, 'oevans@optonline.net'),
(55, 'nichoj@att.net'),
(56, 'augusto@msn.com'),
(57, 'krueger@me.com'),
(58, 'grothoff@hotmail.com'),
(59, 'portele@comcast.net'),
(60, 'crowl@live.com'),
(61, 'weidai@me.com'),
(62, 'sscorpio@yahoo.com'),
(1, 'bigdaddy345@hotmail.com'),
(43, 'randy@gmail.com'),
(21, 'foppa@yahoo.com');

INSERT INTO phone_numbers (person_id, phone_number) VALUES
(1, '(311) 679-6371'),
(2, '(376) 896-0928'),
(3, '(423) 353-4146'),
(4, '(734) 477-7227'),
(5, '(944) 796-6987'),
(6, '(470) 765-3830'),
(7, '(605) 588-4839'),
(8, '(361) 589-8154'),
(9, '(512) 506-8456'),
(10, '(823) 413-1174'),
(11, '(769) 709-6020'),
(12, '(396) 601-2144'),
(13, '(309) 316-1297'),
(14, '(264) 221-0854'),
(15, '(290) 869-5957'),
(16, '(567) 981-4981'),
(17, '(344) 320-7315'),
(18, '(527) 792-6432'),
(19, '(915) 871-2761'),
(20, '(890) 503-8603'),
(21, '(398) 781-6320'),
(22, '(349) 340-3735'),
(23, '(919) 678-1112'),
(24, '(819) 542-6544'),
(25, '(851) 708-6995'),
(26, '(902) 543-4362'),
(27, '(460) 945-7998'),
(28, '(579) 964-9971'),
(29, '(544) 885-7303'),
(30, '(798) 833-4326'),
(31, '(819) 425-7103'),
(32, '(851) 445-4967'),
(33, '(979) 370-5415'),
(34, '(972) 529-8562'),
(35, '(578) 315-4562'),
(36, '(952) 753-1482'),
(37, '(296) 391-6601'),
(38, '(552) 807-0283'),
(39, '(693) 734-2164'),
(40, '(430) 793-8825'),
(41, '(348) 727-9966'),
(42, '(312) 620-8497'),
(43, '(657) 568-9630'),
(44, '(343) 842-9680'),
(45, '(569) 492-4329'),
(46, '(967) 282-4638'),
(47, '(781) 565-4827'),
(48, '(504) 762-2351'),
(49, '(761) 366-8916'),
(50, '(381) 677-1802'),
(51, '(824) 568-5104'),
(52, '(576) 212-9151'),
(53, '(947) 352-1954'),
(54, '(604) 209-3252'),
(55, '(655) 712-9891'),
(56, '(960) 989-4038'),
(57, '(875) 232-9347'),
(58, '(610) 896-6421'),
(59, '(592) 694-9935'),
(60, '(730) 280-3231'),
(61, '(739) 417-9878'),
(62, '(698) 901-5786'),
(62, '(924) 305-5312'),
(32, '(538) 758-2608'),
(29, '(689) 931-5058');


INSERT INTO address (street, zip, city) VALUES
('1112 S Huntington St', '46567', 'Syracuse'),
('7 Village Square Shopping Ctr', '60915', 'Bradley'),
('500 Demott Ln', '08873', 'Somerset'),
('4807 3rd Ave', '68845', 'Kearney'),
('1080 E Pecos Rd', '85225', 'Chandler'),
('5118 S Rural Rd', '85282', 'Tempe'),
('10719 Rodeo Dr', '34202', 'Lakewood Ranch'),
('3942 Spruce St', '19104', 'Philadelphia'),
('506 E Live Oak Ave', '91006', 'Arcadia'),
('3180 Kingsdale Ctr', '43221', 'Columbus'),
('12870 Metcalf Ave', '66213', 'Overland'),
('15000 U.S. 31', '49417', 'Grand Haven'),
('425 Ohio St', '54902', 'Oshkosh'),
('696 Hanes Mall Blvd', '27103', 'Winston-Salem'),
('12857 Three Oaks Rd', '49125', 'Sawyer'),
('3500 O St NW', '20007', 'Georgetown'),
('1109 Jefferson Davis Hwy', '22401', 'Fredericksburg'),
('8500 Woodsonia Dr', '66227', 'Lenexa'),
('1661 Riverside Ave', '32204', 'Jacksonville'),
('9800 Commonwealth Blvd', '22032', 'Fairfax'),
('1841 E Apple Ave', '49442', 'Muskegon'),
('4240 Balmoral Dr SW', '35801', 'Huntsville'),
('19 Yawkey Way', '02215', 'Boston'),
('7800 Rogue River Dr', '97539', 'Shady Cove'),
('45 Oak St', '30075', 'Roswell'),
('1111 Judicial Center Dr', '80601', 'Brighton'),
('6059 26 Mile Rd', '48094', 'Washington'),
('3109 McCart Ave', '76110', 'Fort Worth'),
('2592 S 5600 W', '84120', 'Salt Lake City'),
('832 Livingston Ave', '08902', 'North Brunswick'),
('4701 Brookfield Dr', '95823', 'Sacramento'),
('2482 Montgomery St', '95965', 'Oroville'),
('Salem, OR 97304', '97304', 'Salem'),
('923 S Main St', '60102', 'Algonquin'),
('1909 N Hwy 17', '29464', 'Mt Pleasant'),
('20938 Van Born Rd', '48125', 'Dearborn Heights'),
('7011 Nundy A venue', '33568', 'Gibsonton'),
('400 Paintersville Rd', '15672', 'New Stanton'),
('905 E Jericho Turnpike', '11746', 'Huntington Station'),
('2901 Princeton Ave', '19149', 'Philadelphia'),
('409 Bypass Rd', '23185', 'Williamsburg'),
('11605 W Belleview Ave', '80127', 'Littleton'),
('3061 Verona Ave', '30518', 'Buford'),
('4900 County Road 101 (South)', '55345', 'Minnetonka'),
('651 Carlyle Ave', '62221', 'Belleville'),
('10223 Sahara Dr', '78216', 'San Antonio'),
('Wichita, KS 67230', '67230', 'Wichita'),
('3470 W 6th St', '90020', 'Los Angeles'),
('3505 Pomona Blvd', '91768', 'Pomona'),
('2968 Ravenswood Rd', '33312', 'Fort Lauderdale'),
('909 Mary St W', '78704', 'Austin'),
('2603 Glenwood Ave #101', '27608', 'Raleigh'),
('3204 Paris Rd', '70043', 'Chalmette'),
('259 Allandale Rd', '02467', 'Boston'),
('621 Camden St', '78215', 'San Antonio'),
('911 W Grace St', '23220', 'Richmond'),
('3 Main St', '12561', 'New Paltz');

INSERT INTO person_address (person_id, address_id) VALUES
(1, 1),
(36, 1),
(2, 2),
(13, 2),
(19, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11), 
(12, 12),
(22, 12),
(14, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(20, 19),
(21, 20),
(23, 21),
(24, 22),
(25, 23),
(42, 23),
(26, 24),
(27, 25),
(27, 26),
(28, 27),
(50, 27),
(38, 27),
(29, 28),
(29, 29),
(30, 30),
(35, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(37, 35),
(39, 36),
(40, 37),
(41, 38),
(43, 39),
(44, 40),
(45, 41),
(46, 42),
(47, 43),
(48, 44),
(49, 45),
(51, 46),
(52, 47),
(53, 48),
(54, 49),
(55, 50),
(56, 51),
(57, 52),
(58, 53),
(59, 54),
(60, 55),
(61, 56),
(62, 57);


INSERT INTO siblings (student_id, sibling_id) VALUES
(25, 42),
(42, 25),
(22, 12),
(12, 22),
(36, 1),
(1, 36),
(30, 35),
(35, 30),
(2, 13),
(2, 19),
(13, 2),
(19, 2),
(13, 19),
(19, 13),
(38, 50),
(38, 28),
(50, 38),
(28, 38),
(28, 50),
(50,28);

INSERT INTO contact_person_email (email_address) VALUES
('Susan_Weston590@xtwt3.website'),
('Josephine_Dann6729@fhuux.audio'),
('Sloane_Giles2019@c2nyu.meet'),
('Blake_Moore9963@cdpfn.ca'),
('Candice_James1304@nb44i.website'),
('Rick_Knott8974@ohqqh.space'),
('Boris_Appleton2548@voylg.info'),
('Emery_Forth2495@ohqqh.edu'),
('Lucy_Dixon6439@urn0m.audio'),
('Nancy_Oliver1976@iaart.info'),
('Adeline_Parker4022@voylg.site'),
('Henry_Bullock5892@xqj6f.host'),
('Kieth_Wills6277@fhuux.software'),
('Nate_Cavanagh172@6ijur.center'),
('Kimberly_Cartwright7293@xqj6f.website'),
('Benny_Wilson4748@fhuux.mobi'),
('Celia_Seymour345@lhp4j.directory'),
('Bernadette_Stevens9903@y96lx.zone'),
('Denis_Morrow9018@zynuu.website'),
('Renee_Kirby2995@urn0m.store'),
('Jacqueline_Edley1102@kyb7t.org'),
('Rick_Phillips8252@voylg.meet'),
('Anais_Murray8680@bqkv0.video'),
('Julius_Holt1912@chkzl.page'),
('Adela_Eddison1406@dvqq2.website'),
('Chester_Harrison8306@karnv.solutions'),
('Valerie_Phillips8089@mpibr.host'),
('Nina_Spencer5170@yafr7.media'),
('Nick_Egerton7190@nb44i.digital'),
('Stella_Jacobs671@ag5wi.us'),
('Kassandra_Reading2047@iscmr.name'),
('Denis_Brown9009@chkzl.media'),
('Eduardo_Rycroft3687@lyvnc.app'),
('Jaylene_Hewitt2139@ptr6k.net'),
('Erick_Evans1561@zynuu.catering'),
('Brad_Uddin5725@c2nyu.com'),
('Hank_Spencer6553@yfxpw.video'),
('Hayden_Archer3467@yvu30.mobi'),
('Martin_Khan8735@dvqq2.business'),
('Nicole_Truscott8017@yfxpw.property'),
('Lillian_Bennett5361@6ijur.store'),
('Percy_Walsh5757@1kmd3.website'),
('Harmony_Judd6847@dvqq2.media'),
('Celia_Stone9689@nmz0p.info'),
('Benny_Rogan9706@chkzl.zone'),
('Carla_Parr5981@v1wn5.edu'),
('Caleb_Andrews6683@dbxli.catering'),
('Maddison_Eddison5597@jcf8v.space'),
('Chadwick_Irwin6516@ohqqh.digital'),
('Victoria_Uddin8127@lyvnc.space'),
('Liliana_Stanton5613@gnjps.club'),
('Russel_Chadwick8368@mpibr.mobi'),
('Chris_Rogers4852@dvqq2.org'),
('Quinn_Dunbar8641@nb44i.info'),
('Chuck_Lindsay5041@6ijur.website'),
('Barney_Sanchez3505@nanoff.club'),
('Ryan_Warden8514@qu9ml.services'),
('Aiden_Roberts5046@ag5wi.shop'),
('Marvin_Sheldon9112@gkvds.audio'),
('Teagan_Newton7891@d9un8.business'),
('Beatrice_Latham6604@mpibr.auction'),
('Teagan_Williams2783@xtwt3.page');

INSERT INTO student_contact_person_email(student_id, email_id) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,2),
(14,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,2),
(20,19),
(21,20),
(21,21),
(22,12),
(23,22),
(23,23),
(24,24),
(25,25),
(26,26),
(27,27),
(28,38),
(29,29),
(30,30),
(31,31),
(32,32),
(33,33),
(34,34),
(35,30),
(36,1),
(37,35),
(37,36),
(37,37),
(38,38),
(39,39),
(40,40),
(41,41),
(42,25),
(43,42),
(43,43),
(44,44),
(45,45),
(46,46),
(47,47),
(48,48),
(49,49),
(50,38),
(51,51),
(52,52),
(3,53),
(8,54),
(9,55),
(52,56),
(48,57),
(47,58),
(29, 59),
(40,60),
(17,61),
(18,62);

INSERT INTO contact_person_phone (phone_number) VALUES
('(998) 614-9929'),
('(773) 594-2227'),
('(834) 413-1295'),
('(763) 236-4545'),
('(608) 921-7479'),
('(570) 305-6088'),
('(917) 406-8088'),
('(897) 928-3926'),
('(737) 283-7962'),
('(967) 913-4837'),
('(470) 216-9398'),
('(611) 946-2899'),
('(228) 790-4391'),
('(935) 619-4658'),
('(305) 613-9527'),
('(987) 622-0567'),
('(299) 259-0717'),
('(355) 892-7722'),
('(967) 588-4992'),
('(231) 739-6821'),
('(748) 256-4671'),
('(319) 247-4952'),
('(630) 955-4276'),
('(523) 503-1424'),
('(996) 206-8004'),
('(952) 211-3862'),
('(902) 900-1846'),
('(871) 339-4465'),
('(625) 398-2574'),
('(723) 523-7371'),
('(978) 522-8115'),
('(765) 348-4347'),
('(686) 341-3672'),
('(575) 838-4202'),
('(910) 441-7281'),
('(210) 725-8533'),
('(295) 695-3274'),
('(567) 857-0657'),
('(646) 329-3709'),
('(626) 289-7949'),
('(927) 974-7249'),
('(662) 909-4499'),
('(723) 322-9785'),
('(505) 387-1985'),
('(605) 907-7075'),
('(258) 428-0936'),
('(664) 587-8750'),
('(267) 964-7328'),
('(217) 300-5659'),
('(308) 721-8857'),
('(855) 556-3035'),
('(476) 591-7920'),
('(901) 863-0390'),
('(362) 406-6716'),
('(770) 421-4869'),
('(492) 262-2637'),
('(740) 982-1793'),
('(529) 982-2116'),
('(702) 559-7840'),
('(426) 571-8656'),
('(523) 564-2267'),
('(716) 934-6127');

INSERT INTO student_contact_person_phone (student_id, phone_id) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,2),
(14,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,2),
(20,19),
(21,20),
(21,21),
(22,12),
(23,22),
(23,23),
(24,24),
(25,25),
(26,26),
(27,27),
(28,38),
(29,29),
(30,30),
(31,31),
(32,32),
(33,33),
(34,34),
(35,30),
(36,1),
(37,35),
(37,36),
(37,37),
(38,38),
(39,39),
(40,40),
(41,41),
(42,25),
(43,42),
(43,43),
(44,44),
(45,45),
(46,46),
(47,47),
(48,48),
(49,49),
(50,38),
(51,51),
(52,52),
(3,53),
(8,54),
(9,55),
(52,56),
(48,57),
(47,58),
(29, 59),
(40,60),
(17,61),
(18,62);

INSERT INTO instruments_for_rental (brand, type, instrument_price) VALUES
('Gibson', 'guitar', 200),
('Fender', 'bass', 150),
('Holstein', 'violin', 400),
('Yamaha', 'piano', 300),
('Yanagisawa', 'saxophone', 250),
('Jupiter', 'trumpet', 150),
('Ludwig', 'drums', 500),
('Shen', 'cello', 450),
('Roland', 'accordion', 300),
('Fender', 'guitar', 200),
('Gretsh', 'drums', 400),
('Kawai', 'piano', 350),
('Yamaha', 'violin', 300),
('Yamaha', 'saxophone', 200),
('Rickenbacker', 'bass', 250),
('Getzen', 'trumpet', 200);

INSERT INTO rent_instrument (date_when_rented, instrument_id, student_id) VALUES
('2023-01-05', 1, 1),
('2022-12-13', 14, 32),
('2022-10-31', 3, 13),
('2022-11-12', 8, 8),
('2023-01-02', 2, 40),
('2022-08-23', 4, 18),
('2022-09-10', 16, 2),
('2022-12-01', 5, 52),
('2022-10-09', 7, 51),
('2022-11-11', 10, 43);

INSERT INTO present_skill (skill, student_id) VALUES
('guitar, intermediate', 1),
('bass, beginner', 13),
('saxophone, advanced', 20),
('piano, intermediate', 21),
('drums, advanced', 22),
('bass, intermediate', 1),
('trumpet, beginner', 2),
('saxophone, intermediate', 2),
('accordion, intermediate', 52),
('violin, advanced', 19);

INSERT INTO lesson_prices (sibling_discount, price, skill_level) VALUES
(15, 100, 'Beginner'), --Individual*
(25 ,120, 'Intermediate'),
(35, 150, 'Advanced'), --*
(10, 75, 'Beginner'), -- Group --**
(15, 100, 'Intermediate'),
(25, 120, 'Advanced'), --**
(15, 100, NULL); -- Ensemble

INSERT INTO group_lesson (room, time, minimum_students, level, instructor_salary, instrument, instructor_id, price_id) VALUES
('101', '2023-03-01 13:00', 6, 'Beginner', 1000, 'Guitar', 4, 4),
('101', '2022-10-10 10:00', 5, 'Beginner', 1000, 'Guitar,', 4, 4),
('102', '2022-11-21 13:00', 5, 'Intermediate', 1250, 'Piano', 1, 5),
('201', '2022-11-01 08:00', 4, 'Advanced', 1500, 'Accordion', 1, 6),
('301', '2022-12-12 15:00', 6, 'Beginner', 1000, 'Saxophone', 3, 4),
('202', '2023-01-05 14:00', 4, 'Intermediate', 1250, 'Trumpet', 7, 5),
('103', '2022-09-29 13:00', 5, 'Advanced', 1500, 'Bass', 6, 6),
('202', '2023-01-27 10:00', 6, 'Beginner', 1000, 'Bass', 2, 4),
('202', '2022-01-01 13:00', 5, 'Intermediate', 1250, 'Accordion', 1, 5),
('101', '2022-02-21 11:00', 4, 'Advanved', 1500, 'Piano', 1, 6),
('301', '2022-05-05 08:00', 5, 'Beginner', 1000, 'Bass', 6, 4),
('302', '2022-06-01 10:00', 6, 'Intermediate', 1250, 'Trumpet', 7, 5);

INSERT INTO individual_lesson (room, time, level, instructor_salary, instrument, price_id, student_id, instructor_id) VALUES
('203', '2022-10-01 08:00', 'Beginner', 1250, 'Cello', 1, 50, 5),
('101', '2022-09-30 15:00', 'Intermediate', 1500, 'Guitar', 2, 14, 8),
('303', '2022-08-25 13:00', 'Advanced', 1750, 'Drums', 3, 22, 2),
('102', '2022-11-23 10:00', 'Beginner', 1250, 'Accordion', 1, 10, 1),
('202', '2022-12-11 08:00', 'Intermediate', 1500, 'Bass', 2, 49, 4),
('203', '2022-08-14 10:00', 'Advanced', 1750, 'Saxophone', 3, 11, 7),
('202', '2023-01-11 08:00', 'Intermediate', 1500, 'Bass', 2, 49, 4),
('202', '2023-01-17 08:00', 'Intermediate', 1500, 'Bass', 2, 49, 4),
('301', '2022-01-01 13:00', 'Beginner', 1250, 'Trumpet', 1, 8, 10),
('201', '2022-03-11 08:00', 'Intermediate', 1500, 'Drums', 2, 32, 2),
('302', '2022-04-12 13:00', 'Advanced', 1750, 'Guitar', 3, 21, 8),
('201', '2022-02-13 11:00', 'Beginner', 1250, 'Trumpet', 1, 8, 10),
('202', '2022-05-10 13:00', 'Intermediate', 1500, 'Bass', 2, 49, 4);

INSERT INTO ensemble (room, time, minimum_students, maximum_students, genre, instructor_salary, instructor_id, price_id) VALUES
('101', '2022-08-08 13:00', 8, 16, 'Jazz', 2000, 1, 7),
('202', '2022-09-20 10:00', 6, 15, 'Rock', 1800, 4, 7),
('301', '2022-10-31 09:30', 10, 20, 'Classical', 2200, 5, 7),
('201', '2022-12-21 10:00', 7, 15, 'Folk', 1800, 8, 7),
('301', '2023-01-06 15:00', 6, 12, 'Rock', 1800, 4, 7),
('301', '2023-01-09 10:00', 5, 10, 'Classical', 1600, 9, 7),
('202', '2023-01-10 13:00', 4, 7, 'Rock', 1800, 1, 7),
('101', '2023-01-12 14:00', 8, 15, 'Jazz', 2000, 8, 7),
('201', '2023-01-16 11:00', 5, 9, 'Classical', 1600, 5, 7),
('101', '2023-01-18 10:00', 6, 13, 'Rock', 1800, 1, 7),
('301', '2023-01-20 08:00', 8, 15, 'Folk', 2000, 4, 7),
('102', '2023-01-19 13:00', 5, 10, 'Jazz', 1600, 9, 7),
('202', '2023-01-17 10:00', 4, 7, 'Rock', 1600, 1, 7),
('101', '2022-01-16 09:00', 4, 7, 'Rock', 1600, 1, 7),
('102', '2022-01-30 14:00', 5, 7, 'Jazz', 1600, 8, 7),
('203', '2022-02-20 10:00', 8, 11, 'Classical', 1800, 5, 7),
('101', '2022-03-14 11:00', 6, 9, 'Folk', 1600, 4, 7),
('202', '2022-04-20 10:00', 7, 10, 'Jazz', 1800, 8, 7),
('301', '2022-06-02 09:00', 5, 8, 'Folk', 1600, 4, 7);

INSERT INTO enrolled_students_group_lesson (lesson_id, student_id) VALUES
(2, 42),
(2, 26),
(2, 28),
(2, 50),
(2, 3),
(2, 18),
(3, 21),
(3, 49),
(3, 24),
(3, 23),
(3, 11),
(4, 9),
(4, 14),
(4, 32),
(4, 17),
(5, 52),
(5, 50),
(5, 19),
(5, 12),
(6, 51),
(6, 38),
(6, 34),
(6, 39),
(6, 21),
(7, 47),
(7, 32);

INSERT INTO enrolled_students_ensemble (ensemble_id, student_id) VALUES
(1, 13),
(1, 34),
(1, 35),
(1, 43),
(1, 11),
(1, 15),
(1, 38),
(1, 40),
(1, 6),
(1, 19),
(1, 27),
(2, 20),
(2, 51),
(2, 9),
(2, 23),
(2, 42),
(2, 25),
(2, 40),
(2, 37),
(3, 38),
(3, 2),
(3, 7),
(3, 51),
(3, 23),
(3, 11),
(3, 26),
(3, 44),
(3, 28),
(3, 8),
(3, 52),
(3, 18),
(4, 32),
(4, 24),
(4, 2),
(4, 23),
(4, 12),
(4, 39),
(4, 47),
(4, 13),
(4, 9),
(5, 1),
(5, 33),
(5, 12),
(5, 10),
(5, 3),
(5, 49),
(5, 22),
(5, 11),
(5, 13),
(5, 40)
(5, 5),
(5, 6),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(9, 6),
(9, 7),
(10, 8),
(10, 9),
(10, 11),
(10, 12),
(10, 13),
(11, 14),
(11, 15),
(11, 16),
(12, 17),
(12, 18),
(12, 19),
(12, 20),
(12, 21),
(12, 22),
(12, 23),
(12, 24),
(12, 25),
(13, 26),
(13, 27),
(13, 28),
(13, 29),
(13, 30),
(13, 31),
(13, 32);


INSERT INTO times_available (instructor_id, time_available) VALUES
(3, '2023-01-05 10:00'),
(10, '2023-01-10 13:00'),
(8, '2023-02-01 09:00'),
(2, '2023-01-30 15:00'),
(10, '2023-03-27 10:00'),
(4, '2023-01-17 08:00'),
(9, '2023-02-21 14:00'),
(4, '2023-02-02 08:00'),
(6, '2023-01-06 11:00'),
(5, '2023-03-30 13:00'),
(1, '2023-02-27 09:00'),
(7, '2023-01-08 10:00');
