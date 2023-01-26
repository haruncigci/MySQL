-- id, isim ve irtibat fieldlarinin oldugu bir tedarik tablosu olusturun.
-- id field'ini Primary Key yapin.

use sys;
create table tedarik1(
id int primary key,
isim varchar(25),
irtibat varchar(20)
);

