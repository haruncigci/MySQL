use sys;
-- ====================== UNION ======================
/*
    Iki farkli sorgulamanin sonucunu birlestiren islemdir.
    Iki veya daha fazla Sorgu ifadesinin sonuc kumelerini 
    birlestirerek tek bir sonuc kumesi olusturur.
    2.sorgunun sonuna ORDER BY komutunu kullanirsaniz 
    tum tabloyu istediginiz siralamaya gore siralar.
   
    NOT: Secilen Field SAYISI ve DATA TYPE'i ayni olmalidir.
    
    Syntax:
    ----------
    SELECT sutun_adi,sutun_adi2, .. FROM tablo_adi1
    UNION
    SELECT sutun_adi1, sutun_adi2, .. FROM tablo_adi2;
    
    NOT: UNION operatoru SADECE benzersiz degerleri alir. 
    Benzer verileri almak icin UNION ALL kullanilir.
======================================================*/
CREATE TABLE personel1(
id int,
isim varchar(50),
sehir varchar(50),
maas int,
sirket varchar(20)
);
INSERT INTO personel1 VALUES(123456789, 'Ali Yilmaz', 'Istanbul', 5500, 'Honda');
INSERT INTO personel1 VALUES(234567890, 'Veli Sahin', 'Istanbul', 4500, 'Toyota');
INSERT INTO personel1 VALUES(345678901, 'Mehmet Ozturk', 'Ankara', 3500,'Honda');
INSERT INTO personel1 VALUES(456789012, 'Mehmet Ozturk', 'Izmir', 6000, 'Ford');
INSERT INTO personel1 VALUES(567890123, 'Mehmet Ozturk', 'Ankara', 7000, 'Tofas');
INSERT INTO personel1 VALUES(456715012, 'Veli Sahin', 'Ankara', 4500, 'Ford');
INSERT INTO personel1 VALUES(123456710, 'Hatice Sahin', 'Bursa', 4500, 'Honda');
INSERT INTO personel1 VALUES(345678902, 'Mehmet Ozturk', 'Izmir', 3500,'Honda');
select * from personel1;
-- 1) Honda ve Tofas'ta calisan benzersiz isimdeki personelleri listeleyin
SELECT isim
FROM personel1
WHERE sirket = 'Honda'
UNION
SELECT isim
FROM personel1
WHERE sirket = 'Tofas';
-- 2) Honda, Ford ve Tofas'ta calisan benzersiz isimdeki personelleri listeleyin
SELECT isim
FROM personel1
WHERE sirket = 'Honda'
UNION
SELECT isim
FROM personel1
WHERE sirket = 'Tofas'
UNION
SELECT isim
FROM personel1
WHERE sirket = 'Ford';
-- 3) Honda, Ford ve Tofas'ta calisan butun personelleri listeleyin
SELECT isim
FROM personel1
WHERE sirket = 'Honda'
UNION ALL
SELECT isim
FROM personel1
WHERE sirket = 'Tofas'
UNION ALL
SELECT isim
FROM personel1
WHERE sirket = 'Ford';
-- 4) Maasi 4000'den fazla olan isci isimlerini ve 5000'den fazla
-- maas alinan sehirleri gosteren sorguyu yaziniz
select isim, maas
from personel1
where maas > 4000
UNION
select sehir,maas
from personel1
where maas>5000;
                       
-- 5) Mehmet Ozturk ismindeki personellerin aldigi maaslari ve Istanbul'daki
-- personelin maaslarini bir tabloda gosteren sorgu yaziniz

select isim Isci_Sehir ,maas 
from personel1
where isim = 'Mehmet Öztürk'
union
select sehir,maas 
from personel1
where sehir = 'Istanbul';


