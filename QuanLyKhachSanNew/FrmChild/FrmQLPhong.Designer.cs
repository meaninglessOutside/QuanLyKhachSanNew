namespace QuanLyKhachSanNew.FrmChild
{
    partial class FrmQLPhong
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.gcPhong = new DevExpress.XtraEditors.GroupControl();
            this.teGia = new System.Windows.Forms.NumericUpDown();
            this.lblTenPhong = new DevExpress.XtraEditors.LabelControl();
            this.teTenPhong = new DevExpress.XtraEditors.TextEdit();
            this.btnSua = new DevExpress.XtraEditors.SimpleButton();
            this.btnXoa = new DevExpress.XtraEditors.SimpleButton();
            this.btnThem = new DevExpress.XtraEditors.SimpleButton();
            this.teLoaiPhong = new DevExpress.XtraEditors.TextEdit();
            this.lblLoaiPhong = new DevExpress.XtraEditors.LabelControl();
            this.lblGia = new DevExpress.XtraEditors.LabelControl();
            this.lblMaPhong = new DevExpress.XtraEditors.LabelControl();
            this.teMaPhong = new DevExpress.XtraEditors.TextEdit();
            this.dgvPhong = new DevExpress.XtraGrid.GridControl();
            this.tblPhongBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.quanLyKhachSanDataSet = new QuanLyKhachSanNew.QuanLyKhachSanDataSet();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colMaPhong = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTenPhong = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLoaiPhong = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colGia = new DevExpress.XtraGrid.Columns.GridColumn();
            this.tblPhongTableAdapter = new QuanLyKhachSanNew.QuanLyKhachSanDataSetTableAdapters.tblPhongTableAdapter();
            this.layoutControl1 = new DevExpress.XtraLayout.LayoutControl();
            this.Root = new DevExpress.XtraLayout.LayoutControlGroup();
            this.layoutControlItem1 = new DevExpress.XtraLayout.LayoutControlItem();
            this.layoutControlItem2 = new DevExpress.XtraLayout.LayoutControlItem();
            ((System.ComponentModel.ISupportInitialize)(this.gcPhong)).BeginInit();
            this.gcPhong.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.teGia)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teTenPhong.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teLoaiPhong.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teMaPhong.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPhong)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblPhongBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.quanLyKhachSanDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControl1)).BeginInit();
            this.layoutControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Root)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem2)).BeginInit();
            this.SuspendLayout();
            // 
            // gcPhong
            // 
            this.gcPhong.Controls.Add(this.teGia);
            this.gcPhong.Controls.Add(this.lblTenPhong);
            this.gcPhong.Controls.Add(this.teTenPhong);
            this.gcPhong.Controls.Add(this.btnSua);
            this.gcPhong.Controls.Add(this.btnXoa);
            this.gcPhong.Controls.Add(this.btnThem);
            this.gcPhong.Controls.Add(this.teLoaiPhong);
            this.gcPhong.Controls.Add(this.lblLoaiPhong);
            this.gcPhong.Controls.Add(this.lblGia);
            this.gcPhong.Controls.Add(this.lblMaPhong);
            this.gcPhong.Controls.Add(this.teMaPhong);
            this.gcPhong.Location = new System.Drawing.Point(12, 12);
            this.gcPhong.Name = "gcPhong";
            this.gcPhong.Size = new System.Drawing.Size(931, 185);
            this.gcPhong.TabIndex = 0;
            this.gcPhong.Text = "Quản Lý Phòng";
            // 
            // teGia
            // 
            this.teGia.Location = new System.Drawing.Point(86, 121);
            this.teGia.Maximum = new decimal(new int[] {
            99999999,
            0,
            0,
            0});
            this.teGia.Name = "teGia";
            this.teGia.Size = new System.Drawing.Size(193, 21);
            this.teGia.TabIndex = 11;
            // 
            // lblTenPhong
            // 
            this.lblTenPhong.Location = new System.Drawing.Point(26, 71);
            this.lblTenPhong.Name = "lblTenPhong";
            this.lblTenPhong.Size = new System.Drawing.Size(51, 13);
            this.lblTenPhong.TabIndex = 10;
            this.lblTenPhong.Text = "Tên Phòng";
            // 
            // teTenPhong
            // 
            this.teTenPhong.Location = new System.Drawing.Point(86, 68);
            this.teTenPhong.Name = "teTenPhong";
            this.teTenPhong.Size = new System.Drawing.Size(193, 20);
            this.teTenPhong.TabIndex = 9;
            // 
            // btnSua
            // 
            this.btnSua.Location = new System.Drawing.Point(117, 154);
            this.btnSua.Name = "btnSua";
            this.btnSua.Size = new System.Drawing.Size(75, 23);
            this.btnSua.TabIndex = 8;
            this.btnSua.Text = "Sửa";
            this.btnSua.Click += new System.EventHandler(this.btnSua_Click);
            // 
            // btnXoa
            // 
            this.btnXoa.Location = new System.Drawing.Point(204, 154);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(75, 23);
            this.btnXoa.TabIndex = 7;
            this.btnXoa.Text = "Xóa";
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // btnThem
            // 
            this.btnThem.Location = new System.Drawing.Point(26, 154);
            this.btnThem.Name = "btnThem";
            this.btnThem.Size = new System.Drawing.Size(75, 23);
            this.btnThem.TabIndex = 6;
            this.btnThem.Text = "Thêm";
            this.btnThem.Click += new System.EventHandler(this.btnThem_Click);
            // 
            // teLoaiPhong
            // 
            this.teLoaiPhong.Location = new System.Drawing.Point(86, 95);
            this.teLoaiPhong.Name = "teLoaiPhong";
            this.teLoaiPhong.Size = new System.Drawing.Size(193, 20);
            this.teLoaiPhong.TabIndex = 5;
            // 
            // lblLoaiPhong
            // 
            this.lblLoaiPhong.Location = new System.Drawing.Point(26, 98);
            this.lblLoaiPhong.Name = "lblLoaiPhong";
            this.lblLoaiPhong.Size = new System.Drawing.Size(52, 13);
            this.lblLoaiPhong.TabIndex = 3;
            this.lblLoaiPhong.Text = "Loại Phòng";
            // 
            // lblGia
            // 
            this.lblGia.Location = new System.Drawing.Point(26, 124);
            this.lblGia.Name = "lblGia";
            this.lblGia.Size = new System.Drawing.Size(15, 13);
            this.lblGia.TabIndex = 2;
            this.lblGia.Text = "Giá";
            // 
            // lblMaPhong
            // 
            this.lblMaPhong.Location = new System.Drawing.Point(26, 45);
            this.lblMaPhong.Name = "lblMaPhong";
            this.lblMaPhong.Size = new System.Drawing.Size(47, 13);
            this.lblMaPhong.TabIndex = 1;
            this.lblMaPhong.Text = "Mã Phòng";
            // 
            // teMaPhong
            // 
            this.teMaPhong.Enabled = false;
            this.teMaPhong.Location = new System.Drawing.Point(86, 42);
            this.teMaPhong.Name = "teMaPhong";
            this.teMaPhong.Size = new System.Drawing.Size(193, 20);
            this.teMaPhong.TabIndex = 0;
            // 
            // dgvPhong
            // 
            this.dgvPhong.Cursor = System.Windows.Forms.Cursors.Default;
            this.dgvPhong.DataSource = this.tblPhongBindingSource;
            this.dgvPhong.Location = new System.Drawing.Point(12, 201);
            this.dgvPhong.MainView = this.gridView1;
            this.dgvPhong.Name = "dgvPhong";
            this.dgvPhong.Size = new System.Drawing.Size(931, 340);
            this.dgvPhong.TabIndex = 1;
            this.dgvPhong.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // tblPhongBindingSource
            // 
            this.tblPhongBindingSource.DataMember = "tblPhong";
            this.tblPhongBindingSource.DataSource = this.quanLyKhachSanDataSet;
            // 
            // quanLyKhachSanDataSet
            // 
            this.quanLyKhachSanDataSet.DataSetName = "QuanLyKhachSanDataSet";
            this.quanLyKhachSanDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colMaPhong,
            this.colTenPhong,
            this.colLoaiPhong,
            this.colGia});
            this.gridView1.GridControl = this.dgvPhong;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsDetail.ShowDetailTabs = false;
            this.gridView1.OptionsView.ShowDetailButtons = false;
            // 
            // colMaPhong
            // 
            this.colMaPhong.Caption = "Mã Phòng";
            this.colMaPhong.FieldName = "MaPhong";
            this.colMaPhong.Name = "colMaPhong";
            this.colMaPhong.Visible = true;
            this.colMaPhong.VisibleIndex = 0;
            // 
            // colTenPhong
            // 
            this.colTenPhong.Caption = "Tên Phòng";
            this.colTenPhong.FieldName = "TenPhong";
            this.colTenPhong.Name = "colTenPhong";
            this.colTenPhong.Visible = true;
            this.colTenPhong.VisibleIndex = 1;
            // 
            // colLoaiPhong
            // 
            this.colLoaiPhong.Caption = "Loại Phòng";
            this.colLoaiPhong.FieldName = "LoaiPhong";
            this.colLoaiPhong.Name = "colLoaiPhong";
            this.colLoaiPhong.Visible = true;
            this.colLoaiPhong.VisibleIndex = 2;
            // 
            // colGia
            // 
            this.colGia.Caption = "Giá";
            this.colGia.FieldName = "Gia";
            this.colGia.Name = "colGia";
            this.colGia.Visible = true;
            this.colGia.VisibleIndex = 3;
            // 
            // tblPhongTableAdapter
            // 
            this.tblPhongTableAdapter.ClearBeforeFill = true;
            // 
            // layoutControl1
            // 
            this.layoutControl1.Controls.Add(this.dgvPhong);
            this.layoutControl1.Controls.Add(this.gcPhong);
            this.layoutControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.layoutControl1.Location = new System.Drawing.Point(0, 0);
            this.layoutControl1.Name = "layoutControl1";
            this.layoutControl1.Root = this.Root;
            this.layoutControl1.Size = new System.Drawing.Size(955, 553);
            this.layoutControl1.TabIndex = 2;
            this.layoutControl1.Text = "layoutControl1";
            // 
            // Root
            // 
            this.Root.EnableIndentsWithoutBorders = DevExpress.Utils.DefaultBoolean.True;
            this.Root.GroupBordersVisible = false;
            this.Root.Items.AddRange(new DevExpress.XtraLayout.BaseLayoutItem[] {
            this.layoutControlItem1,
            this.layoutControlItem2});
            this.Root.Name = "Root";
            this.Root.Size = new System.Drawing.Size(955, 553);
            this.Root.TextVisible = false;
            // 
            // layoutControlItem1
            // 
            this.layoutControlItem1.Control = this.gcPhong;
            this.layoutControlItem1.Location = new System.Drawing.Point(0, 0);
            this.layoutControlItem1.MaxSize = new System.Drawing.Size(0, 189);
            this.layoutControlItem1.MinSize = new System.Drawing.Size(5, 189);
            this.layoutControlItem1.Name = "layoutControlItem1";
            this.layoutControlItem1.Size = new System.Drawing.Size(935, 189);
            this.layoutControlItem1.SizeConstraintsType = DevExpress.XtraLayout.SizeConstraintsType.Custom;
            this.layoutControlItem1.TextSize = new System.Drawing.Size(0, 0);
            this.layoutControlItem1.TextVisible = false;
            // 
            // layoutControlItem2
            // 
            this.layoutControlItem2.Control = this.dgvPhong;
            this.layoutControlItem2.Location = new System.Drawing.Point(0, 189);
            this.layoutControlItem2.Name = "layoutControlItem2";
            this.layoutControlItem2.Size = new System.Drawing.Size(935, 344);
            this.layoutControlItem2.TextSize = new System.Drawing.Size(0, 0);
            this.layoutControlItem2.TextVisible = false;
            // 
            // FrmQLPhong
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(955, 553);
            this.Controls.Add(this.layoutControl1);
            this.Name = "FrmQLPhong";
            this.Text = "Quản Lý Phòng";
            this.Load += new System.EventHandler(this.FrmPhong_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gcPhong)).EndInit();
            this.gcPhong.ResumeLayout(false);
            this.gcPhong.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.teGia)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teTenPhong.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teLoaiPhong.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teMaPhong.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPhong)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblPhongBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.quanLyKhachSanDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControl1)).EndInit();
            this.layoutControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.Root)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.GroupControl gcPhong;
        private DevExpress.XtraEditors.TextEdit teLoaiPhong;
        private DevExpress.XtraEditors.LabelControl lblLoaiPhong;
        private DevExpress.XtraEditors.LabelControl lblGia;
        private DevExpress.XtraEditors.LabelControl lblMaPhong;
        private DevExpress.XtraEditors.TextEdit teMaPhong;
        private DevExpress.XtraEditors.SimpleButton btnSua;
        private DevExpress.XtraEditors.SimpleButton btnXoa;
        private DevExpress.XtraEditors.SimpleButton btnThem;
        private DevExpress.XtraEditors.LabelControl lblTenPhong;
        private DevExpress.XtraEditors.TextEdit teTenPhong;
        private DevExpress.XtraGrid.GridControl dgvPhong;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private QuanLyKhachSanDataSet quanLyKhachSanDataSet;
        private System.Windows.Forms.BindingSource tblPhongBindingSource;
        private QuanLyKhachSanDataSetTableAdapters.tblPhongTableAdapter tblPhongTableAdapter;
        private DevExpress.XtraGrid.Columns.GridColumn colMaPhong;
        private DevExpress.XtraGrid.Columns.GridColumn colTenPhong;
        private DevExpress.XtraGrid.Columns.GridColumn colLoaiPhong;
        private DevExpress.XtraGrid.Columns.GridColumn colGia;
        private DevExpress.XtraLayout.LayoutControl layoutControl1;
        private DevExpress.XtraLayout.LayoutControlGroup Root;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem1;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem2;
        private System.Windows.Forms.NumericUpDown teGia;
    }
}