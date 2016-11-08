//
//  main.m
//  Triplet
//
//  Created by Divakar Y N on 10/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TripletSum.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        TripletSum *triObj = [[TripletSum alloc] init];
        int a[20],n;
        
        //taking no. of elements u want in array
        NSLog(@"How much element u want:");
        scanf("%i",&n);
        
        //taking array elements
        NSLog(@"enter elements: ");
        for (int i=0; i<n; i++)
        {
            scanf("%i",&a[i]);
        }
        //finding sum of 3 elements is 0
        [triObj print:a:n];    }
    return 0;
}
