namespace QuanLyKhachSanNew.FrmChild
{
    partial class FrmQLChucVu
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
            this.gcChucVu = new DevExpress.XtraEditors.GroupControl();
            this.teTenDonVi = new DevExpress.XtraEditors.TextEdit();
            this.btnXoa = new DevExpress.XtraEditors.SimpleButton();
            this.btnSua = new DevExpress.XtraEditors.SimpleButton();
            this.btnThem = new DevExpress.XtraEditors.SimpleButton();
            this.lblChuVu = new DevExpress.XtraEditors.LabelControl();
            this.teChucVu = new DevExpress.XtraEditors.TextEdit();
            this.lblTenDonVi = new DevExpress.XtraEditors.LabelControl();
            this.lblKhu = new DevExpress.XtraEditors.LabelControl();
            this.teKhu = new DevExpress.XtraEditors.TextEdit();
            this.dgvChucVu = new DevExpress.XtraGrid.GridControl();
            this.tblChucVuBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.quanLyKhachSanDataSet = new QuanLyKhachSanNew.QuanLyKhachSanDataSet();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colMaCV = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colKhu = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTenDonVi = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colChucVu = new DevExpress.XtraGrid.Columns.GridColumn();
            this.tblChucVuTableAdapter = new QuanLyKhachSanNew.QuanLyKhachSanDataSetTableAdapters.tblChucVuTableAdapter();
            this.layoutControl1 = new DevExpress.XtraLayout.LayoutControl();
            this.Root = new DevExpress.XtraLayout.LayoutControlGroup();
            this.layoutControlItem1 = new DevExpress.XtraLayout.LayoutControlItem();
            this.layoutControlItem2 = new DevExpress.XtraLayout.LayoutControlItem();
            this.teMaCV = new DevExpress.XtraEditors.TextEdit();
            this.lblMaCV = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.gcChucVu)).BeginInit();
            this.gcChucVu.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.teTenDonVi.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teChucVu.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teKhu.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvChucVu)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblChucVuBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.quanLyKhachSanDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControl1)).BeginInit();
            this.layoutControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Root)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teMaCV.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // gcChucVu
            // 
            this.gcChucVu.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gcChucVu.Controls.Add(this.teTenDonVi);
            this.gcChucVu.Controls.Add(this.btnXoa);
            this.gcChucVu.Controls.Add(this.btnSua);
            this.gcChucVu.Controls.Add(this.btnThem);
            this.gcChucVu.Controls.Add(this.lblChuVu);
            this.gcChucVu.Controls.Add(this.teChucVu);
            this.gcChucVu.Controls.Add(this.lblTenDonVi);
            this.gcChucVu.Controls.Add(this.lblKhu);
            this.gcChucVu.Controls.Add(this.teKhu);
            this.gcChucVu.Controls.Add(this.lblMaCV);
            this.gcChucVu.Controls.Add(this.teMaCV);
            this.gcChucVu.Location = new System.Drawing.Point(12, 12);
            this.gcChucVu.Name = "gcChucVu";
            this.gcChucVu.Size = new System.Drawing.Size(652, 128);
            this.gcChucVu.TabIndex = 0;
            this.gcChucVu.Text = "Quản Lý Chức Vụ";
            // 
            // teTenDonVi
            // 
            this.teTenDonVi.Location = new System.Drawing.Point(290, 43);
            this.teTenDonVi.Name = "teTenDonVi";
            this.teTenDonVi.Size = new System.Drawing.Size(119, 20);
            this.teTenDonVi.TabIndex = 11;
            this.teTenDonVi.EditValueChanged += new System.EventHandler(this.teTenDonVi_EditValueChanged);
            // 
            // btnXoa
            // 
            this.btnXoa.Location = new System.Drawing.Point(334, 99);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(75, 23);
            this.btnXoa.TabIndex = 10;
            this.btnXoa.Text = "Xóa";
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // btnSua
            // 
            this.btnSua.Location = new System.Drawing.Point(205, 99);
            this.btnSua.Name = "btnSua";
            this.btnSua.Size = new System.Drawing.Size(75, 23);
            this.btnSua.TabIndex = 9;
            this.btnSua.Text = "Sửa";
            this.btnSua.Click += new System.EventHandler(this.btnSua_Click);
            // 
            // btnThem
            // 
            this.btnThem.Location = new System.Drawing.Point(97, 99);
            this.btnThem.Name = "btnThem";
            this.btnThem.Size = new System.Drawing.Size(75, 23);
            this.btnThem.TabIndex = 8;
            this.btnThem.Text = "Thêm";
            this.btnThem.Click += new System.EventHandler(this.btnThem_Click);
            // 
            // lblChuVu
            // 
            this.lblChuVu.Location = new System.Drawing.Point(229, 72);
            this.lblChuVu.Name = "lblChuVu";
            this.lblChuVu.Size = new System.Drawing.Size(40, 13);
            this.lblChuVu.TabIndex = 7;
            this.lblChuVu.Text = "Chức Vụ";
            // 
            // teChucVu
            // 
            this.teChucVu.Location = new System.Drawing.Point(290, 69);
            this.teChucVu.Name = "teChucVu";
            this.teChucVu.Size = new System.Drawing.Size(119, 20);
            this.teChucVu.TabIndex = 6;
            this.teChucVu.EditValueChanged += new System.EventHandler(this.teChucVu_EditValueChanged);
            // 
            // lblTenDonVi
            // 
            this.lblTenDonVi.Location = new System.Drawing.Point(229, 46);
            this.lblTenDonVi.Name = "lblTenDonVi";
            this.lblTenDonVi.Size = new System.Drawing.Size(52, 13);
            this.lblTenDonVi.TabIndex = 5;
            this.lblTenDonVi.Text = "Tên Đơn Vị";
            // 
            // lblKhu
            // 
            this.lblKhu.Location = new System.Drawing.Point(36, 72);
            this.lblKhu.Name = "lblKhu";
            this.lblKhu.Size = new System.Drawing.Size(18, 13);
            this.lblKhu.TabIndex = 3;
            this.lblKhu.Text = "Khu";
            // 
            // teKhu
            // 
            this.teKhu.Location = new System.Drawing.Point(97, 69);
            this.teKhu.Name = "teKhu";
            this.teKhu.Size = new System.Drawing.Size(120, 20);
            this.teKhu.TabIndex = 2;
            // 
            // dgvChucVu
            // 
            this.dgvChucVu.Cursor = System.Windows.Forms.Cursors.Default;
            this.dgvChucVu.DataSource = this.tblChucVuBindingSource;
            this.dgvChucVu.Location = new System.Drawing.Point(12, 144);
            this.dgvChucVu.MainView = this.gridView1;
            this.dgvChucVu.Name = "dgvChucVu";
            this.dgvChucVu.Size = new System.Drawing.Size(652, 317);
            this.dgvChucVu.TabIndex = 1;
            this.dgvChucVu.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // tblChucVuBindingSource
            // 
            this.tblChucVuBindingSource.DataMember = "tblChucVu";
            this.tblChucVuBindingSource.DataSource = this.quanLyKhachSanDataSet;
            // 
            // quanLyKhachSanDataSet
            // 
            this.quanLyKhachSanDataSet.DataSetName = "QuanLyKhachSanDataSet";
            this.quanLyKhachSanDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colMaCV,
            this.colKhu,
            this.colTenDonVi,
            this.colChucVu});
            this.gridView1.GridControl = this.dgvChucVu;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsView.ShowDetailButtons = false;
            // 
            // colMaCV
            // 
            this.colMaCV.Caption = "Mã Chức Vụ";
            this.colMaCV.FieldName = "MaCV";
            this.colMaCV.Name = "colMaCV";
            this.colMaCV.Visible = true;
            this.colMaCV.VisibleIndex = 0;
            // 
            // colKhu
            // 
            this.colKhu.Caption = "Khu";
            this.colKhu.FieldName = "Khu";
            this.colKhu.Name = "colKhu";
            this.colKhu.Visible = true;
            this.colKhu.VisibleIndex = 1;
            // 
            // colTenDonVi
            // 
            this.colTenDonVi.Caption = "Tên Đơn Vị";
            this.colTenDonVi.FieldName = "TenDonVi";
            this.colTenDonVi.Name = "colTenDonVi";
            this.colTenDonVi.Visible = true;
            this.colTenDonVi.VisibleIndex = 2;
            // 
            // colChucVu
            // 
            this.colChucVu.Caption = "Chức Vụ";
            this.colChucVu.FieldName = "ChucVu";
            this.colChucVu.Name = "colChucVu";
            this.colChucVu.Visible = true;
            this.colChucVu.VisibleIndex = 3;
            // 
            // tblChucVuTableAdapter
            // 
            this.tblChucVuTableAdapter.ClearBeforeFill = true;
            // 
            // layoutControl1
            // 
            this.layoutControl1.Controls.Add(this.gcChucVu);
            this.layoutControl1.Controls.Add(this.dgvChucVu);
            this.layoutControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.layoutControl1.Location = new System.Drawing.Point(0, 0);
            this.layoutControl1.Name = "layoutControl1";
            this.layoutControl1.Root = this.Root;
            this.layoutControl1.Size = new System.Drawing.Size(676, 473);
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
            this.Root.Size = new System.Drawing.Size(676, 473);
            this.Root.TextVisible = false;
            // 
            // layoutControlItem1
            // 
            this.layoutControlItem1.Control = this.dgvChucVu;
            this.layoutControlItem1.Location = new System.Drawing.Point(0, 132);
            this.layoutControlItem1.Name = "layoutControlItem1";
            this.layoutControlItem1.Size = new System.Drawing.Size(656, 321);
            this.layoutControlItem1.TextSize = new System.Drawing.Size(0, 0);
            this.layoutControlItem1.TextVisible = false;
            // 
            // layoutControlItem2
            // 
            this.layoutControlItem2.Control = this.gcChucVu;
            this.layoutControlItem2.Location = new System.Drawing.Point(0, 0);
            this.layoutControlItem2.MaxSize = new System.Drawing.Size(0, 132);
            this.layoutControlItem2.MinSize = new System.Drawing.Size(5, 132);
            this.layoutControlItem2.Name = "layoutControlItem2";
            this.layoutControlItem2.Size = new System.Drawing.Size(656, 132);
            this.layoutControlItem2.SizeConstraintsType = DevExpress.XtraLayout.SizeConstraintsType.Custom;
            this.layoutControlItem2.TextSize = new System.Drawing.Size(0, 0);
            this.layoutControlItem2.TextVisible = false;
            // 
            // teMaCV
            // 
            this.teMaCV.Enabled = false;
            this.teMaCV.Location = new System.Drawing.Point(98, 43);
            this.teMaCV.Name = "teMaCV";
            this.teMaCV.Size = new System.Drawing.Size(119, 20);
            this.teMaCV.TabIndex = 0;
            // 
            // lblMaCV
            // 
            this.lblMaCV.Location = new System.Drawing.Point(35, 46);
            this.lblMaCV.Name = "lblMaCV";
            this.lblMaCV.Size = new System.Drawing.Size(57, 13);
            this.lblMaCV.TabIndex = 1;
            this.lblMaCV.Text = "Mã Chức Vụ";
            // 
            // FrmQLChucVu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(676, 473);
            this.Controls.Add(this.layoutControl1);
            this.Name = "FrmQLChucVu";
            this.Text = "Quản Lý Chức Vụ";
            this.Load += new System.EventHandler(this.FrmQLChucVu_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gcChucVu)).EndInit();
            this.gcChucVu.ResumeLayout(false);
            this.gcChucVu.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.teTenDonVi.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teChucVu.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teKhu.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvChucVu)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblChucVuBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.quanLyKhachSanDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControl1)).EndInit();
            this.layoutControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.Root)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teMaCV.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.GroupControl gcChucVu;
        private DevExpress.XtraEditors.SimpleButton btnXoa;
        private DevExpress.XtraEditors.SimpleButton btnSua;
        private DevExpress.XtraEditors.SimpleButton btnThem;
        private DevExpress.XtraEditors.LabelControl lblChuVu;
        private DevExpress.XtraEditors.TextEdit teChucVu;
        private DevExpress.XtraEditors.LabelControl lblTenDonVi;
        private DevExpress.XtraEditors.LabelControl lblKhu;
        private DevExpress.XtraEditors.TextEdit teKhu;
        private DevExpress.XtraGrid.GridControl dgvChucVu;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private QuanLyKhachSanDataSet quanLyKhachSanDataSet;
        private System.Windows.Forms.BindingSource tblChucVuBindingSource;
        private QuanLyKhachSanDataSetTableAdapters.tblChucVuTableAdapter tblChucVuTableAdapter;
        private DevExpress.XtraGrid.Columns.GridColumn colMaCV;
        private DevExpress.XtraGrid.Columns.GridColumn colKhu;
        private DevExpress.XtraGrid.Columns.GridColumn colTenDonVi;
        private DevExpress.XtraGrid.Columns.GridColumn colChucVu;
        private DevExpress.XtraEditors.TextEdit teTenDonVi;
        private DevExpress.XtraLayout.LayoutControl layoutControl1;
        private DevExpress.XtraLayout.LayoutControlGroup Root;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem1;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem2;
        private DevExpress.XtraEditors.LabelControl lblMaCV;
        private DevExpress.XtraEditors.TextEdit teMaCV;
    }
}