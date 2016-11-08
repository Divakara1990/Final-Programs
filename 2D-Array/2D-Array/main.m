//
//  main.m
//  2D-Array
//
//  Created by BridgeLabz on 06/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Two_D_Array.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        int row;
        int col;
        //creating the object of array class
        Two_D_Array *arrayObj = [[Two_D_Array alloc] init];
        
        //taking nor of rows nd nor of columns from user
        NSLog(@"enter no. of rows:");
        scanf("%i",&row);
        NSLog(@"enter no. of columns:");
        scanf("%i",&col);
        
        //declaring 2D array
        int arr[row][col];
        
        //invoking methods
        [arrayObj setRow:row];
        [arrayObj setCol:col];
        [arrayObj input:arr];
        [arrayObj display:arr];
        
      
    }
    return 0;
}
