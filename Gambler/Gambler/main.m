//
//  main.m
//
//  Gambler
//
//  Created by Divakar Y N on 08/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gambler.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        //declaring the variables
        int stake;
        int goal;
        int trial;
        
        //taking the inputs from the user
        NSLog(@"Enter the Number of Stakes?");
        scanf("%i",&stake);
        
        NSLog(@"Enter the Number of Goals?");
        scanf("%i",&goal);
        
        NSLog(@"Enter the Number of Trials?");
        scanf("%i",&trial);
        
        //creating the object of gambler class(instantiation)
        Gambler *gamblerObj = [[Gambler alloc] init];
        
        //setting the values using Setters & getters
        [gamblerObj setToS:stake G:goal T:trial];
//        [gamblerObj setStakes:stake];
//        [gamblerObj setGoals:goal];
//        [gamblerObj setTrials:trial];
        
       

        //performing the operation & displaying the values
        [gamblerObj display];
    }
    return 0;
}
