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
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // SqlCommand nesnesi oluşturuluyor ve sorgu metni parametre olarak veriliyor
            SqlCommand commandAdd = new SqlCommand("Insert into Tableiletisim(iletisimMesaj, iletisimMail, iletisimAd) values (@pMesaj, @pMail, @pAd)", SqlConnectionClass.connection);

            // Bağlantının durumunu kontrol etmek için SqlConnectionClass sınıfındaki CheckConnection metodu çağrılıyor
            SqlConnectionClass.CheckConnection();

            // @pMesaj parametresi ile TB_Mesaj.Text değeri atanıyor
            commandAdd.Parameters.AddWithValue("@pMesaj", TB_Mesaj.Text);

            // @pMail parametresi ile TB_Mail.Text değeri atanıyor
            commandAdd.Parameters.AddWithValue("@pMail", TB_Mail.Text);

            // @pAd parametresi ile TB_Ad.Text değeri atanıyor
            commandAdd.Parameters.AddWithValue("@pAd", TB_Ad.Text);

            // SQL sorgusunu veritabanında çalıştırmak için ExecuteNonQuery metodu çağrılıyor
            commandAdd.ExecuteNonQuery();

            // Sayfa üzerinde JavaScript kodu çalıştırmak için Page.ClientScript.RegisterClientScriptBlock metodu kullanılıyor
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Başlık", "");

            Response.Write(" Mesajınız İletilmiştir");
        }
    }
}