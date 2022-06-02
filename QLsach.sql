CREATE table NhaKho(
Loai nvarchar(50),
TenSach nvarchar(50),
TacGia nvarchar(50),
SoLuong int,
Gia money, 
NgayNhap date,
);

insert into NhaKho (Loai,TenSach,TacGia,SoLuong,Gia,NgayNhap)
values (N'A',N'Sách A',N'Nguyễn A',N'10',N'200',N'2022-1-1'),      
(N'B',N'Sách B',N'Nguyễn B',N'11',N'200',N'2022-1-2'),  
(N'C',N'Sách C',N'Nguyễn C',N'12',N'200',N'2022-1-3'),  
(N'D',N'Sách D',N'Nguyễn D',N'13',N'200',N'2022-1-4'),
(N'A',N'Sách A1',N'Nguyễn A1',N'14',N'200',N'2022-1-1'),
(N'B',N'Sách B1',N'Nguyễn B1',N'15',N'200',N'2022-1-2'),
(N'C',N'Sách C1',N'Nguyễn C1',N'15',N'200',N'2022-1-3'),
(N'D',N'Sách D1',N'Nguyễn D1',N'12',N'200',N'2022-1-4'),
(N'A',N'Sách A2',N'Nguyễn A2',N'12',N'200',N'2022-1-1'),
(N'B',N'Sách B2',N'Nguyễn B2',N'14',N'200',N'2022-1-2'),
(N'C',N'Sách C2',N'Nguyễn C2',N'17',N'200',N'2022-1-5'),
(N'D',N'Sách D2',N'Nguyễn D2',N'12',N'200',N'2022-1-6');  

select * from NhaKho;