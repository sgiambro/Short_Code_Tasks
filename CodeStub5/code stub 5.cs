using System;
using System.Data;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Runtime.InteropServices;

namespace Rextester
{
    public class Program
    {

        //test for prime by sorting the array first
        public static void findPrime1(int[] array)
        {
            int[] nums = array.ToArray();
            int divisibleCount;
            bool prime = false;

            Array.Sort(nums);

            //Test first element in array
            divisibleCount = 0;
            for (int i = 1; i <= nums[0]; i++)
            {
                if (divisibleCount > 2)
                {
                    break;
                }
                else if (nums[0] % i == 0)
                {
                    divisibleCount++;
                }
            }

            if (divisibleCount == 2)
            {
                prime = true;
                Console.Write(nums[0] + ", ");
            }

            //test the rest of the array
            for (int i = 1; i<nums.Length; i++)
            {
                divisibleCount = 0;

                // if number is the same as the last element use its result
                if (nums[i] == nums[i - 1])
                {
                    if (prime)
                    {
                        Console.Write(nums[i]);
                    }
                }
                // if the element is a different number then test for prime
                else
                {
                    for (int j = 1; j <= nums[i]; j++)
                    {
                        if (divisibleCount > 2)
                        {
                            prime = false;
                            break;
                        }
                        else if (nums[i] % j == 0)
                        {
                            divisibleCount++;
                        }
                    }

                    if (divisibleCount == 2)
                    {
                        prime = true;
                        Console.Write(nums[i] + ", ");
                    }

                }
            }
        }

        //test for prime without sorting the array
        public static void findPrime2(int[] nums)
        {
            int divisibleCount;
            bool prime = false;

            for (int i = 1; i < nums.Length; i++)
            {
                divisibleCount = 0;

                for (int j = 1; j <= nums[i]; j++)
                {
                    if (divisibleCount > 2)
                    {
                        prime = false;
                        break;
                    }
                    else if (nums[i] % j == 0)
                    {
                        divisibleCount++;
                    }
                }

                if (divisibleCount == 2)
                {
                    prime = true;
                    Console.Write(nums[i] + ", ");
                }

            }
        }

        public static void Main()
        {
            int[] input = { 1, 32, 1, 19, 17, 32, 32, 41, 99, 1, 23, 4};

            findPrime1(input);

            Console.WriteLine("\n");

            findPrime2(input);

            Console.ReadKey();

        }
        
    }
    
    
    
    
}




//Instructions
// Given an array of intergers, find each number that is a prime number.
// Output to the console the results, comma deliniated.
// For the provided int[], expected output would be "19,17,41,23".
//
