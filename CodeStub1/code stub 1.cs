using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Net.Mail;

namespace Rextester
{
    public class Program
    {
        // Uses try/catch on email object
        public static void emailFormatCheck1(string email)
        {
            bool validEmail = true;

            try
            {
                var check = new MailAddress(email);
            }
            catch
            {
                validEmail = false;
            }

            Console.WriteLine(validEmail);
        }

        // Uses regex to validate email
        public static void emailFormatCheck2(string email)
        {
            //Microsoft email regex
            Regex regex = new Regex(@"^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$");

            Match match = regex.Match(email);
            if (match.Success)
            {
                Console.WriteLine("True");
            }
            else
                Console.WriteLine("False");
        }

        public static void Main()
        {
            string sampleInput = "bill@microsoft.com";

            emailFormatCheck1(sampleInput);

            emailFormatCheck2(sampleInput);

            //Makes the terminal stay open
            Console.ReadKey();

        }
    }
}




//Instructions
// Evaluate the sampleInput variable to determine if it is formated as a valid email address.
// Output to the console TRUE or FALSE result.


//Notes:
//  prefix:
//          cant start or end with period
//          no double period
//          1 to 64 chars - (a-z), (0-9), _, ., -
//  Symbol:
//          has to be @
//  Domain:
//          two or more parts seperated by period
//          1 to 63 chars first part - (a-z), (0-9), -
//          2 to 63 chars second+ part - (a-z)
//          no all num
//          cant begin or end hyphens