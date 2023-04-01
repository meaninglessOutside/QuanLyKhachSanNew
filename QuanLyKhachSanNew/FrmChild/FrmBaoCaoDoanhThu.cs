using AppCode.Business;
using DevExpress.XtraEditors;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyKhachSanNew.FrmChild
{
    public partial class FrmBaoCaoDoanhThu : XtraForm
    {
        public FrmBaoCaoDoanhThu()
        {
            InitializeComponent();
            dpkTuNgay.EditValue = dpkDenNgay.EditValue = DateTime.Now.Date;
        }

        private void btnXem_Click(object sender, EventArgs e)
        {
            var result = BtblDangKy.BaoCaoDoanhThu((DateTime)dpkTuNgay.EditValue, (DateTime)dpkDenNgay.EditValue);
            grdBaoCao.DataSource = result;
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            SaveFileDialog oSaveFileDialog = new SaveFileDialog();
            oSaveFileDialog.Filter = "Excel Files|*.xlsx";
            if (oSaveFileDialog.ShowDialog() == DialogResult.OK)
            {
                string fileName = oSaveFileDialog.FileName;
                grdBaoCao.ExportToXlsx(fileName);
                XtraMessageBox.Show("Xuất file thành công");
            }
        }
    }
}
