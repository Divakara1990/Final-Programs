//
//  Gambler.m
//  Gambler
//
//  Created by Divakar Y N on 08/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "Gambler.h"

//implementing the Gambler class
@implementation Gambler

//generating the setters nd getters
@synthesize stakes,goals,trials;

//method to set the values which is taken from the user
-(void)setToS:(int)stk G:(int)gol T:(int)tri
{
    stakes = stk;
    goals = gol;
    trials = tri;
}

//performing the operation & displaying the result
-(void)display
{
    int wins = 0;
    int loss = 0;
    //to check for the number of trials
    for (int  i = 0; i<trials; i++)
    {
        //initializing the cash to the actual stake amount
        int cash = stakes;
        int bets = 0;
        //loop continue till he/she win or broke
        while (cash > 0 && cash < goals)
        {
            bets++;
            if((float)arc4random_uniform(10)/10<0.5)
            {
                cash++;
            }
            else
                cash--;
        }
        //if cash equals to goal then he/she wins
        if (cash == goals)
        {
            wins++;
        }
        else
        {
            loss++;
        }
    }
    
    NSLog(@"total number of wins: %i",wins);
    NSLog(@"total number of loss: %i",loss);
    
    NSLog(@"percentage of wins: %f", (double)wins*100 / trials);
    NSLog(@"percentage of loss: %f", (double)(trials-wins)*100 / trials);
}


@end
