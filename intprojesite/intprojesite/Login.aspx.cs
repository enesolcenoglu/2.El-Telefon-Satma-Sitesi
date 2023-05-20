using System;
using System.Collections.Generic;
using System.Data;
using intprojesite.Classes;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace intprojesite
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



        }
        protected void Btn_Login_Click(object sender, EventArgs e)
        {
            // SqlCommand nesnesi oluşturuluyor ve sorgu metni parametre olarak veriliyor
            SqlCommand Kullanici_Login = new SqlCommand("Select * from TableKullanici where KullaniciMail=@pMail and KullaniciSifre=@pSifre", SqlConnectionClass.connection);

            // Bağlantının durumunu kontrol etmek için SqlConnectionClass sınıfındaki CheckConnection metodu çağrılıyor
            SqlConnectionClass.CheckConnection();

            // Kullanıcının girdiği şifre, SHA-256 algoritması kullanılarak şifreleniyor ve shaSifre değişkenine atanıyor
            string shaSifre = Sha256Converter.ComputeSha256Hash(Tb_parola.Text);

            // @pMail parametresi ile Tb_kullanici.Text değeri atanıyor
            Kullanici_Login.Parameters.AddWithValue("@pMail", Tb_kullanici.Text);

            // @pSifre parametresi ile shaSifre değeri atanıyor
            Kullanici_Login.Parameters.AddWithValue("@pSifre", shaSifre);

            // DataTable nesnesi oluşturuluyor
            DataTable dt = new DataTable();

            // SqlDataAdapter nesnesi oluşturuluyor ve Kullanici_Login sorgusu ile ilişkilendiriliyor
            SqlDataAdapter da = new SqlDataAdapter(Kullanici_Login);

            // Verileri SqlDataAdapter aracılığıyla dt (DataTable) nesnesine dolduruluyor
            da.Fill(dt);

            // Eğer dt (DataTable) nesnesinin içinde kayıt varsa giriş işlemi başarılı kabul edilir
            if (dt.Rows.Count > 0)
            {
                // Eğer kullanıcı "admin@admin" ise, yönetici olarak kabul edilir ve gerekli işlemler yapılır
                if (Tb_kullanici.Text == "admin@admin")
                {
                    // Session değişkeni "IsUserAdmin" true olarak ayarlanır
                    Session["IsUserAdmin"] = true;

                    // "WebForm1Deneme.aspx" sayfasına yönlendirilir
                    Response.Redirect("WebForm1Deneme.aspx");
                }
                else
                {
                    // Kullanıcı adı "username" Session değişkenine atanır
                    Session["username"] = Tb_kullanici.Text;

                    // Session değişkeni "IsUserOnline" true olarak ayarlanır
                    Session["IsUserOnline"] = true;

                    // "ListTel.aspx" sayfasına yönlendirilir
                    Response.Redirect("ListTel.aspx");

                    // "Başarıyla Giriş Yapıldı" mesajı görüntülenir
                    Response.Write("Başarıyla Giriş Yapıldı");
                }
            }
            else
            {
                // Eğer dt (DataTable) nesnesi boş ise, geçersiz e-posta veya şifre olduğu kabul edilir ve hata mesajı görüntülenir
                Response.Write("Mail adresi veya şifre hatalı");
            }
        }
    }
}