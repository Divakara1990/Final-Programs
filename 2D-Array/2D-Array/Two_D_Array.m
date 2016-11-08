//
//  2D-Array.m
//  2D-Array
//
//  Created by Divakar Y N on 10/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "Two_D_Array.h"

@implementation Two_D_Array

//set a row
-(void) setRow:(int)row
{
    r=row;
}

//set a column
-(void) setCol:(int)col
{
    c=col;
}

//method to take input from user
-(void) input:(int [5][5]) arr
{
    NSLog(@"Enter the Elements of matrix");
    for (int i = 0; i<r; i++)
    {
        for (int j = 0; j<c; j++)
        {
            scanf("%i",&arr[i][j]);
        }
    }
}

//method to display the elements of array
-(void) display:(int [5][5]) arr
{
    NSLog(@"Displaying the elements of the array");
    for (int i = 0; i<r; i++)
    {
        for (int j = 0; j<c; j++)
        {
            NSLog(@"-->i %d", arr[i][j]);
        }
        //NSLog(@"\n");
    }
}
@end
