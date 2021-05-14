using System;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace SQlDtataBase
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            string connectionString = "Server=localhost; Database=master; Trusted_Connection=True";

            // Создание подключения
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();

            connection.Close();
            Console.Read();
        }
    }
}
