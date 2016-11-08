//
//  BubbleSort.m
//  BubbleSort
//
//  Created by Divakar Y N on 12/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "BubbleSort.h"

@implementation BubbleSort

-(void) sortingNumber:(int [])arr :(int)n
{
    int temp;
    for (int i=0; i<n; i++)
    {
        for (int j=0; j<n-i-1; j++)
        {
            //checking the condition to swap the elements
            if (arr[j]>arr[j+1])
            {
                temp=arr[j];
                arr[j]=arr[j+1];
                arr[j+1]=temp;
            }
        }
    }
}


@end
