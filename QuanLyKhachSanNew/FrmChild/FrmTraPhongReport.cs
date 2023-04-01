using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using DevExpress.XtraReports.UI;
using DevExpress.DocumentServices.ServiceModel.DataContracts;
using QuanLyKhachSanNew.Report;

namespace QuanLyKhachSanNew.FrmChild
{
    public partial class FrmTraPhongReport : DevExpress.XtraEditors.XtraForm
    {
        public FrmTraPhongReport(DataTable tbl, int tienDV, int tongtien)
        {
            InitializeComponent();

            TraPhongReport report = new TraPhongReport(tbl, tienDV, tongtien);
            documentViewer1.DocumentSource = report;

            //this.documentViewer1.DocumentSource = typeof(QuanLyKhachSanNew.Report.TraPhongReport);
        }

        private void FrmTraPhongReport_Load(object sender, EventArgs e)
        {


            //ReportParameter[] parameter = new ReportParameter[6];
            //parameter[0] = new ReportParameter("MaDK"); //đay là tham số đầu tiên.
            //parameter[0].Values.Add("MaDK01"); // Giá trị của tham số đầu tiền mình truyền vào.

            
        }
    }
}