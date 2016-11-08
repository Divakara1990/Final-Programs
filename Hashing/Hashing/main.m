//
//  main.m
//  Hashing
//
//  Created by Divakar Y N on 25/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HashList.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSMutableArray *array=[[NSMutableArray alloc]init];
        
        NSString* path = @"/Users/bridgelabz/Desktop/divakar/div/ghi.txt";
        NSString* fileContents =
        [NSString stringWithContentsOfFile:path
                                  encoding:NSUTF8StringEncoding error:nil];
        // seperating strings with respect to whitespace and newline character
        NSArray* allLinedStrings =
        [fileContents componentsSeparatedByCharactersInSet:
         [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        NSMutableArray* array2=[NSMutableArray arrayWithArray:allLinedStrings];
        for (int i=0;i<11; i++)
        {
            
            HashList *obj=[[HashList alloc]init];
            [array addObject:obj];
            
        }
        
        
        for (int i=0; i<[array2 count]; i++)
        {
            
            id key=[array2 objectAtIndex:i];
            
            int value=[key intValue];
            int rem=value%11;
            HashList *obj = [array objectAtIndex:rem];
            [obj add:value];
            
        }
        int num;
        
        NSLog(@"enter a number to be searched");
        scanf("%d",&num);
        int rem1=num%11;
        HashList *obj = [array objectAtIndex:rem1];
        
        int value=  [obj search:num];
        if (value==1)
        {
            NSLog(@"found");
            [obj remove:num];
        }
        
        else
        {
            
            [obj add:num];
            NSLog(@"not found");
        }
        
        for (int i=0; i<11; i++)
        {
            NSLog(@"slot number : %d",i);
            HashList *obj = [array objectAtIndex:i];
            
            
            [obj display];
            
        }
        
    }
    
    
    return 0;
}
