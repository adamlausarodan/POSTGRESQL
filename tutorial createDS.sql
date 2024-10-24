CREATE TABLE penjualan (
	id_produk int ,
	product_name varchar(255),
	harga int ,
	primary key(id_produk)
	
)
--primary key digunakan untuk menghindari 
-- duplikasi data dalam sebuah kolom

SELECT * FROM penjualan
-- melihat output

--INSERT INTO versi 1
INSERT INTO penjualan (id_produk,product_name, harga )
VALUES (3, 'mio',11000),
		(4, 'fuso',300000)

---ALTER ADD menambahkan kolom
ALTER TABLE penjualan
ADD qty int

--ALTER DROP COLUMN menghapus kolom
ALTER TABLE penjualan
DROP COLUMN qty

--ALTER COLUMN(change_data type)
ALTER TABLE penjualan
ALTER COLUMN harga type bigint

--DROP TABLE menghilangkan table 
DROP TABLE penjualan

--DROP DATABASE menghilangkan database
DROP DATABASE coba1
