create database DuLieuSach2
use DuLieuSach2

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

-- Thêm dữ liệu mẫu vào bảng LOAISACH
INSERT INTO LOAISACH (Maloai, Tenloai) VALUES
('LS01', N'Tâm Lý'),
('LS02', N'Kỹ Năng Sống'),
('LS03', N'Văn Học'),
('LS04', N'Kinh Tế'),
('LS05', N'Giáo Dục');

-- Sau đó, sửa đổi cột Tensach thành kiểu NVARCHAR(255)
ALTER TABLE Sach
ALTER COLUMN Tensach NVARCHAR(255) NOT NULL;

alter table Sach add GiaBan float

select * from Sach

-- Thêm dữ liệu vào bảng Sach
INSERT INTO Sach (MaSach, Tensach, Tentacgia, NXB, Ngaynhap, Soluongnhap, Giaban, Maloai) VALUES
('S01', N'Hạt giống tâm hồn', N'Nguyễn Văn Phước', N'NXB Trẻ', '2024-06-14', 100, 10000, 'LS01'),
('S02', N'Những bài học cuộc sống', N'Hal Urban', N'NXB Tổng Hợp', '2024-06-14', 50, 50000, 'LS02'),
('S03', N'Sống chậm', 'Melanie Barnes', N'NXB Lao Động', '2024-06-14', 60, 60000, 'LS02'),
('S04', N'Tôi tài giỏi bạn cũng thế', N'Adam Khoo', 'NXB Trẻ', '2024-06-14', 45, 45000, 'LS02'),
('S06', N'Bốn mùa cuộc sống', 'Jim Rohn', N'NXB Lao Động', '2024-06-14', 35, 35000, 'LS02'),
('S07', N'Tôi là ai', 'Richard David Precht', N'NXB Tri Thức', '2024-06-14', 60, 60000, 'LS01'),
('S08', N'Không gia đình', 'Hector Malot', N'NXB Kim Đồng', '2024-06-14', 30, 30000, 'LS03'),
('S09', N'Người thầy', N'Nguyễn Chí Vịnh', N'NXB Trẻ', '2024-06-14', 60, 60000, 'LS03'),
('S10', N'Phù thủy xứ OZ', N'L. Frank Baum', N'NXB Văn Học', '2024-06-14', 70, 70000, 'LS03'),
('S11', N'Mans Search For Meaning', N'Viktor Frankl', N'NXB Tri Thức', '2024-06-14', 45, 45000, 'LS01'),
('S12', N'Tư duy nhanh và chậm', N'Daniel Kahneman', N'NXB Tri Thức', '2024-06-14', 45, 45000, 'LS01'),
('S13', N'The Power of Now', 'Eckhart Tolle', N'NXB Tri Thức', '2024-06-14', 85, 85000, 'LS01'),
('S14', N'Cách người Do Thái quản lý tiền và tài sản', N'Eran Katz', N'NXB Lao Động', '2024-06-14', 75, 75000, 'LS04'),
('S15', N'Phương Pháp Giáo Dục Con Của Người Do Thái', N'Tây Mông', N'NXB Giáo Dục', '2024-06-14', 55, 55000, 'LS05');