using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using Excel = Microsoft.Office.Interop.Excel;
using System.Runtime.InteropServices;

namespace XuatDataKiemToan
{
    public partial class XuatDataKiemToan : Form
    {
        private string connectionString =
        @"Data Source=192.168.71.7;Initial Catalog=LYS_ERP;User ID=tyh;Password=tyh;TrustServerCertificate=True;";
        private DataTable dtDelete = new DataTable();
        public XuatDataKiemToan()
        {
            InitializeComponent();
        }

        private void bQuery_Click(object sender, EventArgs e)
        {
            string fromNo = dtpF.Value.ToString("yyyyMM") + "00001";
            string toNo = dtpT.Value.ToString("yyyyMM") + "99999";

            string sql = @"
            SELECT a.LLNO,
                    a.GSBH,
                    a.CKBH,
                    a.USERID,
                    a.USERDATE,
                    a.CFMID,
                    a.CFMDate,
                    c.ywpm,
                    d.ID,
                    d.DepName,
                    a.flowflag,
                    b.*
            FROM kcll a
            LEFT JOIN kclls b ON a.LLNO = b.LLNO
            LEFT JOIN clzl c ON c.cldh = b.CLBH
            LEFT JOIN BDepartment d ON d.ID = a.DepID
            WHERE a.LLNO BETWEEN @FromNo AND @ToNo
                AND CAST(RIGHT(a.LLNO, 5) AS INT) <= 50000
            ORDER BY a.LLNO";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                // Query chính
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@FromNo", fromNo);
                    cmd.Parameters.AddWithValue("@ToNo", toNo);

                    DataTable dt = new DataTable();

                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(dt);
                    }

                    dgv.DataSource = dt;
                }

                // Query dữ liệu đã xóa
                dtDelete.Clear();

                string sqlDelete = @"
                SELECT *
                FROM BDelRec
                WHERE TableName='KCLL'
                    AND TNO BETWEEN @FromNo AND @ToNo
                    AND CAST(RIGHT(TNO,5) AS INT) <= 50000
                ORDER BY TNO";

                using (SqlCommand cmd = new SqlCommand(sqlDelete, conn))
                {
                    cmd.Parameters.AddWithValue("@FromNo", fromNo);
                    cmd.Parameters.AddWithValue("@ToNo", toNo);

                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(dtDelete);
                    }
                }
            }
        }

        private void bExcel_Click(object sender, EventArgs e)
        {
            if (dgv.DataSource == null)
            {
                MessageBox.Show("Không có dữ liệu!");
                return;
            }

            DataTable dt = (DataTable)dgv.DataSource;

            if (dt.Rows.Count == 0)
            {
                MessageBox.Show("Không có dữ liệu!");
                return;
            }

            const int BLOCK_SIZE = 20000;

            Excel.Application xlApp = new Excel.Application();
            Excel.Workbook wb = xlApp.Workbooks.Add();
            Excel.Worksheet ws = null;

            try
            {
                xlApp.ScreenUpdating = false;
                xlApp.DisplayAlerts = false;
                xlApp.EnableEvents = false;
                xlApp.Visible = false;
                xlApp.Calculation = Excel.XlCalculation.xlCalculationManual;

                // Chỉ giữ lại 1 sheet
                while (wb.Worksheets.Count > 1)
                    ((Excel.Worksheet)wb.Worksheets[1]).Delete();

                int colCount = dt.Columns.Count;
                string currentMonth = "";
                int excelRow = 2;

                object[,] buffer = new object[BLOCK_SIZE, colCount];
                int bufferRow = 0;

                Action FlushBuffer = () =>
                {
                    if (bufferRow == 0)
                        return;

                    object[,] outData = new object[bufferRow, colCount];

                    for (int i = 0; i < bufferRow; i++)
                    {
                        for (int j = 0; j < colCount; j++)
                        {
                            outData[i, j] = buffer[i, j];
                        }
                    }

                    Excel.Range rng = ws.Range[
                        ws.Cells[excelRow, 1],
                        ws.Cells[excelRow + bufferRow - 1, colCount]
                    ];

                    rng.Value2 = outData;

                    excelRow += bufferRow;
                    bufferRow = 0;
                };

                foreach (DataRow dr in dt.Rows)
                {
                    string llno = dr["LLNO"].ToString();

                    if (llno.Length < 6)
                        continue;

                    string month = llno.Substring(0, 6);

                    if (month != currentMonth)
                    {
                        if (ws != null)
                        {
                            FlushBuffer();
                            ws.Columns.AutoFit();
                        }

                        if (currentMonth == "")
                        {
                            ws = (Excel.Worksheet)wb.Worksheets[1];
                        }
                        else
                        {
                            ws = (Excel.Worksheet)wb.Worksheets.Add(
                                After: wb.Worksheets[wb.Worksheets.Count]);
                        }

                        ws.Name = month.Substring(0, 4) + "-" + month.Substring(4, 2);

                        Excel.Range allColumns = ws.Columns;
                        allColumns.NumberFormat = "@";

                        object[,] header = new object[1, colCount];

                        for (int c = 0; c < colCount; c++)
                        {
                            header[0, c] = dt.Columns[c].ColumnName;
                        }

                        Excel.Range headerRange = ws.Range[
                            ws.Cells[1, 1],
                            ws.Cells[1, colCount]
                        ];

                        headerRange.Value2 = header;
                        headerRange.Font.Bold = true;

                        currentMonth = month;
                        excelRow = 2;
                    }

                    for (int c = 0; c < colCount; c++)
                    {
                        buffer[bufferRow, c] = dr[c]?.ToString();
                    }

                    bufferRow++;

                    if (bufferRow >= BLOCK_SIZE)
                    {
                        FlushBuffer();
                    }
                }

                FlushBuffer();

                if (ws != null)
                    ws.Columns.AutoFit();

                if (dtDelete != null && dtDelete.Rows.Count > 0)
                {
                    ws = (Excel.Worksheet)wb.Worksheets.Add(
                        After: wb.Worksheets[wb.Worksheets.Count]);

                    ws.Name = "Da xoa";

                    Excel.Range allColumns = ws.Columns;
                    allColumns.NumberFormat = "@";

                    int delColCount = dtDelete.Columns.Count;

                    // Header
                    object[,] header = new object[1, delColCount];

                    for (int c = 0; c < delColCount; c++)
                        header[0, c] = dtDelete.Columns[c].ColumnName;

                    Excel.Range headerRange = ws.Range[
                        ws.Cells[1, 1],
                        ws.Cells[1, delColCount]];

                    headerRange.Value2 = header;
                    headerRange.Font.Bold = true;

                    // Data
                    buffer = new object[BLOCK_SIZE, delColCount];
                    bufferRow = 0;
                    excelRow = 2;

                    foreach (DataRow dr in dtDelete.Rows)
                    {
                        for (int c = 0; c < delColCount; c++)
                            buffer[bufferRow, c] = dr[c]?.ToString();

                        bufferRow++;

                        if (bufferRow == BLOCK_SIZE)
                        {
                            object[,] outData = new object[bufferRow, delColCount];

                            for (int i = 0; i < bufferRow; i++)
                                for (int j = 0; j < delColCount; j++)
                                    outData[i, j] = buffer[i, j];

                            ws.Range[
                                ws.Cells[excelRow, 1],
                                ws.Cells[excelRow + bufferRow - 1, delColCount]
                            ].Value2 = outData;

                            excelRow += bufferRow;
                            bufferRow = 0;
                        }
                    }

                    if (bufferRow > 0)
                    {
                        object[,] outData = new object[bufferRow, delColCount];

                        for (int i = 0; i < bufferRow; i++)
                            for (int j = 0; j < delColCount; j++)
                                outData[i, j] = buffer[i, j];

                        ws.Range[
                            ws.Cells[excelRow, 1],
                            ws.Cells[excelRow + bufferRow - 1, delColCount]
                        ].Value2 = outData;
                    }

                    ws.Columns.AutoFit();
                }

                xlApp.Calculation = Excel.XlCalculation.xlCalculationAutomatic;
                xlApp.ScreenUpdating = true;
                xlApp.DisplayAlerts = true;
                xlApp.EnableEvents = true;

                xlApp.Visible = true;
                MessageBox.Show("Xuất thành công!!!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }

            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);

                xlApp.Quit();
            }
        }
    }
}
