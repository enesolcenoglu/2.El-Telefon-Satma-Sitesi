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
    public partial class KullaniciGiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Giris_Click(object sender, EventArgs e)
        {
            // SqlCommand nesnesi oluşturuluyor ve sorgu metni parametre olarak veriliyor
            SqlCommand Kullanicigrs = new SqlCommand("Insert into TableKullanici(KullaniciMail, KullaniciSifre) values (@pMail, @pSifre)", SqlConnectionClass.connection);

            // Bağlantının durumunu kontrol etmek için SqlConnectionClass sınıfındaki CheckConnection metodu çağrılıyor
            SqlConnectionClass.CheckConnection();

            // Tb_parola.Text değerini SHA-256 algoritmasını kullanarak şifreleyerek newPass değişkenine atanıyor
            string newPass = Sha256Converter.ComputeSha256Hash(Tb_parola.Text);

            // @pMail parametresi ile Tb_kullanici.Text değeri atanıyor
            Kullanicigrs.Parameters.AddWithValue("@pMail", Tb_kullanici.Text);

            // @pSifre parametresi ile newPass değeri atanıyor
            Kullanicigrs.Parameters.AddWithValue("@pSifre", newPass);

            // SQL sorgusunu veritabanında çalıştırmak için ExecuteNonQuery metodu çağrılıyor
            Kullanicigrs.ExecuteNonQuery();

            // "Başarıyla Kayıt Olundu !" mesajı kullanıcıya gösteriliyor
            Response.Write("Başarıyla Kayıt Olundu !");
        }
    }
}