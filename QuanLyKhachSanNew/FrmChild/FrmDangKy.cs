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
using AppCode.Business;
using AppCode.Entities;



namespace QuanLyKhachSanNew.FrmChild
{
    public partial class FrmDangKy : DevExpress.XtraEditors.XtraForm
    {
        private Boolean ttDK = false;
        private Boolean dangKy = true;

        public FrmDangKy()
        {
            InitializeComponent();
        }

        private void FrmDangKy_Load(object sender, EventArgs e)
        {
            dtpNgayDangKy.EditValue = DateTime.Now;
            dtpNgaySD.EditValue = DateTime.Now;
            // TODO: This line of code loads data into the 'quanLyKhachSanDataSet.tblNhanVien' table. You can move, or remove it, as needed.
            this.tblNhanVienTableAdapter.Fill(this.quanLyKhachSanDataSet.tblNhanVien);
            // TODO: This line of code loads data into the 'quanLyKhachSanDataSet.tblDichVu' table. You can move, or remove it, as needed.
            this.tblDichVuTableAdapter.Fill(this.quanLyKhachSanDataSet.tblDichVu);
            // TODO: This line of code loads data into the 'quanLyKhachSanDataSet.tblPhong' table. You can move, or remove it, as needed.
            this.tblPhongTableAdapter.Fill(this.quanLyKhachSanDataSet.tblPhong);
            load_Data();

            gcDKDV.Enabled = false;
            lueMaPhong.Properties.DataSource = BtblDangKy.DanhSachPhongChuaDangKy();
        }

        private void load_Group()
        {


        }

        private void load_Data()
        {
            // TODO: This line of code loads data into the 'quanLyKhachSanDataSet.tblKhachHang' table. You can move, or remove it, as needed.
            this.tblKhachHangTableAdapter.Fill(this.quanLyKhachSanDataSet.tblKhachHang);

        }

        private void lueMaKhach_EditValueChanged(object sender, EventArgs e)
        {
            String maKhach = lueMaKhach.Text.ToString();
            EtblKhachHang khach;
            khach = BtblKhachHang.SelectByID(maKhach);
            lueTenKhach.Text = khach.HoDem + " " + khach.Ten;
            lueCMND.Text = khach.CMND;
            // Moi lan chon se tat group2 di
            ttDK = false;
            load_Group();
        }

        private void ceTuDongNhapMDK_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void btnKiemTraDK_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void tblThem_CheckedChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(lueMaPhong.Text))
            {
                XtraMessageBox.Show("Chưa chọn phòng đăng ký");
                return;
            }

            String maDK = $"DK-{DateTime.Now}";
            String maKhach = lueMaKhach.Text.ToString();
            DateTime ngayDangKy = dtpNgayDangKy.DateTime;
            int soNguoi = int.Parse(teSoNguoi.Text.ToString().Trim());
            //Du Lieu chua Co khai bao Null
            String nghiChu = "Không Có";
            String maPhong = null;
            int tienDat = 0;
            Nullable<DateTime> dateNull = null;

            EtblDangKy dangky = new EtblDangKy(maDK, maKhach, maPhong, ngayDangKy, dateNull, dateNull, tienDat, soNguoi, nghiChu, 1);
            BtblDangKy.Insert(dangky);

            DangKyPhong();

            XtraMessageBox.Show("Đã Thêm Thông Tin Đăng Ký");
            //Bat hai group khi them xong
            dangKy = false;
            load_Group();


            //btnLuu.Enabled = true;

            lueMaPhong.Properties.DataSource = BtblDangKy.DanhSachPhongChuaDangKy();
            dtpNgayDangKy.EditValue = DateTime.Now;
            teSoNguoi.Value = 1;
            lueMaKhach.EditValue = null;
        }




        private void DangKyPhong()
        {

            String maDK = $"DK-{DateTime.Now}";
            String maKhach = lueMaKhach.Text.ToString();
            DateTime ngayDangKy = dtpNgayDangKy.DateTime;
            int soNguoi = int.Parse(teSoNguoi.Text.ToString().Trim());
            //Du Lieu chua Co khai bao Null
            String nghiChu = "Không Có";
            String maPhong = lueMaPhong.Text.ToString();
            int tienDat = 0;
            Nullable<DateTime> dateNull = null;

            EtblDangKy dangky = new EtblDangKy(maDK, maKhach, maPhong, ngayDangKy, dateNull, dateNull, tienDat, soNguoi, nghiChu, 1);
            BtblDangKy.Update(dangky);

            gcDKDV.Enabled = true;
            //btnLuu.Enabled = true;
        }

        private void btnChinhSua_CheckedChanged(object sender, EventArgs e)
        {
            dangKy = true;
            load_Group();
        }

        //private void btnLuu_CheckedChanged(object sender, EventArgs e)
        //{
        //    String maDK = teMaDK.Text.ToString().Trim();
        //    String maKhach = lueMaKhach.Text.ToString();
        //    DateTime ngayDangKy = dtpNgayDangKy.DateTime;
        //    int soNguoi = int.Parse(teSoNguoi.Text.ToString().Trim());
        //    //Du Lieu chua Co khai bao Null
        //    String nghiChu = "Không Có";
        //    String maPhong = lueMaPhong.Text.ToString();
        //    int tienDat = 0;
        //    Nullable<DateTime> dateNull = null;

        //    EtblDangKy dangky = new EtblDangKy(maDK, maKhach, maPhong, ngayDangKy, dateNull, dateNull, tienDat, soNguoi, nghiChu, 1);
        //    BtblDangKy.Update(dangky);

        //    dangKy = false;
        //    load_Group();
        //    XtraMessageBox.Show("Đã lưu thông tin đăng ký phòng");
        //}

        private void checkButton2_CheckedChanged(object sender, EventArgs e)
        {
            String maDK = $"DK-{DateTime.Now}";
            String maDV = lueMaDV.Text.ToString();
            int soLuong = Int32.Parse(teSoLuong.Text.ToString());
            String maNV = lueMaNV.Text.ToString();
            DateTime ngaySD = dtpNgaySD.DateTime;

            EtblSDDV sddv = new EtblSDDV(maDK, maDV, maNV, ngaySD, soLuong);
            BtblSDDV.Insert(sddv);
            XtraMessageBox.Show("Thêm Dịch Vụ Thành Công");

            dangKy = false;
            load_Group();
        }

        private void btnThemKhach_CheckedChanged(object sender, EventArgs e)
        {
            FrmChild.FrmQLKhachHang khachHang = new FrmChild.FrmQLKhachHang();
            khachHang.ShowDialog();
        }

        private void lblNgaySD_Click(object sender, EventArgs e)
        {

        }

        private void lblSoLuong_Click(object sender, EventArgs e)
        {

        }

        private void lblMaNV_Click(object sender, EventArgs e)
        {

        }

        private void lblMaDV_Click(object sender, EventArgs e)
        {

        }

        private void lueMaDV_EditValueChanged(object sender, EventArgs e)
        {

        }

        private void teSoLuong_EditValueChanged(object sender, EventArgs e)
        {

        }

        private void dtpNgaySD_EditValueChanged(object sender, EventArgs e)
        {

        }

        private void lueMaNV_EditValueChanged(object sender, EventArgs e)
        {

        }

        private void btnDKPhong_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}