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
    public partial class ListTel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // SqlCommand nesnesi oluşturuluyor ve sorgu metni parametre olarak veriliyor
            SqlCommand commandList = new SqlCommand("Select TelefonID, TelModel, TelMarkaID, TelHafiza, TelAciklama, Teliletisim, TelSatici, TelFoto, TelFiyat, TelOnay, MarkaID, Markaisim from TableTelefon inner join TableMarka on TableTelefon.TelMarkaID = TableMarka.MarkaID where TelOnay = @pcon", SqlConnectionClass.connection);

            // Bağlantının durumunu kontrol etmek için SqlConnectionClass sınıfındaki CheckConnection metodu çağrılıyor
            SqlConnectionClass.CheckConnection();

            // @pcon parametresi ile TelOnay alanına 'true' değeri atanıyor
            commandList.Parameters.AddWithValue("@pcon", true);

            // Veritabanından verileri okumak için SqlDataReader nesnesi oluşturuluyor
            SqlDataReader dr = commandList.ExecuteReader();

            // DataList1 nesnesine SqlDataReader nesnesi atanıyor
            DataList1.DataSource = dr;

            // Veriler DataList1 kontrolünde görüntüleniyor
            DataList1.DataBind();

            // SqlDataReader nesnesi kapatılıyor
            dr.Close();
        }
    }
}