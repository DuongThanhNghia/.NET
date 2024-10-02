create database DuLieuSach1
use DuLieuSach1

create table TaiKhoan
(
	TenTK nvarchar(50) primary key not null,
	MatKhau char(50),
)

create table KhachHang
(
	MaKH nvarchar(50) primary key not null,
	Tenkh nvarchar(100) not null,
	Diachi nvarchar(100) not null,
	Sdt int,
)

create table LoaiSach
(
	Maloai nvarchar(20) primary key not null,
	Tenloai nvarchar(30)
)

create table Sach
(
	MaSach nvarchar(20) primary key not null,
	Tensach nvarchar(30) not null,
	Tentacgia nvarchar(30) null,
	NXB nvarchar(30) null,
	Ngaynhap datetime null,
	Soluongnhap int,
	Maloai nvarchar(20) foreign key references LOAISACH(Maloai) on delete cascade on update cascade
)

-- GiaBan float

alter table Sach add GiaBan float

select * from Sach