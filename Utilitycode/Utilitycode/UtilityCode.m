//
//  UtilityCode.m
//  Utilitycode
//
//  Created by BridgeLabz on 24/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "UtilityCode.h"

@implementation UtilityCode

NSDate *date;

-(NSMutableArray *)importStringData
{
    NSData *path = [NSData dataWithContentsOfFile:@"/Users/bridgelabz/Desktop/divakar/div/34.txt"];
    NSString *lines = [[NSString alloc]initWithBytes:[path bytes] length:[path length] encoding:NSUTF8StringEncoding];
    
    NSString *delimiter = @"\n";
    NSString *delimiter2 =@" ";
    
    NSArray *arr = [lines componentsSeparatedByString:delimiter];
    NSArray *tempArray = [[NSArray alloc]init];
    
    for (int k=0; k<[arr count]; k++)
    {
        NSArray *ary = [[arr objectAtIndex:k] componentsSeparatedByString:delimiter2];
        tempArray = [tempArray arrayByAddingObjectsFromArray:ary];
    }
    
    NSMutableArray *array = [NSMutableArray arrayWithArray:tempArray];
    
    return array;
}

-(NSMutableArray *)importIntegerData
{
    NSData *path = [NSData dataWithContentsOfFile:@"/Users/bridgelabz/Desktop/divakar/div/ghi.txt"];
    NSString *lines = [[NSString alloc]initWithBytes:[path bytes] length:[path length] encoding:NSUTF8StringEncoding];
    
    NSString *delimiter = @"\n";
    NSString *delimiter2 =@" ";
    
    NSArray *arr = [lines componentsSeparatedByString:delimiter];
    NSArray *tempArray = [[NSArray alloc]init];
    
    for (int k=0; k<[arr count]; k++)
    {
        NSArray *ary = [[arr objectAtIndex:k] componentsSeparatedByString:delimiter2];
        tempArray = [tempArray arrayByAddingObjectsFromArray:ary];
    }
    
    NSMutableArray *array = [NSMutableArray arrayWithArray:tempArray];
    
    return array;
}

-(NSMutableArray *)doSort:(NSMutableArray *)ary
{
    
    for (int i=1; i<[ary count]; i++)
    {
        id temp = [ary objectAtIndex:i];
        int j=i;
        
        while (j>0 && [[ary objectAtIndex:j-1] compare:temp]== NSOrderedDescending)
        {
            [ary replaceObjectAtIndex:j withObject:[ary objectAtIndex:j-1]];
            j--;
        }
        
        [ary replaceObjectAtIndex:j withObject:temp];
    }
    
    return ary;
}

-(void)doBinarySearchString:(NSMutableArray *)ary1 wordToBeSearched:(NSString *)word
{
    // NSLog(@"%@",ary1);
    long head = 0;
    
    long tail = [ary1 count]-1;
    // NSLog(@"%lu",tail);
    
    long val = 0;
    while (head<=tail)
    {
        long mid = (head+tail)/2;
        
        // NSLog(@"%@",[ary1 objectAtIndex:mid]);
        
        
        if ([word compare:[ary1 objectAtIndex:mid]]== NSOrderedSame)
        {
            val = mid+1;
            break;
        }
        else if ([word compare:[ary1 objectAtIndex:mid]]==NSOrderedAscending)
        {
            tail = mid-1;
        }
        else if ([word compare:[ary1 objectAtIndex:mid]]==NSOrderedDescending)
        {
            head = mid+1;
        }
        
    }
    
    if (val != 0)
    {
        NSLog(@"%@ is at %lu position of list",word,val);
    } else {
        NSLog(@"Word not found");
    }
    
}

-(void)doBinarySearchInteger:(NSMutableArray *)ary2 noToBeSearched:(int)num;
{
  
    long val = 0;
    
    //NSLog(@"%@",ary2);
    long head = 0;
    
    long tail = [ary2 count]-1;
    //NSLog(@"%lu",tail);
    while (head<=tail)
    {
        long mid = (head+tail)/2;
        
        // NSLog(@"%@",[ary2 objectAtIndex:mid]);
        
        
        if (num == [[ary2 objectAtIndex:mid] intValue])
        {
            val = mid+1;
            break;
        }
        else if (num < [[ary2 objectAtIndex:mid] intValue])
        {
            tail = mid-1;
        }
        else if (num > [[ary2 objectAtIndex:mid] intValue])
        {
            head = mid+1;
        }
        
    }
    
    if (val != 0) {
        NSLog(@"%d is at %lu position in list",num,val);
    } else {
        NSLog(@"Word not found");
    }
    
}


-(NSMutableArray *)bubbleSortInteger:(NSMutableArray *)ary3
{
    for (int i=0; i<[ary3 count]; i++)
    {
        for (int j=0; j<[ary3 count]-1; j++)
        {
            if ([[ary3 objectAtIndex:j] intValue] > [[ary3 objectAtIndex:j+1] intValue])
            {
                id temp = [ary3 objectAtIndex:j+1];
                [ary3 replaceObjectAtIndex:j+1 withObject:[ary3 objectAtIndex:j]];
                [ary3 replaceObjectAtIndex:j withObject:temp];
            }
        }
    }
    
    return ary3;
    
}

-(NSMutableArray *)bubbleSortString:(NSMutableArray *)ary4
{
    for (int i=0; i<[ary4 count]; i++)
    {
        for (int j=0; j<[ary4 count]-1; j++)
        {
            if ([[ary4 objectAtIndex:j] compare:[ary4 objectAtIndex:j+1]]==NSOrderedDescending)
            {
                id temp = [ary4 objectAtIndex:j+1];
                [ary4 replaceObjectAtIndex:j+1 withObject:[ary4 objectAtIndex:j]];
                [ary4 replaceObjectAtIndex:j withObject:temp];
            }
        }
    }
    
    return ary4;
}

-(NSMutableArray *)insertionSortString:(NSMutableArray *)ary6
{
    for (int i=1; i<[ary6 count]; i++)
    {
        id temp = [ary6 objectAtIndex:i];
        int j=i;
        
        while (j>0 && [[ary6 objectAtIndex:j-1] compare:temp]== NSOrderedDescending)
        {
            [ary6 replaceObjectAtIndex:j withObject:[ary6 objectAtIndex:j-1]];
            j--;
        }
        
        [ary6 replaceObjectAtIndex:j withObject:temp];
    }
    
    return ary6;
}

-(NSMutableArray *)insertionSortInteger:(NSMutableArray *)ary5
{
    for (int i=1; i<[ary5 count]; i++)
    {
        id temp = [ary5 objectAtIndex:i];
        int num = [temp intValue];
        int j=i;
        
        while (j>0 && [[ary5 objectAtIndex:j-1] intValue] > num)
        {
            [ary5 replaceObjectAtIndex:j withObject:[ary5 objectAtIndex:j-1]];
            j--;
        }
        
        [ary5 replaceObjectAtIndex:j withObject:temp];
    }
    
    return ary5;
}

-(NSDate *)startTimer
{
    date = [NSDate date];
    return date;
}

-(float)stopTimer
{
    double elapsedTime = [date timeIntervalSinceNow];
    NSLog(@"Total time elapsed : %f",elapsedTime*-1);
    return elapsedTime;
}

-(NSMutableArray *)sort:(NSMutableArray *)ary7
{
    for (int i=0; i<[ary7 count]; i++)
    {
        for (int j=0; j<[ary7 count]-1; j++)
        {
            if ([[ary7 objectAtIndex:j] doubleValue] < [[ary7 objectAtIndex:j+1] doubleValue])
            {
                id temp = [ary7 objectAtIndex:j+1];
                [ary7 replaceObjectAtIndex:j+1 withObject:[ary7 objectAtIndex:j]];
                [ary7 replaceObjectAtIndex:j withObject:temp];
            }
        }
    }
    
    return ary7;
}

@end
