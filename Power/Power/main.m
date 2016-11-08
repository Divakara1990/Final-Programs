//
//  main.m
//  Power
//
//  Created by Divakar Y N on 03/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Power.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        
        NSLog(@"enter the number:");
        int n;
        scanf("%i",&n);
        int x = n;
        //creating the object of the power class
        Power *apower = [[Power alloc] init];
        //checking that number entered is btwn 0 ---> 30
        if (n>=0 && n<31)
        {
            for (int i = 0; i<=x; i=i+1)
            {
                int res = [apower pow:2 :n];
                NSLog(@"2^ %i is : %i",n,res);
                n--;
            }
        }
        else
        {
            NSLog(@"Please enter the number between 0---->30");
        }
    }
    return 0;
}
