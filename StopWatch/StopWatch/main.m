//
//  main.m
//  StopWatch
//
//  Created by Divakar Y N on 12/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        int num;
        NSLog(@"Press 1 to start");
        scanf("%d",&num);
        
        NSDate *date;
        if (num == 1)
        {
            date = [NSDate date];
            NSLog(@"Timer started");
            //NSLog(@"%@",date);
        }
        
        int num1;
        NSLog(@"Press 2 to stop");
        scanf("%d",&num1);
        if (num1 == 2)
        {
            NSTimeInterval endTime = [date timeIntervalSinceNow];
            NSLog(@"Total Time Elapsed : %f seconds",(endTime*-1)/60);
        }
    }
    return 0;
}
