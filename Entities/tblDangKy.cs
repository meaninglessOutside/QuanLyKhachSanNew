﻿using System;
using System.Text;
namespace AppCode.Entities 
{
	public class EtblDangKy
	{
       

		public EtblDangKy()
		{
		}

        public EtblDangKy(string maDK, string maKhach, string maPhong, DateTime ngayDangKy, DateTime? ngayDen, DateTime? ngayDi, int tienDat, int soNguoi, string nghiChu, int trangThai)
        {
            // TODO: Complete member initialization
            this.MaDK = maDK;
            this.MaKhach = maKhach;
            this.MaPhong = maPhong;
            this.NgayDangKy = ngayDangKy;
            this.NgayDen = ngayDen;
            this.NgayDi = ngayDi;
            this.TienDat = tienDat;
            this.SoNguoi = soNguoi;
            this.NgiChu = nghiChu;
            this.TrangThai = trangThai;
        }
		public string MaDK
		{ get;set; }
		public string MaKhach
		{ get;set; }
		public string MaPhong
		{ get;set; }
		public DateTime NgayDangKy
		{ get;set; }
		public DateTime? NgayDen
		{ get;set; }
        // Ngay co the bang null hay khong
        public DateTime? NgayDi
        {get; set;}
		public int TienDat
		{ get;set; }
		public int SoNguoi
		{ get;set; }
        public string NgiChu
        { get;set; }

        public int TrangThai
        { get; set; }
    }
}