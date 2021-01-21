--Kontrol selectleri
select * from Film
select * from filmoyuncu
select * from Oyuncu
--
select * from Karakter
select * from Oyuncu
select * from karakteroyuncu
--
select * from Film
select * from Yonetmen
select * from filmyonetmen
--
select * from Tur
select * from Film
select * from turfilm
--------------------------


--Filmlerin yönetmenleri kimlerdir?
select f.Adi [Film Adý], f.YapimYili [Yapým Yýlý], f.Gisesi [Giþesi], y.Adi +' '+ y.SoyAdi [Yönetmen] from film f inner join Yonetmen y on f.Id = y.Id

--Filmlerin türleri ve yapým yýllarý nelerdir?
select f.Adi [Film Adý], f.YapimYili [Yapým Yýlý], t.Adi [Tür] from Film f inner join Tur t on f.Id = t.Id  

--Karakterleri oynayan oyuncularýn gerçek isimleri ve yaþlarý nelerdir?
select k.AdiSoyadi [Karakter], o.Adi +' '+ o.SoyAdi [Oyuncu], DATEDIFF(year,o.DogumTarihi,getdate()) [Yaþ] from Karakter k inner join Oyuncu o on k.Id = o.Id ORDER BY o.DogumTarihi desc

--En çok giþe yapan filmin isim, giþe tutarý ve yönetmen bilgileri nelerdir?
select f.adi [Film Adý], f.Gisesi [Giþe Tutarý], y.Adi+''+y.SoyAdi [Yönetmen] from Film f inner join Yonetmen y on f.Id = y.Id ORDER BY f.Gisesi DESC

 




--Filmler
insert into Film (Adi, YapimYili, Gisesi) values ('Ayþe Tatilde', '1990', '2300')
insert into Film (Adi, YapimYili, Gisesi) values ('The Joker', '2000', '26700')
insert into Film (Adi, YapimYili, Gisesi) values ('Gangland', '2005', '50100')
insert into Film (Adi, YapimYili, Gisesi) values ('Güneþi Gördüm', '2001', '76500')


--Film Oyuncularý
insert into Oyuncu (Adi, SoyAdi, DogumTarihi) values ('Osman', 'Kýrca', '1969')
insert into Oyuncu (Adi, SoyAdi, DogumTarihi) values ('Brad', 'Pitt', '1970')
insert into Oyuncu (Adi, SoyAdi, DogumTarihi) values ('Marlon', 'Brando', '1920')
insert into Oyuncu (Adi, SoyAdi, DogumTarihi) values ('Will', 'Smith', '1980')


--Film Yönetmenleri
insert into Yonetmen (Adi,SoyAdi) values ('Yasin', 'Demir')
insert into Yonetmen (Adi,SoyAdi) values ('Quentin', 'Tarantino')
insert into Yonetmen (Adi,SoyAdi) values ('Woody','Allen')
insert into Yonetmen (Adi,SoyAdi) values ('George','Lucas')


--Film Karakterleri
insert into Karakter (AdiSoyadi) values ('Jax Teller')
insert into Karakter (AdiSoyadi) values ('Jack Sparrow')
insert into Karakter (AdiSoyadi) values ('Lara Croft')
insert into Karakter (AdiSoyadi) values ('Sarah Connor')

--Tanýmlamalar
insert into karakteroyuncu (karakterid, oyuncuid) values (1,2)
insert into karakteroyuncu (karakterid, oyuncuid) values (2,1)
insert into karakteroyuncu (karakterid, oyuncuid) values (3,4)
insert into karakteroyuncu (karakterid, oyuncuid) values (4,3)

insert into filmoyuncu (filmid,	oyuncuid) values (1,1)
insert into filmoyuncu (filmid, oyuncuid) values (1,2)
insert into filmoyuncu (filmid, oyuncuid) values (2,3)
insert into filmoyuncu (filmid, oyuncuid) values (2,2)
insert into filmoyuncu (filmid, oyuncuid) values (3,4)
insert into filmoyuncu (filmid, oyuncuid) values (3,1)
insert into filmoyuncu (filmid, oyuncuid) values (4,2)
insert into filmoyuncu (filmid, oyuncuid) values (4,4)

insert into filmyonetmen (filmid, yonetmenid) values (1,1)
insert into filmyonetmen (filmid, yonetmenid) values (1,2)
insert into filmyonetmen (filmid, yonetmenid) values (2,3)
insert into filmyonetmen (filmid, yonetmenid) values (3,1)
insert into filmyonetmen (filmid, yonetmenid) values (3,4)
insert into filmyonetmen (filmid, yonetmenid) values (4,3)
insert into filmyonetmen (filmid, yonetmenid) values (4,2)

insert into Tur (Adi) values ('Korku')
insert into Tur (Adi) values ('Dram')
insert into Tur (Adi) values ('Romantik')
insert into Tur (Adi) values ('Aksiyon')
insert into Tur (Adi) values ('Gerilim')

insert into turfilm (turid, filmid) values (5,1)
insert into turfilm (turid, filmid) values (3,1)
insert into turfilm (turid, filmid) values (4,2)
insert into turfilm (turid, filmid) values (2,2)
insert into turfilm (turid, filmid) values (1,3)
insert into turfilm (turid, filmid) values (2,4)
insert into turfilm (turid, filmid) values (3,4)