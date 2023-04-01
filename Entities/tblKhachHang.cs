﻿using System;
using System.Text;
namespace AppCode.Entities 
{
	public class EtblKhachHang
	{
		public EtblKhachHang()
		{
		}
		public EtblKhachHang(string vMaKhach, string vHoDem, string vTen, DateTime vNgaySinh, string vCMND, string vQuocTich, string vNghiChu)
		{
			this.MaKhach = vMaKhach;
			this.HoDem = vHoDem;
			this.Ten = vTen;
			this.NgaySinh = vNgaySinh;
			this.CMND = vCMND;
			this.QuocTich = vQuocTich;
			this.NghiChu = vNghiChu;
		}
		public string MaKhach
		{ get;set; }
		public string HoDem
		{ get;set; }
		public string Ten
		{ get;set; }
		public DateTime NgaySinh
		{ get;set; }
		public string CMND
		{ get;set; }
		public string QuocTich
		{ get;set; }
		public string NghiChu
		{ get;set; }
	}
}