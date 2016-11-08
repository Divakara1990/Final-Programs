//
//  main.m
//
//  FlipCoin
//
//  Created by Divakar Y N on 07/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        int numberOfTimes;
        int tails = 0;
        int heads = 0;
        //taking the input from user
        NSLog(@"Enter the Number of times you want to Flip the coin?");
        scanf("%i",&numberOfTimes);
        
        for (int i = 0; i < numberOfTimes; i++)
        {
            //finding the random number using arc4random_uniform() method
            float randomNumber = (float)arc4random_uniform(10)/10;
            if(randomNumber < 0.5)
            {
                tails++;
            }
            else
            {
                heads++;
            }
        }
        NSLog(@"Number of Tails = %f", (double)tails*100/numberOfTimes);
        NSLog(@"Number of Heads = %f", (double)heads*100/numberOfTimes);
    }
    return 0;
}
