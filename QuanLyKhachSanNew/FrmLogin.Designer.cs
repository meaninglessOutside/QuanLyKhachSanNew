namespace QuanLyKhachSanNew
{
    partial class FrmLogin
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmLogin));
            this.gcLogin = new DevExpress.XtraEditors.GroupControl();
            this.btnExit = new DevExpress.XtraEditors.SimpleButton();
            this.btnLogin = new DevExpress.XtraEditors.SimpleButton();
            this.teMatKhau = new DevExpress.XtraEditors.TextEdit();
            this.lblMatKhau = new DevExpress.XtraEditors.LabelControl();
            this.teMaNV = new DevExpress.XtraEditors.TextEdit();
            this.lblTenNV = new DevExpress.XtraEditors.LabelControl();
            this.lblCaption = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.gcLogin)).BeginInit();
            this.gcLogin.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.teMatKhau.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.teMaNV.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // gcLogin
            // 
            this.gcLogin.Controls.Add(this.btnExit);
            this.gcLogin.Controls.Add(this.btnLogin);
            this.gcLogin.Controls.Add(this.teMatKhau);
            this.gcLogin.Controls.Add(this.lblMatKhau);
            this.gcLogin.Controls.Add(this.teMaNV);
            this.gcLogin.Controls.Add(this.lblTenNV);
            this.gcLogin.Controls.Add(this.lblCaption);
            this.gcLogin.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gcLogin.Location = new System.Drawing.Point(0, 0);
            this.gcLogin.Name = "gcLogin";
            this.gcLogin.Size = new System.Drawing.Size(289, 163);
            this.gcLogin.TabIndex = 0;
            // 
            // btnExit
            // 
            this.btnExit.Location = new System.Drawing.Point(178, 94);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(75, 23);
            this.btnExit.TabIndex = 5;
            this.btnExit.Text = "Thoát";
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // btnLogin
            // 
            this.btnLogin.Location = new System.Drawing.Point(91, 94);
            this.btnLogin.Name = "btnLogin";
            this.btnLogin.Size = new System.Drawing.Size(75, 23);
            this.btnLogin.TabIndex = 4;
            this.btnLogin.Text = "Đăng Nhập";
            this.btnLogin.Click += new System.EventHandler(this.btnLogin_Click);
            this.btnLogin.KeyDown += new System.Windows.Forms.KeyEventHandler(this.btnLogin_KeyDown);
            // 
            // teMatKhau
            // 
            this.teMatKhau.Location = new System.Drawing.Point(91, 68);
            this.teMatKhau.Name = "teMatKhau";
            this.teMatKhau.Properties.PasswordChar = '*';
            this.teMatKhau.Properties.UseSystemPasswordChar = true;
            this.teMatKhau.Size = new System.Drawing.Size(162, 20);
            this.teMatKhau.TabIndex = 3;
            // 
            // lblMatKhau
            // 
            this.lblMatKhau.Location = new System.Drawing.Point(18, 70);
            this.lblMatKhau.Name = "lblMatKhau";
            this.lblMatKhau.Size = new System.Drawing.Size(44, 13);
            this.lblMatKhau.TabIndex = 2;
            this.lblMatKhau.Text = "Mật khẩu";
            // 
            // teMaNV
            // 
            this.teMaNV.Location = new System.Drawing.Point(91, 42);
            this.teMaNV.Name = "teMaNV";
            this.teMaNV.Size = new System.Drawing.Size(162, 20);
            this.teMaNV.TabIndex = 1;
            // 
            // lblTenNV
            // 
            this.lblTenNV.Location = new System.Drawing.Point(18, 44);
            this.lblTenNV.Name = "lblTenNV";
            this.lblTenNV.Size = new System.Drawing.Size(64, 13);
            this.lblTenNV.TabIndex = 0;
            this.lblTenNV.Text = "Mã nhân viên";
            // 
            // lblCaption
            // 
            this.lblCaption.Appearance.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCaption.Appearance.Options.UseFont = true;
            this.lblCaption.Location = new System.Drawing.Point(102, 128);
            this.lblCaption.Name = "lblCaption";
            this.lblCaption.Size = new System.Drawing.Size(151, 16);
            this.lblCaption.TabIndex = 6;
            this.lblCaption.Text = "Đăng Nhập Thành Công";
            // 
            // FrmLogin
            // 
            this.AcceptButton = this.btnLogin;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(289, 163);
            this.Controls.Add(this.gcLogin);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.IconOptions.Icon = ((System.Drawing.Icon)(resources.GetObject("FrmLogin.IconOptions.Icon")));
            this.Name = "FrmLogin";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Đăng Nhập";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.FrmLogin_FormClosed);
            this.Load += new System.EventHandler(this.FrmLogin_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gcLogin)).EndInit();
            this.gcLogin.ResumeLayout(false);
            this.gcLogin.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.teMatKhau.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.teMaNV.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.GroupControl gcLogin;
        private DevExpress.XtraEditors.TextEdit teMatKhau;
        private DevExpress.XtraEditors.LabelControl lblMatKhau;
        private DevExpress.XtraEditors.TextEdit teMaNV;
        private DevExpress.XtraEditors.LabelControl lblTenNV;
        private DevExpress.XtraEditors.SimpleButton btnExit;
        private DevExpress.XtraEditors.SimpleButton btnLogin;
        private DevExpress.XtraEditors.LabelControl lblCaption;
    }
}