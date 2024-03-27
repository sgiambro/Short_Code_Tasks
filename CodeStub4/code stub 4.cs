

using System;
using System.Data;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

namespace Rextester
{
    public class Program
    {

        // prints to the console only one of every number
        public static void printDistinctArray(int[] arr)
        {
            int[] unique = arr.Distinct().ToArray();

            Console.Write($"{string.Join(",", unique)}");
        }

        public static void Main()
        {
            int[] input = { 1, 32, 1, 19, 17, 32, 32, 41, 99, 1, 23, 4};

            printDistinctArray(input);

            Console.ReadKey();
		 
        }
        
    }
    
    
    
    
}




//Instructions
// Given an array of intergers, remove any duplicates.  The output should not change the order of the appearence of the intergers, only remove the duplicates.
// Output to the console the results, comma deliniated.
// For the provided int[], expected output would be "1,32,19,17,41,99,23,4".

/*Notes:
https://code-maze.com/csharp-print-elements-of-an-array/
| Method         |  Mean 
| -------------- | -------
| StringJoin     | 1.106 s
| AsSpan         | 1.430 s 
| ToListForeach  | 1.467 s 
| ForLoop        | 1.488 s 
| ForeachLoop    | 1.630 s 
| ArrayForEach   | 1.790 s 

*/
