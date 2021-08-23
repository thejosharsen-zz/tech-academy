using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarInsuranceApproval
{
    class Program
    {
        static void Main(string[] args)
        {

            // Introduction
            Console.WriteLine("Thanks for choosing Academy Insurance");
            Console.WriteLine("Please complete the questionaire to see if you qualify");
            Console.WriteLine("Press enter to continue...");
            Console.ReadLine();

            // Question 1
            Console.WriteLine("What is your current age?");
            string x1 = Console.ReadLine();
            int userAge = Convert.ToInt32(x1);

            // Question 2
            Console.WriteLine("Have you ever had a DUI? (True or False)");
            string x2 = Console.ReadLine();
            bool hasHadDUI = Convert.ToBoolean(x2);

            // Question 3
            Console.WriteLine("How many speeding tickets do you have?");
            string x3 = Console.ReadLine();
            int speedingTickets = Convert.ToInt32(x3);

            // Approval Process
            bool isApproved = (userAge > 15 && !hasHadDUI && speedingTickets < 3);
            Console.WriteLine("Thanks for completing the questionaire. Based on your answers, your eligiability for our service is... " + isApproved);
            Console.WriteLine("Please call our support team to continue with your application. 123-456-7890");
            Console.ReadLine();
        }
    }
}
