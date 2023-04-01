using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using DevExpress.XtraReports.Parameters;
using System.Data;

namespace QuanLyKhachSanNew.Report
{
    public partial class TraPhongReport : DevExpress.XtraReports.UI.XtraReport
    {
        public TraPhongReport(DataTable tbl, int tienDV, int tongtien)
        {
            InitializeComponent();

            MaDK.Value = tbl.Rows[0]["MaDK"];
            rpTenPhong.Text = tbl.Rows[0]["TenPhong"].ToString();
            NgayDi.Value = tbl.Rows[0]["NgayDi"];
            NgayDen.Value = tbl.Rows[0]["NgayDen"];
            TienThuePhong.Value = tbl.Rows[0]["Gia"];
            TienDichVu.Value = tienDV;
            TienDatCoc.Value = tbl.Rows[0]["TienDat"];
            TongTien.Value = tongtien;

        }

    }
}
