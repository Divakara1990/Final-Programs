//
//  main.m
//  LeapYear
//
//  Created by Divakar Y N on 03/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        //declaring the int variable
        int year;
        //taking the input from the user
        NSLog(@"Enter te year");
        scanf("%i",&year);
        //Checking the condition for Leap Year
        if(year>999 && year <=9999)
        {
            //checking the condition for the leap year
            if ((year % 4 == 0 && year % 100!=0)||(year%400 == 0))
                NSLog(@"Entered Year %i is a LEAP YEAR",year);
            else
                NSLog(@"%i is NOT a LEAP YEAR",year);
        }
        else
        {
            NSLog(@"Please Enter the Valid year, that is 4 Digit Number ");
        }
    }
    return 0;
}
