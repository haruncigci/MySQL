-- ************************ Personel Tablosundan *******************************
/*-------------------------------------------------------------------------
Q1: Isminin 2. harfi e olup diger harflerinde y olan personeli listeleyiniz
---------------------------------------------------------------------------*/
select *
from personel
where isim like '_e%' and isim like '%y%';
/*-------------------------------------------------------------------------
Q2: Isminde a harfi olmayan personeli listeleyiniz
---------------------------------------------------------------------------*/
select *
from personel
where isim not like '%a%';
/*-------------------------------------------------------------------------
Q3: Maasi 5 haneli olan personeli listeleyiniz
---------------------------------------------------------------------------*/
select *
from personel
where maas like '_____';
/*-------------------------------------------------------------------------
Q4: 1. harfi a ve 7. harfi a olan personeli listeleyiniz
---------------------------------------------------------------------------*/
select *
from personel
where isim like 'a_____a%';
-- ************************ Fen Lisesi Tablosundan *****************************
use sys;

CREATE TABLE lise (
okul_no CHAR(4) UNIQUE,
isim VARCHAR(50) NOT NULL,
derece DOUBLE,
adres VARCHAR(100),
son_degisiklik_tarihi DATE
);
INSERT INTO lise VALUES ('1001','Fatih Polat',89,'Ankara','2022-12-05');
INSERT INTO lise VALUES ('1002','Efe Torun',85,'Istanbul','2022-12-05');
INSERT INTO lise VALUES ('1003','Esra Turker',95,'Izmir','2022-12-05');
INSERT INTO lise VALUES ('1004','Mustafa Yilmaz',90,'Istanbul','2022-12-05');
INSERT INTO lise VALUES ('1005','Elif Kesen',92,'Berlin','2022-12-05');
INSERT INTO lise VALUES ('1006','Tugay Kala',75,null,'2022-12-05');
INSERT INTO lise VALUES ('1007','Semra Ulusoy',null,null,null);
INSERT INTO lise VALUES ('1008',null,89,'Ankara','2022-12-05');
INSERT INTO lise (okul_no,isim,derece,son_degisiklik_tarihi) VALUES ('1009','Mehmet Cil',89,'2022-12-05');
INSERT INTO lise (isim,derece,son_degisiklik_tarihi) VALUES ('Salim Oz',89,'2022-12-05');
INSERT INTO lise (isim,derece,son_degisiklik_tarihi) VALUES ('Suleyman Karaca',45,'2022-12-05');
INSERT INTO lise VALUES ('','Ozgur Ali',90,'Istanbul','2022-12-05');
INSERT INTO lise VALUES ('','Yusuf Enes',92,'Berlin','2022-12-05');

-- Q1 : Okul_no ' su 1005'ten buyuk olan ogrencilerin tum bilgilerini listeleyin.
select *
from lise
where okul_no>1005;

-- Q2 : Ismi Elif Kesen olan ogrencinin derecesini listeleyin.
select derece
from lise
where isim = 'Elif Kesen';

-- Q3 : Derecesi 90dan buyuk olan ogrencilerin okul_no ve isimlerini listeleyin.
select okul_no,isim
from lise
where derece>90;


-- Q5 : Istanbulda yasayan ogrencilerin isimlerini listeleyin.

select isim
from lise
where adres ='istanbul';



