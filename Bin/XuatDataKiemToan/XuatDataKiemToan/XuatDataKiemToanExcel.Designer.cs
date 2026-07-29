
namespace XuatDataKiemToan
{
    partial class XuatDataKiemToan
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
            this.dtpF = new System.Windows.Forms.DateTimePicker();
            this.dtpT = new System.Windows.Forms.DateTimePicker();
            this.bQuery = new System.Windows.Forms.Button();
            this.bExcel = new System.Windows.Forms.Button();
            this.dgv = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dgv)).BeginInit();
            this.SuspendLayout();
            // 
            // dtpF
            // 
            this.dtpF.CustomFormat = "yyyy-MM";
            this.dtpF.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpF.Location = new System.Drawing.Point(7, 8);
            this.dtpF.Name = "dtpF";
            this.dtpF.Size = new System.Drawing.Size(200, 20);
            this.dtpF.TabIndex = 0;
            // 
            // dtpT
            // 
            this.dtpT.CustomFormat = "yyyy-MM";
            this.dtpT.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpT.Location = new System.Drawing.Point(213, 8);
            this.dtpT.Name = "dtpT";
            this.dtpT.Size = new System.Drawing.Size(200, 20);
            this.dtpT.TabIndex = 1;
            // 
            // bQuery
            // 
            this.bQuery.Location = new System.Drawing.Point(419, 5);
            this.bQuery.Name = "bQuery";
            this.bQuery.Size = new System.Drawing.Size(75, 23);
            this.bQuery.TabIndex = 2;
            this.bQuery.Text = "Query";
            this.bQuery.UseVisualStyleBackColor = true;
            this.bQuery.Click += new System.EventHandler(this.bQuery_Click);
            // 
            // bExcel
            // 
            this.bExcel.Location = new System.Drawing.Point(500, 5);
            this.bExcel.Name = "bExcel";
            this.bExcel.Size = new System.Drawing.Size(75, 23);
            this.bExcel.TabIndex = 2;
            this.bExcel.Text = "Excel";
            this.bExcel.UseVisualStyleBackColor = true;
            this.bExcel.Click += new System.EventHandler(this.bExcel_Click);
            // 
            // dgv
            // 
            this.dgv.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv.Location = new System.Drawing.Point(7, 34);
            this.dgv.Name = "dgv";
            this.dgv.Size = new System.Drawing.Size(568, 347);
            this.dgv.TabIndex = 3;
            // 
            // XuatDataKiemToan
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(582, 384);
            this.Controls.Add(this.dgv);
            this.Controls.Add(this.bExcel);
            this.Controls.Add(this.bQuery);
            this.Controls.Add(this.dtpT);
            this.Controls.Add(this.dtpF);
            this.Name = "XuatDataKiemToan";
            this.Text = "XuatDataKiemToan";
            ((System.ComponentModel.ISupportInitialize)(this.dgv)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DateTimePicker dtpF;
        private System.Windows.Forms.DateTimePicker dtpT;
        private System.Windows.Forms.Button bQuery;
        private System.Windows.Forms.Button bExcel;
        private System.Windows.Forms.DataGridView dgv;
    }
}

