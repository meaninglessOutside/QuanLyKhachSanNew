namespace QuanLyKhachSanNew.FrmChild
{
    partial class FrmQLDichVu
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
            this.gcQuanLyDichVu = new DevExpress.XtraEditors.GroupControl();
            this.teGiaTien = new System.Windows.Forms.NumericUpDown();
            this.btnXoa = new DevExpress.XtraEditors.SimpleButton();
            this.btnSua = new DevExpress.XtraEditors.SimpleButton();
            this.btnThem = new DevExpress.XtraEditors.SimpleButton();
            this.lblGiaTien = new DevExpress.XtraEditors.LabelControl();
            this.lblTenDV = new DevExpress.XtraEditors.LabelControl();
            this.teTenDV = new DevExpress.XtraEditors.TextEdit();
            this.lblMaDV = new DevExpress.XtraEditors.LabelControl();
            this.teMaDV = new DevExpress.XtraEditors.TextEdit();
            this.quanLyKhachSanDataSet = new QuanLyKhachSanNew.QuanLyKhachSanDataSet();
            this.tblDichVuBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.tblDichVuTableAdapter = new QuanLyKhachSanNew.QuanLyKhachSanDataSetTableAdapters.tblDichVuTableAdapter();
            this.dgvDichVu = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colMaDV = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTenDV = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colGiaTien = new DevExpress.XtraGrid.Columns.GridColumn();
            this.layoutControl1 = new DevExpress.XtraLayout.LayoutControl();
            this.Root = new DevExpress.XtraLayout.LayoutControlGroup();
            this.layoutControlItem1 = new DevExpress.XtraLayout.LayoutControlItem();
            this.layoutControlItem2 = new DevExpress.XtraLayout.LayoutControlItem();
            ((System.ComponentModel.ISupportInitialize)(this.gcQuanLyDichVu)).BeginInit();
            this.gcQuanLyDichVu.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.teGiaTien)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teTenDV.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teMaDV.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.quanLyKhachSanDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblDichVuBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDichVu)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControl1)).BeginInit();
            this.layoutControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Root)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem2)).BeginInit();
            this.SuspendLayout();
            // 
            // gcQuanLyDichVu
            // 
            this.gcQuanLyDichVu.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gcQuanLyDichVu.Controls.Add(this.teGiaTien);
            this.gcQuanLyDichVu.Controls.Add(this.btnXoa);
            this.gcQuanLyDichVu.Controls.Add(this.btnSua);
            this.gcQuanLyDichVu.Controls.Add(this.btnThem);
            this.gcQuanLyDichVu.Controls.Add(this.lblGiaTien);
            this.gcQuanLyDichVu.Controls.Add(this.lblTenDV);
            this.gcQuanLyDichVu.Controls.Add(this.teTenDV);
            this.gcQuanLyDichVu.Controls.Add(this.lblMaDV);
            this.gcQuanLyDichVu.Controls.Add(this.teMaDV);
            this.gcQuanLyDichVu.Location = new System.Drawing.Point(12, 12);
            this.gcQuanLyDichVu.Name = "gcQuanLyDichVu";
            this.gcQuanLyDichVu.Size = new System.Drawing.Size(1097, 169);
            this.gcQuanLyDichVu.TabIndex = 0;
            this.gcQuanLyDichVu.Text = "Quản Lý Dịch Vụ";
            // 
            // teGiaTien
            // 
            this.teGiaTien.Location = new System.Drawing.Point(104, 96);
            this.teGiaTien.Name = "teGiaTien";
            this.teGiaTien.Size = new System.Drawing.Size(238, 21);
            this.teGiaTien.TabIndex = 9;
            // 
            // btnXoa
            // 
            this.btnXoa.Location = new System.Drawing.Point(255, 127);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(75, 23);
            this.btnXoa.TabIndex = 8;
            this.btnXoa.Text = "Xóa";
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // btnSua
            // 
            this.btnSua.Location = new System.Drawing.Point(151, 127);
            this.btnSua.Name = "btnSua";
            this.btnSua.Size = new System.Drawing.Size(75, 23);
            this.btnSua.TabIndex = 7;
            this.btnSua.Text = "Sửa";
            this.btnSua.Click += new System.EventHandler(this.btnSua_Click);
            // 
            // btnThem
            // 
            this.btnThem.Location = new System.Drawing.Point(44, 127);
            this.btnThem.Name = "btnThem";
            this.btnThem.Size = new System.Drawing.Size(75, 23);
            this.btnThem.TabIndex = 6;
            this.btnThem.Text = "Thêm";
            this.btnThem.Click += new System.EventHandler(this.btnThem_Click);
            // 
            // lblGiaTien
            // 
            this.lblGiaTien.Location = new System.Drawing.Point(37, 102);
            this.lblGiaTien.Name = "lblGiaTien";
            this.lblGiaTien.Size = new System.Drawing.Size(38, 13);
            this.lblGiaTien.TabIndex = 5;
            this.lblGiaTien.Text = "Giá Tiền";
            // 
            // lblTenDV
            // 
            this.lblTenDV.Location = new System.Drawing.Point(37, 73);
            this.lblTenDV.Name = "lblTenDV";
            this.lblTenDV.Size = new System.Drawing.Size(56, 13);
            this.lblTenDV.TabIndex = 3;
            this.lblTenDV.Text = "Tên Dịch Vụ";
            // 
            // teTenDV
            // 
            this.teTenDV.Location = new System.Drawing.Point(104, 70);
            this.teTenDV.Name = "teTenDV";
            this.teTenDV.Size = new System.Drawing.Size(238, 20);
            this.teTenDV.TabIndex = 2;
            // 
            // lblMaDV
            // 
            this.lblMaDV.Location = new System.Drawing.Point(37, 47);
            this.lblMaDV.Name = "lblMaDV";
            this.lblMaDV.Size = new System.Drawing.Size(52, 13);
            this.lblMaDV.TabIndex = 1;
            this.lblMaDV.Text = "Mã Dịch Vụ";
            // 
            // teMaDV
            // 
            this.teMaDV.Enabled = false;
            this.teMaDV.Location = new System.Drawing.Point(104, 44);
            this.teMaDV.Name = "teMaDV";
            this.teMaDV.Size = new System.Drawing.Size(238, 20);
            this.teMaDV.TabIndex = 0;
            // 
            // quanLyKhachSanDataSet
            // 
            this.quanLyKhachSanDataSet.DataSetName = "QuanLyKhachSanDataSet";
            this.quanLyKhachSanDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // tblDichVuBindingSource
            // 
            this.tblDichVuBindingSource.DataMember = "tblDichVu";
            this.tblDichVuBindingSource.DataSource = this.quanLyKhachSanDataSet;
            // 
            // tblDichVuTableAdapter
            // 
            this.tblDichVuTableAdapter.ClearBeforeFill = true;
            // 
            // dgvDichVu
            // 
            this.dgvDichVu.Cursor = System.Windows.Forms.Cursors.Default;
            this.dgvDichVu.DataSource = this.tblDichVuBindingSource;
            this.dgvDichVu.Location = new System.Drawing.Point(12, 185);
            this.dgvDichVu.MainView = this.gridView1;
            this.dgvDichVu.Name = "dgvDichVu";
            this.dgvDichVu.Size = new System.Drawing.Size(1097, 361);
            this.dgvDichVu.TabIndex = 1;
            this.dgvDichVu.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colMaDV,
            this.colTenDV,
            this.colGiaTien});
            this.gridView1.GridControl = this.dgvDichVu;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsView.ShowDetailButtons = false;
            // 
            // colMaDV
            // 
            this.colMaDV.Caption = "Mã Dịch Vụ";
            this.colMaDV.FieldName = "MaDV";
            this.colMaDV.Name = "colMaDV";
            this.colMaDV.Visible = true;
            this.colMaDV.VisibleIndex = 0;
            // 
            // colTenDV
            // 
            this.colTenDV.Caption = "Tên Dịch Vụ";
            this.colTenDV.FieldName = "TenDV";
            this.colTenDV.Name = "colTenDV";
            this.colTenDV.Visible = true;
            this.colTenDV.VisibleIndex = 1;
            // 
            // colGiaTien
            // 
            this.colGiaTien.Caption = "Giá Tiền";
            this.colGiaTien.FieldName = "GiaTien";
            this.colGiaTien.Name = "colGiaTien";
            this.colGiaTien.Visible = true;
            this.colGiaTien.VisibleIndex = 2;
            // 
            // layoutControl1
            // 
            this.layoutControl1.Controls.Add(this.dgvDichVu);
            this.layoutControl1.Controls.Add(this.gcQuanLyDichVu);
            this.layoutControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.layoutControl1.Location = new System.Drawing.Point(0, 0);
            this.layoutControl1.Name = "layoutControl1";
            this.layoutControl1.Root = this.Root;
            this.layoutControl1.Size = new System.Drawing.Size(1121, 558);
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
            this.Root.Size = new System.Drawing.Size(1121, 558);
            this.Root.TextVisible = false;
            // 
            // layoutControlItem1
            // 
            this.layoutControlItem1.Control = this.gcQuanLyDichVu;
            this.layoutControlItem1.Location = new System.Drawing.Point(0, 0);
            this.layoutControlItem1.MaxSize = new System.Drawing.Size(0, 173);
            this.layoutControlItem1.MinSize = new System.Drawing.Size(5, 173);
            this.layoutControlItem1.Name = "layoutControlItem1";
            this.layoutControlItem1.Size = new System.Drawing.Size(1101, 173);
            this.layoutControlItem1.SizeConstraintsType = DevExpress.XtraLayout.SizeConstraintsType.Custom;
            this.layoutControlItem1.TextSize = new System.Drawing.Size(0, 0);
            this.layoutControlItem1.TextVisible = false;
            // 
            // layoutControlItem2
            // 
            this.layoutControlItem2.Control = this.dgvDichVu;
            this.layoutControlItem2.Location = new System.Drawing.Point(0, 173);
            this.layoutControlItem2.Name = "layoutControlItem2";
            this.layoutControlItem2.Size = new System.Drawing.Size(1101, 365);
            this.layoutControlItem2.TextSize = new System.Drawing.Size(0, 0);
            this.layoutControlItem2.TextVisible = false;
            // 
            // FrmQLDichVu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1121, 558);
            this.Controls.Add(this.layoutControl1);
            this.Name = "FrmQLDichVu";
            this.Text = "Quản Lý Dịch Vụ";
            this.Load += new System.EventHandler(this.FrmQLDichVu_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gcQuanLyDichVu)).EndInit();
            this.gcQuanLyDichVu.ResumeLayout(false);
            this.gcQuanLyDichVu.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.teGiaTien)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teTenDV.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teMaDV.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.quanLyKhachSanDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblDichVuBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDichVu)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControl1)).EndInit();
            this.layoutControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.Root)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.GroupControl gcQuanLyDichVu;
        private DevExpress.XtraEditors.SimpleButton btnXoa;
        private DevExpress.XtraEditors.SimpleButton btnSua;
        private DevExpress.XtraEditors.SimpleButton btnThem;
        private DevExpress.XtraEditors.LabelControl lblGiaTien;
        private DevExpress.XtraEditors.LabelControl lblTenDV;
        private DevExpress.XtraEditors.TextEdit teTenDV;
        private DevExpress.XtraEditors.LabelControl lblMaDV;
        private DevExpress.XtraEditors.TextEdit teMaDV;
        private QuanLyKhachSanDataSet quanLyKhachSanDataSet;
        private System.Windows.Forms.BindingSource tblDichVuBindingSource;
        private QuanLyKhachSanDataSetTableAdapters.tblDichVuTableAdapter tblDichVuTableAdapter;
        private DevExpress.XtraGrid.GridControl dgvDichVu;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn colMaDV;
        private DevExpress.XtraGrid.Columns.GridColumn colTenDV;
        private DevExpress.XtraGrid.Columns.GridColumn colGiaTien;
        private System.Windows.Forms.NumericUpDown teGiaTien;
        private DevExpress.XtraLayout.LayoutControl layoutControl1;
        private DevExpress.XtraLayout.LayoutControlGroup Root;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem1;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem2;
    }
}