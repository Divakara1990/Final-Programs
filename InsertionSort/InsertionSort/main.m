//
//  main.m
//  InsertionSort
//
//  Created by Divakar Y N on 12/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InsertionSort.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        
        InsertionSort *insertionsortObj =[[InsertionSort alloc] init];
        
        //file handling
        NSFileManager *file =[NSFileManager defaultManager];
        
        NSData *dat = [file contentsAtPath:@"/Users/bridgelabz/Desktop/divakar/div/34.txt"];
        
        NSString *content =[[[NSString alloc] initWithBytes:[dat bytes] length:[dat length]  encoding:NSUTF8StringEncoding] autorelease];

        
        NSString *delimiter = @" ";
        
        // all data is in array now
        NSArray *items = [content componentsSeparatedByString:delimiter];
        
        //converting immmutable array into mutable
        NSMutableArray *array =[[NSMutableArray alloc] init];
        array = [NSMutableArray arrayWithArray:items];
        
        // Taking data directly in array
        //  NSMutableArray *array=[[NSMutableArray alloc] initWithObjects:@"sumeet",@"akshay",@"parth",@"mayur", nil];
        
        //calling method
        [insertionsortObj sortingString:array];
        
        // display result array after sorting
        NSLog(@"print sorting array: %@", array);
    }
    return 0;
}
