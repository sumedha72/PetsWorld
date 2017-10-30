using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Security.Cryptography;
namespace Book_Store.App_Code
{
    public class PasswordClass
    {
        public static string Hashpassword(string password)
        {
            var sha1 = SHA1.Create();
            var hash = sha1.ComputeHash(System.Text.Encoding.ASCII.GetBytes(password));
            StringBuilder sb = new StringBuilder();
            for(int i=0;i<hash.Length;i++)
            {
                sb.Append(hash[i]);
            }
            return sb.ToString();
        }
    }
}