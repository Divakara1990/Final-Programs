//
//  main.m
//  BubbleSort
//
//  Created by Divakar Y N on 12/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BubbleSort.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        //creating the object of BubbleSort class
        BubbleSort *bubblesortObj =[[BubbleSort alloc] init];
        
        //taking the input from user
        NSLog(@"how much elements you want to entered:");
        int arr[10],num;
        scanf("%i", &num);
        
        //taking input elements
        NSLog(@"enter elements");
        for (int i=0; i< num; i++)
        {
            scanf("%i",&arr[i]);
        }
        
        //bubble sorting in ascending order by invoking the method
        [bubblesortObj sortingNumber:arr :num];
        
        //printing result array
        NSLog(@"Printing sorted array");
        for (int i=0; i< num; i++)
        {
            NSLog(@"%i",arr[i]);
        }
    }
    return 0;
}
