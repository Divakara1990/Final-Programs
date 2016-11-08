//
//  main.m
//  Utilitycode
//
//  Created by BridgeLabz on 24/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UtilityCode.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        UtilityCode *utl = [[UtilityCode alloc]init];
        
        NSMutableArray *secndsArray = [[NSMutableArray alloc]init];
        
        NSMutableArray *stringArray = [utl importStringData];
        NSMutableArray *integerArray = [utl importIntegerData];
        
        NSMutableArray *sortedStringArray = [utl doSort:stringArray];
        char name[40];
        NSLog(@"Enter a word to be searched");
        scanf("%s",name);
        NSString *word = [NSString stringWithUTF8String:name];
        
        [utl startTimer];
        [utl doBinarySearchString:sortedStringArray wordToBeSearched:word];
        [secndsArray addObject:[NSNumber numberWithFloat:[utl stopTimer]]];
        
        NSLog(@"\n");
        NSMutableArray *sortedIntArray = [utl bubbleSortInteger:integerArray];
        int num;
        NSLog(@"Enter a number to be searched");
        scanf("%d",&num);
        [utl startTimer];
        [utl doBinarySearchInteger:sortedIntArray noToBeSearched:num];
        [secndsArray addObject:[NSNumber numberWithFloat:[utl stopTimer]]];
        
        
        
        
        
        NSLog(@"\n");
        [utl startTimer];
        NSLog(@"Bubble Sort Integer....");
        NSMutableArray *srtedInt = [utl bubbleSortInteger:integerArray];
        [secndsArray addObject:[NSNumber numberWithFloat:[utl stopTimer]]];
        NSString *str = [srtedInt componentsJoinedByString:@" "];
        NSLog(@"%@",str);
        
        NSLog(@"\n");
        [utl startTimer];
        NSLog(@"Bubble Sort String...");
        NSMutableArray *srtedString = [utl bubbleSortString:stringArray];
        [secndsArray addObject:[NSNumber numberWithFloat:[utl stopTimer]]];
        NSString *str1 = [srtedString componentsJoinedByString:@" "];
        NSLog(@"%@",str1);
        
        NSLog(@"\n");
        [utl startTimer];
        NSLog(@"Insertion Sort Integer....");
        NSMutableArray *srtedINt = [utl insertionSortInteger:integerArray];
        [secndsArray addObject:[NSNumber numberWithFloat:[utl stopTimer]]];
        NSString *str2 = [srtedINt componentsJoinedByString:@" "];
        NSLog(@"%@",str2);
        
        NSLog(@"\n");
        [utl startTimer];
        NSLog(@"Insertion Sort String....");
        NSMutableArray *srtedSTR = [utl insertionSortString:stringArray];
        [secndsArray addObject:[NSNumber numberWithFloat:[utl stopTimer]]];
        NSString *str3 = [srtedSTR componentsJoinedByString:@" "];
        NSLog(@"%@",str3);
        
        NSLog(@"\n");
        NSLog(@"\n");
        
        secndsArray = [utl sort:secndsArray];
        for (long i=[secndsArray count]-1; i>=0; i--)
        {
            double val = [[secndsArray objectAtIndex:i] doubleValue];
            
            NSLog(@"%f",val*-1);
            
        }
    }
    
    return 0;
}
