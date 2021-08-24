using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LoopAssignment
{
    class Program
    {
        static void Main(string[] args)
        {

            // Ask user for a number, declare correct number
            Console.WriteLine("Pick a number between 1 and 10");
            int userNumber = Convert.ToInt32(Console.ReadLine());
            bool correctNumber = userNumber == 5;

            // Exception for when users enter a number > 10
            while (userNumber > 10)
            {
                Console.WriteLine("Your number does not meet the guidelines. Goodbye!");
                Console.ReadLine();
                Environment.Exit(0);
            }

            // Otherwise... 
            do
            {
                switch (userNumber)
                {
                    case 1:
                        Console.WriteLine("That number is incorrect");
                        Console.WriteLine("Pick a number between 1 and 10");
                        userNumber = Convert.ToInt32(Console.ReadLine());
                        break;
                    case 2:
                        Console.WriteLine("That number is incorrect");
                        Console.WriteLine("Pick a number between 1 and 10");
                        userNumber = Convert.ToInt32(Console.ReadLine());
                        break;
                    case 3:
                        Console.WriteLine("That number is incorrect");
                        Console.WriteLine("Pick a number between 1 and 10");
                        userNumber = Convert.ToInt32(Console.ReadLine());
                        break;
                    case 4:
                        Console.WriteLine("That number is incorrect");
                        Console.WriteLine("Pick a number between 1 and 10");
                        userNumber = Convert.ToInt32(Console.ReadLine());
                        break;
                    case 5:
                        correctNumber = true;
                        Console.WriteLine("That number is CORRECT");
                        Console.ReadLine();
                        break;
                    case 6:
                        Console.WriteLine("That number is incorrect");
                        Console.WriteLine("Pick a number between 1 and 10");
                        userNumber = Convert.ToInt32(Console.ReadLine());
                        break;
                    case 7:
                        Console.WriteLine("That number is incorrect");
                        Console.WriteLine("Pick a number between 1 and 10");
                        userNumber = Convert.ToInt32(Console.ReadLine());
                        break;
                    case 8:
                        Console.WriteLine("That number is incorrect");
                        Console.WriteLine("Pick a number between 1 and 10");
                        userNumber = Convert.ToInt32(Console.ReadLine());
                        break;
                    case 9:
                        Console.WriteLine("That number is incorrect");
                        Console.WriteLine("Pick a number between 1 and 10");
                        userNumber = Convert.ToInt32(Console.ReadLine());
                        break;
                    case 10:
                        Console.WriteLine("That number is incorrect");
                        Console.WriteLine("Pick a number between 1 and 10");
                        userNumber = Convert.ToInt32(Console.ReadLine());
                        break;
                }
            }
            while (!correctNumber);
        }
    }
}
