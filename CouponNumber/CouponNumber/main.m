//
//  main.m
//  CouponNumber
//
//  Created by Divakar Y N on 10/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        int num,temp;
        //taking input from user
        NSLog(@"Enter the user input number");
        scanf("%i",&num);
        
        //Creating the object of mutable array to store the distinct Numbers
        NSMutableArray *array = [[NSMutableArray alloc] init];
        
        temp = num * 10;
        //temp = num; for coupon numbers 0 to n
        
        int i=1;
        while (i<= num)
        {
            i++;
            int flag = 0;
            
            //generating random numbers
            int random = arc4random_uniform(temp);
            
            //random is a int value, but v need to store this num in NSMutableArray hence v need to convert it to the object type of NSNumber
            NSNumber *number = [NSNumber numberWithInt:random];
            
            for (int j= 0; j< [array count]; j++)
            {
                //checking object is already present or not
                if([array objectAtIndex:j] == number)
                {
                    flag++;
                }
            }
            if(flag == 0)
            {
                //adding distinct element object in list
                [array addObject:number];
            }
            else
            {
                i--;
            }
            
        }
        
        //displaying distinct coupon number
        NSLog(@"%@", array);
    }
    return 0;
}
