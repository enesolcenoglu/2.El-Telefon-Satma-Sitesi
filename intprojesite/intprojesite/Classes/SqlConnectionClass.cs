using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


namespace intprojesite.Classes
{
    public class SqlConnectionClass
    {
        // SqlConnection nesnesi oluşturuluyor ve bağlantı dizesi parametre olarak veriliyor
        public static SqlConnection connection = new SqlConnection("Data Source=DESKTOP-L47HVCD\\SQLEXPRESS;Initial Catalog=TelefonSatis;Integrated Security=True");

        // ConnectionString özelliği tanımlanıyor
        public static string ConnectionString { get; internal set; }

        // Bağlantının durumunu kontrol eden CheckConnection metodu tanımlanıyor
        public static void CheckConnection()
        {
            // Bağlantı kapalıysa, bağlantıyı açar
            if (connection.State == System.Data.ConnectionState.Closed)
            {
                connection.Open();
            }
            else
            {
                // Bağlantı zaten açıksa, herhangi bir işlem yapmaz
            }
        }
    }
}