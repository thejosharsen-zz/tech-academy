using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IncomeComparisonAssignment
{
    class Program
    {
        static void Main(string[] args)
        {
            // Introduction
            Console.WriteLine("Anonymous Income Comparison Program");
            Console.WriteLine("Press enter to continue...");
            Console.ReadLine();

            // Person 1 Details
            Console.WriteLine("Please enter details for Person 1:");
            Console.WriteLine("Hourly rate:");
            string x1 = Console.ReadLine();
            double person1HourlyRate = Convert.ToDouble(x1);
            Console.WriteLine("Hours worked per week:");
            string y1 = Console.ReadLine();
            double person1HoursWorked = Convert.ToDouble(y1);

            // Person 2 Details
            Console.WriteLine("Please enter details for Person 2:");
            Console.WriteLine("Hourly rate:");
            string x2 = Console.ReadLine();
            double person2HourlyRate = Convert.ToDouble(x2);
            Console.WriteLine("Hours worked per week:");
            string y2 = Console.ReadLine();
            double person2HoursWorked = Convert.ToDouble(y2);

            // Annual Salaries
            double person1AnnualSalary = person1HourlyRate * person1HoursWorked * 52;
            double person2AnnualSalary = person2HourlyRate * person2HoursWorked * 52;
            Console.WriteLine("Annual salary of Person 1: " + person1AnnualSalary);
            Console.WriteLine("Annual salary of Person 2: " + person2AnnualSalary);
            Console.WriteLine("Press enter to continue...");
            Console.ReadLine();

            // Comparing Annual Salaries
            Console.WriteLine("Person 1 makes more money than Person 2");
            Console.WriteLine(person1AnnualSalary > person2AnnualSalary);
            Console.ReadLine();
        }
    }
}
