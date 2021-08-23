using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MathOperationAssignment
{
    class Program
    {
        static void Main(string[] args)
        {

            // Introduction
            Console.WriteLine("Math Operation Assignment Submission");
            Console.WriteLine("By Josh Cummings");
            Console.WriteLine("Press enter to continue...");
            Console.ReadLine();

            // Question 1
            Console.WriteLine("Your number multipied by 50:");
            string i1 = Console.ReadLine();
            int userInputQ1 = Convert.ToInt32(i1);
            Console.WriteLine(userInputQ1 + " multiplied by 50 equals " + (userInputQ1 * 50));
            Console.WriteLine("Press enter to continue...");
            Console.ReadLine();

            // Question 2
            Console.WriteLine("Your number plus 25:");
            string i2 = Console.ReadLine();
            int userInputQ2 = Convert.ToInt32(i2);
            Console.WriteLine(userInputQ2 + " plus 25 equals " + (userInputQ2 + 25));
            Console.WriteLine("Press enter to continue...");
            Console.ReadLine();

            // Question 3
            Console.WriteLine("Your number divided by 12.5:");
            string i3 = Console.ReadLine();
            double userInputQ3 = Convert.ToDouble(i3);
            Console.WriteLine(userInputQ3 + " divided by 12.5 equals " + (userInputQ3 / 12.5));
            Console.WriteLine("Press enter to continue...");
            Console.ReadLine();

            // Question 4
            Console.WriteLine("Enter a number to check if greater than 50");
            string i4 = Console.ReadLine();
            int userInputQ4 = Convert.ToInt32(i4);
            bool trueOrFalse = userInputQ4 > 50;
            Console.WriteLine(trueOrFalse);
            Console.WriteLine("Press enter to continue...");
            Console.ReadLine();

            // Question 5
            Console.WriteLine("Displays remainder after number is divided by 7");
            string i5 = Console.ReadLine();
            int userInputQ5 = Convert.ToInt32(i5);
            Console.WriteLine(userInputQ5 % 7);
            Console.WriteLine("Press enter to continue...");
            Console.ReadLine();

        }
    }
}
