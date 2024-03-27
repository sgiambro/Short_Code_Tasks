using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

namespace Rextester
{
    public class Program
    {

        public static string generatePassword()
        {
            int paswordLength, lower, upper, number, symbol, r;
            string password = "";
            string[] symbols = {"!","@","#","$","%","^","&","*"};

            Random rnd = new Random();
            paswordLength = rnd.Next(8,21);

            // must have one of each
            paswordLength -= 4;

            //finds how much of remaiing lenght is dedicated to each char type
            r = rnd.Next(0, paswordLength);
            lower = 1 + r;
            paswordLength -= r;

            r = rnd.Next(0, paswordLength);
            upper = 1 + r;
            paswordLength -= r;

            r = rnd.Next(0, paswordLength);
            number = 1 + r;
            paswordLength -= r;

            symbol = 1 + paswordLength;

            //creates the password by randomly picking between the four types and using them all up until none are left then returns the generated password
            while (true)
            {
                r = rnd.Next(1, 5);

                if (lower == 0 && upper == 0 && number == 0 && symbol == 0)
                {
                    return password;
                }
                else if (r == 1 && lower > 0)
                {
                    password += char.ConvertFromUtf32(rnd.Next(97, 123));

                    lower--;
                }
                else if (r == 2 && upper > 0)
                {
                    password += char.ConvertFromUtf32(rnd.Next(65, 91));

                    upper--;
                }
                else if (r == 3 && number > 0)
                {
                    password += rnd.Next(0, 10);

                    number--;
                }
                else if (r == 4 && symbol > 0 )
                {
                    r = rnd.Next(symbols.Count());
                    password += symbols[r];

                    symbol--;
                }
            }
        }

        public static void Main()
        {

            Console.WriteLine(generatePassword());

            Console.ReadKey();


            
			
                
        }
    }
}




//Instructions
// Output to the console a random password, using only the below listed acceptable characters.
// Must be between 8-20 characters in length.
// Must contain at least one character of each type.  ie.  Lowercase.  Uppercase.  Number.  Symbol. 
// Valid characters are: 1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!@#$%^&*


//Notes:
    //lower: 97 - 122
    //upper: 65 - 90