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
    public partial class MesajSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // URL'den "x" parametresini alarak selectedID değişkenine dönüştürür
            int selectedID = Convert.ToInt32(Request.QueryString["x"]);

            // SqlCommand nesnesi oluşturuluyor ve sorgu metni parametre olarak veriliyor
            SqlCommand sil = new SqlCommand("Delete from Tableiletisim where iletisimID=@pid", SqlConnectionClass.connection);

            // Bağlantının durumunu kontrol etmek için SqlConnectionClass sınıfındaki CheckConnection metodu çağrılıyor
            SqlConnectionClass.CheckConnection();

            // @pid parametresi ile selectedID değeri atanıyor
            sil.Parameters.AddWithValue("@pid", selectedID);

            // SQL sorgusunu veritabanında çalıştırmak için ExecuteNonQuery metodu çağrılıyor
            sil.ExecuteNonQuery();

            // "Mesajlar.aspx" sayfasına yönlendirme yapılıyor
            Response.Redirect("Mesajlar.aspx");
        }
    }
}