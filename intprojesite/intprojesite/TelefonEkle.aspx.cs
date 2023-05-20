using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using intprojesite.Classes;

namespace intprojesite
{
    public partial class TelefonEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false) //postbackin mantığı sayfamızı birden çokkez çalıştırmamızı sağlar
            {
                SqlCommand commandListMarka = new SqlCommand("Select * from TableMarka", SqlConnectionClass.connection);
                SqlConnectionClass.CheckConnection();
                SqlDataReader dr = commandListMarka.ExecuteReader();
                Cb_Marka.DataTextField = "Markaisim";
                Cb_Marka.DataValueField = "MarkaID";
                Cb_Marka.DataSource = dr;
                Cb_Marka.DataBind();
                dr.Close();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand commandEkle = new SqlCommand("Insert into TableTelefon (TelModel,TelMarkaID,TelHafiza,TelAciklama,Teliletisim,TelSatici,TelFoto,TelFiyat ) values (@pModel,@pMarka,@pHafiza,@pAciklama,@piletisim,@pSatici,@pFoto,@pFiyat)", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();
            commandEkle.Parameters.AddWithValue("@pModel", Tb_Model.Text);
            commandEkle.Parameters.AddWithValue("@pMarka", Convert.ToInt32(Cb_Marka.SelectedValue));
            commandEkle.Parameters.AddWithValue("@pHafiza", Tb_Hafiza.Text);
            commandEkle.Parameters.AddWithValue("@pAciklama", Tb_Aciklama.Text);
            commandEkle.Parameters.AddWithValue("@piletisim", Tb_iletisim.Text);
            commandEkle.Parameters.AddWithValue("@pSatici", Tb_Satici.Text);
            commandEkle.Parameters.AddWithValue("@pFoto", Tb_Link.Text);
            commandEkle.Parameters.AddWithValue("@pFiyat", Tb_Fiyat.Text);
            commandEkle.ExecuteNonQuery();

            Response.Write("Telefon Onaya Gönderildi");
        }


    }
}