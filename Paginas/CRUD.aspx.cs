using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba_SSASA.Paginas
{
    public partial class CRUD : System.Web.UI.Page
    {
        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);
        public static string sID="-1";
        public static string sOpc = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //obtener el id
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    sID = Request.QueryString["id"].ToString();
                    CargarDatos();
                    tbdate.TextMode = TextBoxMode.DateTime;
                }

                if (Request.QueryString["op"] != null)
                {
                    sOpc = Request.QueryString["op"].ToString();

                    switch (sOpc)
                    {
                        case "C":
                            this.lbltitulo.Text = "Ingresar nuevo usuario";
                            this.BtnCreate.Visible = true;
                            break;
                        case "R":
                            this.lbltitulo.Text = "Consulta de usuario";
                            break;
                        case "U":
                            this.lbltitulo.Text = "Modificar usuario";
                            this.BtnUpdate.Visible = true;
                            break;
                        case "D":
                            this.lbltitulo.Text = "Eliminar usuario";
                            this.BtnDelete.Visible = true;
                            break;
                    }
                }
            }
        }

        void CargarDatos()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("sp_read", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add("@Id", SqlDbType.Int).Value = sID;
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds);
            DataTable dt = ds.Tables[0];
            DataRow row = dt.Rows[0];
            tbnombre.Text = row[1].ToString();
            tbdpi.Text = row[2].ToString();
            listSexo.SelectedValue = row[3].ToString();
            tbemail.Text = row[4].ToString();
            DateTime d = (DateTime)row[5];
            tbdate.Text = d.ToString("dd/MM/yyyy");
            tbedad.Text = row[6].ToString();
            DateTime fecha = (DateTime)row[7];
            tbingreso.Text = fecha.ToString("dd/MM/yyyy");
            tbdireccion.Text = row[8].ToString();
            tbnit.Text = row[9].ToString();
            listDepartamento.SelectedValue = row[10].ToString();
            con.Close();

        }

        protected void BtnCreate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("sp_create", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = tbnombre.Text;
            cmd.Parameters.Add("@Dpi", SqlDbType.BigInt).Value = tbdpi.Text;
            cmd.Parameters.Add("@Sexo", SqlDbType.VarChar).Value = listSexo.SelectedValue;
            cmd.Parameters.Add("@Correo", SqlDbType.VarChar).Value = tbemail.Text;
            cmd.Parameters.Add("@Fecha", SqlDbType.Date).Value = tbdate.Text;
            cmd.Parameters.Add("@Edad", SqlDbType.Int).Value = tbedad.Text;
            cmd.Parameters.Add("@Fecha_Ingreso", SqlDbType.Date).Value = tbingreso.Text;
            cmd.Parameters.Add("@Direccion", SqlDbType.VarChar).Value = tbdireccion.Text;
            cmd.Parameters.Add("@Nit", SqlDbType.BigInt).Value = tbnit.Text;
            cmd.Parameters.Add("@Departamento", SqlDbType.VarChar).Value = listDepartamento.SelectedValue;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("index.aspx");
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("sp_update", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.Int).Value = sID;
            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = tbnombre.Text; 
            cmd.Parameters.Add("@Dpi", SqlDbType.BigInt).Value = tbdpi.Text;
            cmd.Parameters.Add("@Sexo", SqlDbType.VarChar).Value = listSexo.SelectedValue;
            cmd.Parameters.Add("@Correo", SqlDbType.VarChar).Value = tbemail.Text;
            cmd.Parameters.Add("@Fecha", SqlDbType.Date).Value = tbdate.Text;
            cmd.Parameters.Add("@Edad", SqlDbType.Int).Value = tbedad.Text;
            cmd.Parameters.Add("@Fecha_Ingreso", SqlDbType.Date).Value = tbingreso.Text;
            cmd.Parameters.Add("@Direccion", SqlDbType.VarChar).Value = tbdireccion.Text;
            cmd.Parameters.Add("@Nit", SqlDbType.BigInt).Value = tbnit.Text;
            cmd.Parameters.Add("@Departamento", SqlDbType.VarChar).Value = listDepartamento.SelectedValue;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("index.aspx");
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("sp_delete", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.Int).Value = sID;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("index.aspx");
        }

        protected void BtnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}