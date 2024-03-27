using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

namespace Rextester
{
    public class Program
    {
        //Keeps adding one to the date until the next timecard date is reached then prints its date
        public static void finalDay(DateTime date)
        {
            while (true)
            {
                if (date.DayOfWeek == DayOfWeek.Friday)
                {
                    Console.WriteLine(date);
                    break;
                }
                else
                {
                    date = date.AddDays(1);
                }
            }
        }

        public static void Main()
        {
            DateTime workDate = new DateTime(2021, 09, 18, 0, 0, 0);

            finalDay(workDate);

            Console.ReadKey();
            
        }
    }
}




//Instructions
// Example company closes out their pay week each Thursday, and a new timecard starts each Friday.
// Given a DateTime object that contains a date or datetime which the employee worked, output to the consolte
// the date that would be the final date of that pay week.  Example input is the 12th of Sept 2018, expected output would be:
// 14.09.2018 00:00:00