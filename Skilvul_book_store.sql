--- Create Database ---
create database skilvulbookstore;

--- Use Database ---
use skilvulbookstore;

--- Create Table ---
create table penerbit (id int not null auto_increment primary key,
    -> nama varchar(50),
    -> kota varchar(50) 
    -> );

--- Create Table ---
create table penulis (id int(10) not null auto_increment primary key,
    -> nama varchar(50),
    -> kota varchar(50)
    -> );

--- Create Table ---
create table buku ( id int not null auto_increment, 
    ->     ISBN varchar(50), 
    ->     judul varchar(50), 
    ->     harga int, 
    ->     stock int, 
    ->     penulis int, 
    ->     penerbit int, 
    ->     foreign key (penulis) references penulis(id),  
    ->     foreign key (penerbit) references penerbit(id) ,
    ->     constraint pk_buku primary key (id) );

--- Insert ke tabel penulis---
INSERT INTO `penulis` (`id`, `nama`, `kota`) VALUES 
    (NULL, 'Reza', 'Denpasar'), 
    (NULL, 'Zidan', 'Kalimantan'),
    (NULL, 'Sulis', 'Bojonegoro'),
    (NULL, 'Lexi', 'Malang'), 
    (NULL,'Glen', 'Surabaya'), 
    (NULL, 'Baim', 'Jakarta');


---insert ke tabel penerbit ---
INSERT INTO `penerbit` (`id`, `nama`, `kota`) VALUES 
    (NULL, 'Siti', 'Lombok'), 
    (NULL, 'Yacob', 'Kupang'), 
    (NULL, 'Risqa', 'Batam'), 
    (NULL, 'Dinda', 'Papua'),
    (NULL, 'Riani', 'Denpasar'),
    (NULL, 'Jeki', 'Manado'),
    (NULL, 'Sabri', 'Cianjur'),
    (NULL, 'Bastian', 'Demak');


--- insert  ke tabel buku---
INSERT INTO `buku` (`id`, `ISBN`, `judul`, `harga`, `stock`, `penulis`, `penerbit`) VALUES 
    (NULL, '22', 'Teoppoki', '55000', '5', '2', '3'), 
    (NULL, '23', 'Goodlake', '49000', '10', '2', '3'), 
    (NULL, '24', 'Healty Woman', '34000', '7', '2', '3'), 
    (NULL, '25', 'Trinity', '79000', '12', '2', '3');

--- join ---
SELECT *
FROM buku
INNER JOIN penerbit
ON buku.id = penerbit.id;

--- left ---
SELECT *
FROM buku
LEFT JOIN penerbit
ON buku.id = penerbit.id;

--- right ---
SELECT *
FROM buku
RIGHT JOIN penerbit
ON buku.id = penerbit.id;

--- max ---
SELECT MAX(harga)
FROM buku
WHERE stock < 10;

--- min ---
SELECT MIN(harga)
FROM buku;

--- count ---
SELECT COUNT(harga)
FROM buku
WHERE harga < 10000;