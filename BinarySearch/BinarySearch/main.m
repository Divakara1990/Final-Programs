//
//  main.m
//  BinarySearch
//
//  Created by Divakar Y N on 13/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BinarySearch.h"

void binarySearch(NSString *str , NSInteger minIndex, NSInteger maxIndex , NSArray *array)
{
    //find middle index
    NSInteger midIndex = (minIndex + maxIndex) / 2 ;
    
    //comparing two strings
    NSComparisonResult result = [str compare:[array objectAtIndex:midIndex]];
    
    if(minIndex == midIndex || maxIndex == midIndex)
    {
        NSLog(@"word is found");
        
    }
    else if (result == NSOrderedAscending)
    {
        minIndex = midIndex +1;
        maxIndex = maxIndex;
        binarySearch(str, minIndex, maxIndex, array);
    }
    else
    {
        minIndex = minIndex;
        maxIndex = minIndex-1;
        binarySearch(str, minIndex, maxIndex, array);
    }
}

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        BinarySearch *binaryObj =[[BinarySearch alloc] init];
        
        //file handling
        NSFileManager *file =[NSFileManager defaultManager];
        
        
        NSData *dat = [file contentsAtPath:@"/Users/bridgelabz/Desktop/divakar/div/34.txt"];
        
        NSString *content =[[[NSString alloc] initWithBytes:[dat bytes] length:[dat length]  encoding:NSUTF8StringEncoding] autorelease];
        
        
        NSString *delimiter = @" ";
        
        // all data is in array now
        NSArray *items = [content componentsSeparatedByString:delimiter];
        NSLog(@"Array elements are %@",items);
        //converting immmutable array into mutable
        NSMutableArray *array =[[NSMutableArray alloc] init];
        array = [NSMutableArray arrayWithArray:items];
        
        [binaryObj sortingString:array];
        
        NSLog(@"Array elements are %@",array);
        char string[10];
        
        //taking user input to search data in array
        NSLog(@"Enter word u want to search : ");
        scanf("%s",string);
        
        NSString *str = [NSString stringWithCString:string encoding:1];
        NSLog(@"string are %@",str);
        //set min and max index
        NSInteger minIndex=0;
        NSInteger maxIndex= [array count] - 1;
        NSLog(@"Array length %lu",(unsigned long)[array count]);
        //calling method
        binarySearch(str,minIndex,maxIndex,array);
    }
    return 0;
}
