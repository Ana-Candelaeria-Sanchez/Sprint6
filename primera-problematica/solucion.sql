-- Primera Problematica 
--1er punto 
DROP TABLE IF EXISTS tipo_cliente

CREATE TABLE IF NOT EXISTS "tipo_cliente" (
           "tipo_cliente_id"  INTEGER NOT NULL,
		   "tipo_cliente_nombre"  TEXT nor,
		   PRIMARY KEY ( "tipo_cliente_id" )
);

INSERT INTO "tipo_cliente" ( "tipo_cliente_nombre") VALUES 
          (  'CLASSIC' ),
		  (  'GOLD' ),
		  ( 'BLACK' ) ; 

SELECT * FROM tipo_cliente

DROP TABLE IF EXISTS tipo_cuenta

CREATE TABLE IF NOT EXISTS "tipo_cuenta" (
           "tipo_cuenta_id"  INTEGER NOT NULL,
		   "tipo_cuenta_nombre"  TEXT nor,
		   PRIMARY KEY ( "tipo_cuenta_id" )
);
		   
INSERT INTO tipo_cuenta ( tipo_cuenta_nombre) VALUES 
          ( 'Caja de ahorro en pesos'),  ( 'Caja de ahorro en dolares'), ( 'Cuenta corriente' ); 

SELECT * FROM tipo_cuenta

DROP TABLE IF  EXISTS tipo_tarjeta

CREATE TABLE IF NOT EXISTS "tipo_tarjeta" (
    "tipo_tarjeta_id" INTEGER NOT NULL,
		   "tipo_tarjeta_nombre"  TEXT nor,
		   PRIMARY KEY ( "tipo_tarjeta_id" )
);
		   
INSERT INTO tipo_tarjeta (tipo_tarjeta_nombre) VALUES 
          ( 'CREDITO') , 
		  ( 'DEBITO');
		  
SELECT * FROM tipo_tarjeta

-- 2do punto
CREATE TABLE IF NOT EXISTS marca_tarjeta (
           marca_tarjeta_id  INTEGER NOT NULL,
		   marca_tarjeta_nombre TEXT nor,
		   PRIMARY KEY ( marca_tarjeta_id)
);

INSERT INTO marca_tarjeta ( marca_tarjeta_nombre) VALUES 
          (  'MASTERCARD'),
		  (  'VISA' ) ;	

SELECT * FROM marca_tarjeta

DROP TABLE IF EXISTS `tarjeta`;

DROP TABLE IF EXISTS 'tarjeta';

CREATE TABLE tarjeta(
	'tarjeta_id' INTEGER NOT NULL,
	'numero_tarjeta' VARCHAR(20),
	'tarjeta_CVV' varchar(3),
	'tarjeta_fecha_de_otorgamiento' TEXT NOT NULL,
	'tarjeta_fecha_de_expiracion' TEXT NOT NULL,
    tipo_cliente_id INTEGER,
   tipo_tarjeta_id INTEGER,
   marca_tarjeta_id INTEGER,
	PRIMARY KEY ('tarjeta_id')
	FOREIGN KEY ( marca_tarjeta_id )
	REFERENCES marca_tarjeta ( marca_tarjeta_id),
	FOREIGN KEY (  tipo_tarjeta_id)
	REFERENCES tipo_tarjeta ( tipo_tarjeta_id),
	FOREIGN KEY (tipo_cliente_id)
	REFERENCES tipo_cliente (tipo_cliente_id)
) ;

INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("523 87776 83237 256","422","2023-00-02","2022-06-12"),
  ("342786652278692","949","2023-31-02","2022-50-30"),
  ("3428 284323 62436","986","2023-00-09","2021-20-12"),
  ("553 24513 45648 861","657","2023-30-07","2021-35-23"),
  ("5427876436264897","251","2023-03-21","2021-10-28"),
  ("3783 438228 97733","306","2023-35-22","2022-14-06"),
  ("453 98452 36383 871","267","2022-41-04","2023-37-07"),
  ("538 99115 54337 781","313","2022-43-22","2022-57-27"),
  ("377363515713311","455","2021-27-01","2023-15-16"),
  ("5263288579424352","771","2022-35-14","2023-19-02"),
  ("347296269941356","924","2021-54-20","2023-20-26"),
  ("5245 7464 2743 2722","796","2023-15-25","2022-24-31"),
  ("5479 7227 8867 5198","987","2022-14-11","2022-39-05"),
  ("378488874472610","440","2023-42-24","2021-03-16"),
  ("5468321854774242","539","2023-20-01","2022-44-22"),
  ("4485 8498 8364 2823","539","2021-20-18","2022-07-25"),
  ("515638 3397844681","287","2022-03-31","2023-35-22"),
  ("542651 189235 7452","639","2023-34-28","2021-56-27"),
  ("3757 432254 62469","536","2022-49-18","2022-58-18"),
  ("3424 544372 64855","376","2022-37-21","2023-54-06");
  
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("453 97834 84886 651","432","2022-25-15","2023-16-02"),
  ("4024007188655382","345","2022-44-14","2021-01-25"),
  ("3476 465262 23388","566","2023-00-10","2023-53-05"),
  ("448527 4553455655","455","2021-31-05","2023-08-03"),
  ("546 89539 42242 889","209","2021-00-15","2022-18-24"),
  ("4532 4978 2535 1286","233","2022-22-02","2022-47-21"),
  ("448 55675 64356 832","711","2022-16-05","2023-57-25"),
  ("3448 782365 56376","212","2023-23-22","2022-19-03"),
  ("5328 8212 4453 9551","191","2023-15-26","2021-23-26"),
  ("528 55534 57716 532","309","2021-32-02","2023-11-29"),
  ("3783 292824 77629","353","2022-47-08","2023-02-21"),
  ("346957862163786","897","2021-14-15","2021-08-08"),
  ("4556 685 43 7254","234","2022-52-18","2021-35-19"),
  ("344697687557596","900","2022-37-24","2022-45-25"),
  ("4929773953450","429","2021-59-01","2022-18-09"),
  ("453223 5389422758","997","2022-14-14","2022-54-24"),
  ("3797 645971 24954","142","2021-47-15","2023-21-24"),
  ("5377 1481 5324 7178","895","2023-52-26","2021-57-28"),
  ("4983711523523168","244","2022-48-16","2023-25-20"),
  ("3435 732256 15843","874","2022-25-15","2022-59-23");
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("453263 313614 6375","358","2023-05-17","2022-21-26"),
  ("3776 588158 21320","839","2023-50-01","2023-32-13"),
  ("4556853972645","626","2021-52-18","2022-28-08"),
  ("4539833973578","172","2022-11-26","2021-37-27"),
  ("3738 232384 34564","177","2022-54-21","2022-27-05"),
  ("349151623362278","517","2022-23-09","2022-06-14"),
  ("5583563643515879","468","2022-30-19","2021-29-02"),
  ("511 63347 87879 216","329","2021-54-23","2021-59-23"),
  ("4024007189737171","998","2023-28-25","2023-59-27"),
  ("4359 7263 8359 3578","437","2022-59-05","2022-04-14");
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("3477 583227 77572","223","2021-45-18","2022-01-30"),
  ("4532 744 38 2559","241","2021-59-28","2021-52-30"),
  ("5129 4628 5879 4322","285","2023-07-19","2023-27-26"),
  ("377973435812298","273","2022-26-19","2021-54-21"),
  ("478918 545833 7595","294","2023-23-13","2022-31-14"),
  ("471615 291532 7229","658","2021-34-18","2021-32-03"),
  ("526147 251211 5564","775","2022-51-08","2022-47-02"),
  ("373579418756867","232","2022-58-18","2021-40-15"),
  ("4485 5484 8566 3258","350","2021-38-04","2021-31-27"),
  ("471 63496 79742 730","136","2022-59-14","2023-00-22"),
  ("347826682722122","485","2022-35-18","2023-25-10"),
  ("491614 629366 2577","679","2021-51-18","2021-49-27"),
  ("5471983741464827","723","2021-19-04","2022-37-08"),
  ("3764 633757 49982","380","2023-45-01","2022-46-19"),
  ("556 35874 58357 352","137","2022-43-30","2023-05-25"),
  ("3434 677637 72274","291","2023-00-22","2023-04-28"),
  ("347168667885578","263","2021-39-12","2021-11-27"),
  ("3724 726523 17797","417","2021-04-10","2021-08-12"),
  ("5227 2747 2533 9871","583","2021-39-27","2023-30-17"),
  ("4741 232 27 6658","117","2022-55-28","2022-21-22");
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("5487732852476423","168","2021-48-18","2021-40-19"),
  ("5323 5573 7668 7264","973","2022-16-23","2023-57-01"),
  ("4556 2868 3641 8734","313","2022-53-06","2023-51-16"),
  ("4485 3545 1532 6572","133","2021-08-13","2022-29-09"),
  ("542 17578 73333 641","291","2022-59-02","2023-37-19"),
  ("4556287255328","442","2021-16-30","2021-47-26"),
  ("3736 832976 33930","898","2022-05-23","2021-33-23"),
  ("3744 483687 33376","582","2022-42-16","2022-19-26"),
  ("5426322371834437","828","2021-06-28","2023-03-08"),
  ("5458454279222547","393","2022-57-22","2021-11-14"),
  ("344364788825923","741","2022-42-01","2022-37-13"),
  ("3445 928637 25531","650","2021-05-21","2023-00-07"),
  ("523 18927 52623 273","416","2023-43-23","2022-41-23"),
  ("5252 2626 9316 8784","770","2023-51-24","2022-33-20"),
  ("5124 2287 5442 6664","325","2022-31-05","2023-51-14"),
  ("3736 815227 43896","451","2021-11-04","2022-19-11"),
  ("345279568822123","194","2022-22-12","2022-40-16"),
  ("4556158295172534","445","2021-20-08","2023-18-02"),
  ("519348 851993 7324","767","2022-48-31","2022-28-17"),
  ("5156878474518249","673","2023-41-28","2022-47-30");
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("377495233659622","579","2022-39-22","2023-32-16"),
  ("492964 783496 7826","114","2023-08-30","2022-13-30"),
  ("3486 663692 49232","603","2022-19-25","2022-08-13"),
  ("4716824443585","562","2023-29-21","2022-44-07"),
  ("4248393237128963","197","2021-01-30","2022-58-22"),
  ("542264 485372 6383","641","2023-55-14","2023-20-17"),
  ("3768 374394 62882","790","2022-40-25","2022-48-22"),
  ("5468 3652 7124 9825","737","2022-37-30","2021-09-16"),
  ("4485527162880","955","2022-27-24","2022-25-16"),
  ("3423 387474 27247","533","2023-58-10","2021-18-09");
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("547156 887644 4650","694","2023-44-03","2022-02-12"),
  ("4499667667787257","565","2021-24-30","2022-25-27"),
  ("4929 7641 7548 2487","973","2022-01-26","2023-06-23"),
  ("372234366857827","670","2021-05-17","2022-26-29"),
  ("537538 677156 9548","558","2022-56-16","2023-15-26"),
  ("3725 424334 54984","564","2023-37-03","2023-33-14"),
  ("3727 128256 63456","499","2023-20-13","2022-33-16"),
  ("346994486227770","790","2021-56-11","2021-20-19"),
  ("3713 719449 18340","638","2023-22-29","2023-30-03"),
  ("378938234543559","253","2023-41-14","2023-18-22"),
  ("471684 7587681676","999","2023-17-24","2022-28-10"),
  ("4916 2456 8843 2156","510","2022-33-22","2023-55-06"),
  ("4539683876149595","327","2023-06-23","2021-22-15"),
  ("541 78465 93684 718","347","2022-01-14","2023-50-26"),
  ("4929 324 89 6364","518","2021-05-22","2022-39-12"),
  ("4654 3336 8681 1443","631","2022-09-30","2022-07-04"),
  ("344425482956643","939","2023-57-22","2023-00-18"),
  ("516244 7762473780","246","2021-26-09","2022-16-05"),
  ("402400 7162816240","388","2021-43-30","2021-51-08"),
  ("5318173886866625","193","2021-34-30","2022-20-10");
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("345576545145266","947","2022-48-21","2022-52-30"),
  ("536335 6668698688","907","2021-45-16","2022-13-30"),
  ("3793 242272 35348","444","2022-02-27","2022-43-18"),
  ("544425 456577 8450","293","2021-55-25","2022-39-21"),
  ("4532244927960","911","2022-04-10","2022-48-14"),
  ("4274 2637 9232 6533","526","2023-03-07","2021-57-12"),
  ("3794 858964 25278","966","2022-22-19","2022-49-19"),
  ("555 34254 78213 259","888","2023-44-24","2023-34-06"),
  ("471654 3539823876","243","2022-56-15","2021-23-05"),
  ("4532844496416","740","2022-44-22","2021-40-07"),
  ("4485593592358","812","2022-58-08","2022-00-17"),
  ("3498 387419 36120","842","2023-47-05","2022-26-13"),
  ("3771 677792 73668","223","2023-28-01","2022-43-11"),
  ("3415 434185 62336","326","2022-53-28","2022-34-12"),
  ("492933 5786638575","205","2023-06-25","2021-43-13"),
  ("4716 4955 3587 5477","445","2022-49-21","2023-51-09"),
  ("4716728828395682","307","2022-26-17","2022-52-11"),
  ("4485248656897","944","2023-56-18","2023-19-30"),
  ("5546 2647 5544 2632","253","2022-19-30","2023-42-17"),
  ("347478577853297","552","2022-00-21","2023-53-06");
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("4716 523 95 8263","180","2021-57-15","2021-23-11"),
  ("342578474848897","163","2023-29-25","2021-37-02"),
  ("3483 543854 46666","832","2022-50-18","2023-45-12"),
  ("349547424437393","713","2023-15-05","2023-37-19"),
  ("345282833812366","799","2022-33-18","2022-09-10"),
  ("344655695466291","272","2022-38-09","2021-58-30"),
  ("519 56454 14282 449","933","2022-31-15","2022-19-13"),
  ("556 93379 35296 573","235","2022-44-12","2023-14-02"),
  ("375471899526852","930","2023-43-02","2022-30-09"),
  ("5377248375242526","135","2022-29-06","2021-26-23");
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("553486 1342575610","551","2023-09-18","2022-05-28"),
  ("525782 2744738573","937","2022-08-27","2021-06-02"),
  ("514 84995 46442 762","728","2021-39-09","2021-23-03"),
  ("3772 732677 28856","730","2022-08-02","2023-39-06"),
  ("5248178212338749","134","2022-51-05","2023-19-25"),
  ("558535 6723736228","155","2021-00-27","2022-59-18"),
  ("402 40071 83586 574","795","2023-53-28","2022-56-10"),
  ("346374372538442","621","2022-11-19","2023-00-02"),
  ("374434281554842","360","2021-34-12","2022-25-31"),
  ("344162664223431","837","2023-28-08","2023-19-17"),
  ("5173677187476581","540","2022-18-31","2021-29-22"),
  ("516842 8527466826","657","2022-01-20","2022-56-14"),
  ("3428 425582 94851","972","2023-08-14","2022-16-10"),
  ("548237 488871 7390","404","2022-19-26","2023-42-03"),
  ("347743289346348","950","2021-01-17","2022-43-30"),
  ("3734 621538 76515","385","2022-34-18","2023-35-29"),
  ("402 40071 96887 332","619","2022-25-05","2021-30-20"),
  ("518869 7775161646","638","2023-03-21","2023-41-19"),
  ("3457 627734 83377","928","2022-34-15","2022-46-13"),
  ("4539 953 53 7328","540","2021-56-22","2022-06-21");
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("4488 946 52 8343","920","2023-57-07","2023-57-09"),
  ("5569145833836840","739","2022-05-06","2022-05-09"),
  ("471622 7874969268","948","2021-51-03","2023-18-30"),
  ("4024007184153","493","2021-31-24","2022-42-28"),
  ("539 46776 86365 353","522","2023-11-22","2023-16-23"),
  ("349744278354549","612","2023-40-21","2023-17-26"),
  ("4532 6678 6883 7678","791","2022-17-10","2023-04-28"),
  ("5198131261339662","218","2021-02-24","2022-41-12"),
  ("3424 746899 33312","607","2021-17-09","2021-02-09"),
  ("348681883821358","997","2023-52-09","2022-08-17"),
  ("341246185343555","973","2022-17-08","2021-15-14"),
  ("343553352937830","610","2022-25-10","2022-43-26"),
  ("4916392764871","349","2021-10-24","2023-20-09"),
  ("373224355889526","173","2023-19-17","2021-50-14"),
  ("344454134123543","522","2022-08-22","2022-26-18"),
  ("346859835233474","754","2022-12-21","2022-47-18"),
  ("5275369481985221","316","2022-26-19","2023-56-30"),
  ("4916415743356985","839","2022-05-29","2022-40-04"),
  ("377378376384259","923","2022-10-18","2023-00-28"),
  ("453 18962 25682 367","121","2022-44-10","2022-29-14");
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("553694 799492 3626","908","2022-49-01","2022-19-16"),
  ("555162 1159737432","268","2022-50-08","2022-37-04"),
  ("3776 496414 25337","557","2022-20-16","2022-07-22"),
  ("533261 752426 5568","725","2022-47-26","2021-34-29"),
  ("5112565387163444","375","2023-56-09","2022-36-09"),
  ("4532 4598 3737 1140","737","2022-26-05","2021-23-10"),
  ("3426 892347 48259","489","2022-34-03","2021-41-19"),
  ("5527 9383 6842 4839","250","2022-46-09","2023-32-08"),
  ("5539721475614252","520","2023-16-09","2022-50-26"),
  ("5463 7847 7716 8252","590","2023-25-12","2022-56-30");
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("492944 766267 9845","426","2021-58-25","2021-37-15"),
  ("546855 436778 4361","668","2023-08-25","2022-19-12"),
  ("4024007166630","588","2023-00-28","2022-44-22"),
  ("453 98376 72793 374","120","2022-39-02","2022-28-02"),
  ("5457399135436859","121","2023-10-27","2023-15-10"),
  ("5227 8568 6484 8595","736","2021-34-19","2023-00-29"),
  ("3446 379575 91651","752","2022-29-30","2022-16-27"),
  ("552861 729648 5273","760","2022-44-03","2022-27-01"),
  ("471675 368154 6478","684","2022-23-08","2023-57-02"),
  ("534 35183 56296 779","961","2023-33-13","2022-11-08"),
  ("402400 7195842767","279","2023-35-02","2022-32-04"),
  ("3426 284567 54421","626","2022-38-29","2022-43-29"),
  ("5386 8776 1465 9287","462","2022-29-18","2023-53-06"),
  ("555732 4844997339","830","2022-24-27","2022-52-06"),
  ("533535 6557557339","507","2022-33-15","2023-21-10"),
  ("4929227615283550","247","2022-49-28","2021-47-18"),
  ("344642826438472","599","2023-54-15","2022-38-05"),
  ("5354 4252 2689 1555","534","2023-04-12","2023-38-06"),
  ("3755 648321 27422","738","2022-18-20","2021-09-27"),
  ("3435 892984 56980","531","2023-26-24","2021-22-19");
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("471 62886 76148 170","641","2023-55-03","2022-22-12"),
  ("345125823385481","695","2022-10-28","2023-33-09"),
  ("3445 335276 37696","124","2023-46-04","2023-03-04"),
  ("3475 386253 73539","908","2022-54-17","2023-48-02"),
  ("402 40071 41143 633","732","2022-11-11","2023-17-07"),
  ("376738732392851","470","2021-15-27","2021-35-10"),
  ("492929 768859 2369","290","2022-40-24","2022-46-12"),
  ("515433 555962 3289","267","2023-36-29","2021-13-07"),
  ("3797 858434 74745","303","2022-58-04","2022-39-02"),
  ("5127 7273 5512 2470","753","2022-07-16","2022-33-12"),
  ("555 12542 54637 727","118","2023-29-21","2021-17-16"),
  ("3458 351723 45999","530","2021-01-20","2023-49-22"),
  ("3435 957677 18479","456","2022-29-03","2022-47-16"),
  ("4485672174748","304","2022-21-31","2022-13-08"),
  ("3783 774232 74546","867","2022-45-17","2021-01-24"),
  ("345669544452377","462","2021-40-14","2022-58-12"),
  ("375754747786426","691","2022-18-26","2022-45-06"),
  ("3765 234847 26229","518","2023-46-01","2022-47-17"),
  ("3767 354277 53843","791","2023-06-25","2023-47-26"),
  ("3722 656947 47215","281","2022-24-05","2022-11-14");
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("4916 7546 3745 7222","722","2023-55-08","2021-06-20"),
  ("347539347684583","825","2023-37-20","2022-17-24"),
  ("3727 786745 28447","716","2023-26-02","2021-37-10"),
  ("5478773647857817","851","2021-41-24","2023-57-09"),
  ("441 53723 58656 447","618","2021-07-07","2022-21-28"),
  ("552422 746319 7489","583","2022-18-17","2021-05-21"),
  ("4556 635 86 3443","288","2022-31-12","2021-53-02"),
  ("376396125635210","328","2022-43-01","2022-08-30"),
  ("492 96381 63888 733","790","2023-38-09","2022-31-22"),
  ("4024 007 18 7917","254","2022-56-01","2022-26-10");
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("4737 4435 1838 8428","856","2021-44-30","2021-11-28"),
  ("4929 872 82 9320","412","2022-27-19","2022-43-02"),
  ("3433 726226 43577","505","2022-17-27","2023-16-30"),
  ("4539416232665","525","2022-02-03","2023-26-22"),
  ("537 86843 76822 537","455","2023-27-01","2022-33-20"),
  ("371836263544257","674","2022-28-22","2023-46-04"),
  ("554 87631 46475 340","291","2023-17-27","2023-26-02"),
  ("4716 412 41 4550","596","2022-46-25","2022-22-29"),
  ("4485186767625313","294","2023-47-16","2022-42-05"),
  ("341673194585449","827","2021-11-09","2023-16-02"),
  ("3728 784634 65478","901","2022-20-23","2022-21-24"),
  ("4716477221787588","939","2022-34-22","2022-36-02"),
  ("455658 5269276430","442","2022-55-12","2022-47-22"),
  ("491622 9836359990","634","2022-25-19","2021-24-14"),
  ("5563 6786 3222 6579","697","2022-57-22","2022-25-22"),
  ("533 68943 16586 750","362","2022-38-25","2022-31-20"),
  ("3476 846575 49636","766","2022-30-02","2023-24-30"),
  ("343412268598295","128","2022-36-21","2022-42-07"),
  ("4539 5535 8783 3276","980","2022-03-23","2023-38-02"),
  ("3433 695983 67850","295","2021-10-26","2022-50-02");
  
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("534423 4577488844","652","2022-22-13","2022-10-22"),
  ("4485397272762778","562","2021-58-18","2021-24-20"),
  ("517256 4448898624","974","2021-16-14","2023-25-18"),
  ("349376665334329","244","2022-40-09","2021-58-24"),
  ("4716218833524","724","2023-09-19","2022-02-17"),
  ("4556 8377 4145 3677","850","2022-02-06","2021-31-25"),
  ("4024007112413452","216","2022-21-17","2023-47-03"),
  ("5525 6758 6282 6679","279","2022-52-30","2023-50-12"),
  ("4716756448578254","623","2021-42-25","2023-21-16"),
  ("348256766645230","560","2023-17-05","2022-47-21"),
  ("348994376574388","262","2022-07-11","2022-51-07"),
  ("4485 9224 2582 8133","245","2022-48-12","2022-33-12"),
  ("4916362523689526","558","2022-40-25","2023-15-07"),
  ("3464 284834 52529","565","2021-05-09","2022-31-08"),
  ("537969 275847 2499","621","2021-03-27","2021-45-01"),
  ("453 92871 55385 571","482","2022-22-06","2022-19-01"),
  ("372638428836563","282","2023-24-13","2022-31-04"),
  ("525192 4422935269","603","2021-03-25","2023-36-03"),
  ("5258 5814 6276 3655","410","2023-51-25","2022-28-27"),
  ("3737 284583 36466","744","2021-33-28","2023-03-17");
  
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("5383 7683 9775 7310","648","2023-08-23","2022-52-07"),
  ("375818954397530","425","2022-23-21","2021-17-29"),
  ("523 76724 98649 772","372","2023-51-20","2022-57-11"),
  ("4532468767357","414","2022-40-07","2022-59-29"),
  ("541 66383 26287 534","820","2022-21-10","2022-32-07"),
  ("546 45697 44292 387","285","2023-45-16","2022-54-08"),
  ("3447 822112 39133","851","2022-41-27","2022-38-24"),
  ("3776 532573 74532","404","2022-21-27","2023-25-22"),
  ("514482 665727 9514","718","2023-21-25","2023-34-29"),
  ("4024 007 14 3258","977","2023-05-27","2022-14-25");
  
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("455 66697 23736 237","153","2022-27-08","2021-56-24"),
  ("4716 6378 9884 3531","455","2022-56-05","2021-45-04"),
  ("5139227243779645","769","2023-00-13","2023-30-09"),
  ("3438 289685 46880","507","2023-28-01","2021-57-26"),
  ("341692543264167","978","2023-23-03","2023-10-28"),
  ("517526 441612 2654","798","2022-08-19","2022-26-14"),
  ("348635532187629","530","2021-35-23","2023-47-10"),
  ("546847 5753332781","415","2023-02-04","2022-51-24"),
  ("377347545325337","874","2023-04-05","2021-47-01"),
  ("517233 564168 8652","874","2022-49-03","2022-19-19"),
  ("4539788333216","195","2021-53-22","2022-01-10"),
  ("347282382833381","821","2023-06-26","2022-43-21"),
  ("4485297875961845","526","2022-19-30","2022-53-15"),
  ("5255983521775642","849","2022-45-19","2022-50-18"),
  ("4872 6833 4286 4574","353","2022-53-16","2023-14-16"),
  ("5188 2439 3463 3363","665","2022-44-30","2022-41-23"),
  ("492 94465 36745 527","688","2023-54-04","2022-41-07"),
  ("538 85775 33257 696","456","2021-20-20","2023-01-02"),
  ("3773 946887 32127","332","2021-13-30","2022-00-12"),
  ("3747 734817 63970","325","2022-47-23","2023-35-08");
  
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("4594838821546","370","2022-06-20","2021-49-05"),
  ("532524 8825799268","897","2022-10-14","2022-35-01"),
  ("3444 768566 84840","199","2023-56-31","2021-01-30"),
  ("346181232438451","695","2022-03-19","2022-38-23"),
  ("344694382133328","687","2023-54-17","2022-59-04"),
  ("5247474423952175","773","2021-00-04","2022-27-30"),
  ("542 55635 36747 540","208","2022-49-30","2022-17-24"),
  ("549535 938424 3855","431","2022-16-10","2022-09-12"),
  ("4556 6118 2244 2291","352","2021-45-28","2022-31-26"),
  ("448 51463 62883 329","188","2023-01-07","2022-02-13"),
  ("5549 9495 8748 9614","461","2022-40-19","2022-15-21"),
  ("453936 234463 3874","598","2022-59-07","2022-51-24"),
  ("3756 882779 85414","579","2022-08-10","2023-53-08"),
  ("3473 567823 49246","329","2021-44-20","2023-18-14"),
  ("4532 242 75 1172","362","2021-24-13","2022-56-22"),
  ("3737 127387 63343","167","2023-31-27","2023-38-09"),
  ("492 96855 64473 680","367","2023-45-27","2023-27-07"),
  ("522515 2494726548","834","2022-11-14","2023-42-06"),
  ("4485833845681","949","2023-46-03","2022-46-02"),
  ("3492 539824 75731","768","2023-46-01","2023-49-12");
  
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("347325916867530","459","2022-13-11","2022-58-07"),
  ("349466456694476","588","2022-34-12","2023-36-24"),
  ("5537 8334 9776 4429","507","2022-05-29","2022-41-06"),
  ("346145786749951","266","2023-25-26","2022-08-05"),
  ("5454423756843830","716","2022-32-13","2021-12-07"),
  ("4929438843435","391","2022-47-02","2021-23-16"),
  ("348278387826759","950","2021-31-17","2022-20-11"),
  ("514 55357 72454 725","514","2021-33-29","2023-31-06"),
  ("4024007165350","578","2021-48-08","2022-43-15"),
  ("527 58713 85825 825","838","2022-15-29","2023-03-15");
  
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("547528 2745294181","760","2022-06-16","2023-06-31"),
  ("373261365733518","395","2023-42-02","2022-53-29"),
  ("347844494547215","917","2022-06-17","2021-32-11"),
  ("524136 2146868388","844","2022-57-19","2021-27-13"),
  ("521514 9372592762","543","2023-37-29","2023-13-31"),
  ("5188256882738612","122","2023-09-10","2022-59-18"),
  ("453934 9145528874","980","2023-08-10","2023-01-08"),
  ("341894567674731","255","2022-08-10","2023-53-11"),
  ("557223 587195 7866","140","2022-24-03","2022-06-07"),
  ("5357 7829 6862 7853","438","2023-48-28","2022-07-06"),
  ("528 88424 17679 451","457","2022-28-20","2022-10-26"),
  ("5537 7357 1568 6427","883","2022-01-01","2022-22-08"),
  ("4876476757762789","254","2022-47-29","2023-58-28"),
  ("512654 6645624314","706","2022-14-08","2023-06-06"),
  ("453 28241 48338 221","440","2022-25-25","2023-57-05"),
  ("536 61264 55385 584","792","2021-52-14","2022-41-19"),
  ("3417 353529 73236","986","2021-42-02","2022-15-13"),
  ("349727939581451","977","2022-23-08","2022-47-25"),
  ("453912 372785 5876","853","2022-11-14","2021-58-05"),
  ("4537 182 56 1655","737","2022-19-25","2023-02-14");
  
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("5426223362435616","657","2021-11-29","2021-14-24"),
  ("453282 367558 4660","630","2023-20-25","2022-01-25"),
  ("492 95869 88766 545","940","2021-33-13","2023-26-20"),
  ("4916 3557 6874 7595","117","2022-24-21","2022-42-04"),
  ("4539371649630","444","2021-15-15","2022-22-31"),
  ("378986775368381","625","2022-52-06","2021-52-10"),
  ("5413155971467520","796","2022-29-30","2021-47-12"),
  ("5164 2286 4541 8277","444","2021-13-15","2022-42-16"),
  ("3463 939387 84175","318","2023-21-20","2022-02-07"),
  ("4539323362874576","396","2022-35-11","2021-06-13"),
  ("492 98466 56579 749","166","2022-46-25","2022-15-14"),
  ("535458 4738187637","590","2022-29-12","2022-50-04"),
  ("3785 574177 75299","579","2021-08-04","2023-56-05"),
  ("491621 8846786524","316","2022-07-31","2022-37-09"),
  ("515844 9385453625","176","2023-55-21","2023-30-07"),
  ("4485 656 24 1265","918","2022-58-27","2022-19-13"),
  ("3767 215863 29344","722","2022-09-08","2023-21-09"),
  ("5448 4635 8674 9780","797","2022-29-05","2023-57-01"),
  ("378317851847363","867","2023-38-03","2023-49-21"),
  ("534556 661879 4857","794","2022-42-26","2023-29-08");
  
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("5142891346358964","121","2023-35-28","2023-44-02"),
  ("554579 433321 7438","388","2022-10-30","2023-24-07"),
  ("3488 818587 73564","660","2022-57-31","2023-35-02"),
  ("4929693342766631","263","2022-06-08","2022-05-01"),
  ("5433547865132671","879","2023-14-16","2023-32-31"),
  ("3786 768689 57345","857","2022-55-06","2021-12-28"),
  ("372542235893520","313","2022-53-16","2021-31-10"),
  ("4929664677452576","641","2022-59-28","2023-20-02"),
  ("5483 8418 5554 6332","112","2023-05-27","2022-56-28"),
  ("346823866178669","916","2022-45-01","2022-24-17");
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("543 64275 78776 238","748","2021-56-11","2021-56-22"),
  ("3462 897794 42537","759","2021-57-11","2023-24-14"),
  ("532661 2264748434","239","2022-15-30","2022-17-26"),
  ("552488 632197 4676","402","2022-32-31","2022-07-10"),
  ("4539 837 58 1344","229","2023-01-23","2023-14-13"),
  ("5532745735699420","391","2022-14-27","2021-05-05"),
  ("3782 325553 44379","774","2022-32-01","2022-14-18"),
  ("3774 849875 29884","829","2022-32-30","2021-24-28"),
  ("5326 1947 4889 8242","821","2022-30-16","2023-27-06"),
  ("526 23354 87465 257","663","2022-41-17","2021-54-16"),
  ("3482 629335 73420","147","2022-36-17","2022-58-02"),
  ("4929 878 33 7435","494","2022-47-25","2021-01-30"),
  ("471 64875 81362 294","345","2021-07-20","2021-15-19"),
  ("471 64396 54891 824","548","2022-04-24","2023-06-16"),
  ("4532 3552 5925 8387","944","2022-41-11","2023-55-15"),
  ("4929354889396","882","2021-12-19","2023-07-06"),
  ("559917 5262269258","312","2023-42-11","2023-10-07"),
  ("5136 4965 6921 2928","997","2023-18-06","2022-08-16"),
  ("4916465311885592","127","2022-10-05","2022-12-21"),
  ("492925 6576933820","490","2022-16-15","2022-39-14");
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("372666393325387","672","2022-05-11","2022-56-11"),
  ("3779 838219 88438","165","2022-58-03","2023-46-21"),
  ("551297 957776 1683","901","2023-54-27","2022-30-13"),
  ("3424 554645 56279","795","2021-12-22","2021-47-20"),
  ("377449255584770","496","2022-36-01","2023-48-12"),
  ("4024 007 18 8329","137","2022-34-01","2022-04-05"),
  ("345276713289620","131","2022-25-20","2023-29-16"),
  ("492983 2422866131","199","2022-06-12","2021-25-17"),
  ("5244757832312426","517","2022-55-22","2023-55-07"),
  ("348275856255379","192","2022-24-18","2021-26-11"),
  ("371489664848420","788","2023-29-18","2022-36-26"),
  ("4222328878514857","842","2021-39-08","2022-59-29"),
  ("4716698351647843","808","2022-24-13","2023-07-24"),
  ("5591525928647495","602","2021-01-12","2022-57-23"),
  ("453 99717 34332 242","753","2023-07-29","2022-07-01"),
  ("455644 632974 8795","151","2022-39-03","2022-12-18"),
  ("492933 7786474845","409","2021-47-21","2023-25-21"),
  ("4532593448212","680","2023-45-08","2022-45-16"),
  ("377488723597162","351","2022-57-12","2023-11-31"),
  ("455673 3821625229","446","2022-52-28","2021-14-28");
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("4556 769 44 4465","776","2021-57-03","2022-14-18"),
  ("5372 8352 7516 7467","962","2022-23-04","2023-08-21"),
  ("3414 888132 27517","780","2022-32-20","2022-04-27"),
  ("348715258155719","688","2022-42-07","2021-45-26"),
  ("349843586952851","402","2023-34-14","2023-09-23"),
  ("3775 736435 42974","520","2022-19-29","2023-52-27"),
  ("379341176325771","885","2022-23-21","2021-19-20"),
  ("3712 485828 72874","562","2022-07-03","2022-13-07"),
  ("374673348799623","351","2022-40-01","2022-33-23"),
  ("536 58885 26683 856","491","2022-26-15","2022-54-05");
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("556 18489 28496 465","825","2022-31-24","2023-57-06"),
  ("514 32385 25224 543","699","2022-14-19","2021-30-26"),
  ("402400 718443 3230","595","2021-04-10","2023-31-24"),
  ("3466 563595 43985","549","2022-25-26","2022-46-30"),
  ("455614 684263 2399","759","2023-05-05","2023-47-21"),
  ("378673885487851","789","2022-38-31","2022-50-21"),
  ("552 41265 46227 166","121","2022-43-12","2021-39-25"),
  ("491684 386887 9756","484","2022-23-25","2023-04-03"),
  ("453265 8294613312","663","2022-46-28","2023-47-09"),
  ("4532325159764","816","2021-00-18","2023-55-30"),
  ("455 38987 82846 255","820","2022-26-24","2021-39-22"),
  ("402400 7173753531","893","2023-04-30","2022-06-09"),
  ("3472 187485 85539","816","2022-51-08","2022-08-28"),
  ("402400 713962 5443","748","2022-38-07","2021-35-22"),
  ("4916972943627938","116","2023-09-05","2023-58-04"),
  ("379443794222750","377","2021-51-29","2023-12-12"),
  ("527946 597747 4468","571","2022-44-02","2022-47-24"),
  ("5433767462787244","175","2023-20-25","2023-04-21"),
  ("516 53783 69232 872","389","2023-30-08","2022-48-27"),
  ("453266 232555 8561","630","2021-19-03","2021-32-17");
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("455677 8237229736","582","2023-08-25","2022-31-21"),
  ("346471655982881","729","2022-44-05","2023-13-07"),
  ("476694 6956352767","235","2022-34-22","2022-42-05"),
  ("373163975889237","384","2023-23-23","2023-12-03"),
  ("345697383883816","589","2022-02-15","2023-39-09"),
  ("5387 4674 8632 7756","230","2022-17-26","2021-04-25"),
  ("5488146944384538","767","2021-44-24","2022-37-09"),
  ("4929942598681","248","2022-32-25","2022-36-15"),
  ("345278748583845","495","2022-02-27","2021-08-07"),
  ("535624 174224 5111","934","2022-13-02","2021-12-21"),
  ("4916933448844","823","2022-42-03","2023-08-05"),
  ("4929 9294 3568 6421","239","2023-17-23","2021-35-22"),
  ("4916 8238 4165 6638","444","2022-48-31","2022-35-07"),
  ("546228 634521 1466","275","2022-43-16","2022-01-11"),
  ("444 88377 68358 348","814","2022-22-20","2021-55-19"),
  ("3793 316146 65722","158","2023-13-03","2022-51-14"),
  ("5257 3878 2985 2376","951","2022-08-02","2023-23-21"),
  ("517267 8635992683","653","2022-18-07","2022-09-17"),
  ("3483 355246 49195","551","2021-38-17","2022-19-02"),
  ("5332 5237 5789 7749","139","2022-05-18","2023-36-09");
INSERT INTO 'tarjeta' ('numero_tarjeta','tarjeta_CVV','tarjeta_fecha_de_otorgamiento','tarjeta_fecha_de_expiracion')
VALUES
  ("552228 632333 4718","286","2022-34-05","2023-44-10"),
  ("5577 2345 6791 4849","998","2022-16-06","2021-55-04"),
  ("528978 4494426282","971","2022-06-15","2022-37-19"),
  ("5444533376949149","579","2022-16-16","2022-45-14"),
  ("342196631892482","673","2022-35-03","2022-01-13"),
  ("3476 693338 21558","961","2022-24-12","2022-56-24"),
  ("544 27197 23765 617","451","2022-12-27","2021-05-18"),
  ("555488 5735375457","933","2021-02-11","2022-18-06"),
  ("546 29983 68432 460","609","2021-35-22","2022-14-08"),
  ("5165275942452243","299","2022-18-20","2021-13-01");

