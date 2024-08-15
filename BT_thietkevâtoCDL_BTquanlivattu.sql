create database quanlivattu;
use quanlivattu;

CREATE TABLE phieuxuat (
    SoPX INT AUTO_INCREMENT PRIMARY KEY,
    NgayXuat DATE
);

CREATE TABLE vattu (
    MaVTU INT AUTO_INCREMENT PRIMARY KEY,
    TenVTU VARCHAR(50),
    DGNhap INT
);

CREATE TABLE phieunhap (
    SoPN INT AUTO_INCREMENT PRIMARY KEY,
    ngayNhap DATE
);

CREATE TABLE nhacc (
    MaNCC INT AUTO_INCREMENT PRIMARY KEY,
    TenNCC VARCHAR(50),
    diachi VARCHAR(50)
);


CREATE TABLE dondh (
    SoDH INT AUTO_INCREMENT PRIMARY KEY,
    NgayHD DATE,
    MaNCC INT,
    FOREIGN KEY (MaNCC)
        REFERENCES nhacc (MaNCC)
);



CREATE TABLE SDT (
    phoneNumber VARCHAR(10) PRIMARY KEY
);

CREATE TABLE nhacc_SDT (
    MaNCC INT,
    phoneNumber VARCHAR(10),
    FOREIGN KEY (MaNCC)
        REFERENCES nhacc (MaNCC),
    FOREIGN KEY (phoneNumber)
        REFERENCES SDT (phoneNumber)
);

CREATE TABLE phieuxuat_vattu (
 SoPX INT,
  MaVTU INT,
    DGXuat INT,
    SLXuat INT,
    PRIMARY KEY (SoPX , MaVTU),
    FOREIGN KEY (SoPX)
        REFERENCES phieuxuat (SoPX),
    FOREIGN KEY (MaVTU)
        REFERENCES vattu (MaVTU)
);

CREATE TABLE vattu_phieunhap (
MaVTU INT,
SoPN INT,
    DGNhap INT,
    SLNhap INT,
    PRIMARY KEY (MaVTU , SoPN),
    FOREIGN KEY (MaVTU)
        REFERENCES vattu (MaVTU),
    FOREIGN KEY (SoPN)
        REFERENCES phieunhap (SoPN)
);

CREATE TABLE vattu_dondh (
    MaVTU INT,
    SoDH INT,
    PRIMARY KEY (MaVTU , SoDH),
    FOREIGN KEY (MaVTU)
        REFERENCES vattu (MaVTU),
    FOREIGN KEY (SoDH)
        REFERENCES dondh (SoDH)
);



