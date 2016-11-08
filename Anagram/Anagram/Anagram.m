//
//  Anagram.m
//  Anagram
//
//  Created by Divakar Y N on 10/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "Anagram.h"

@implementation Anagram

-(NSString *) removeSpace: (NSString *)str
{
    NSString * s1 =[str stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    return s1;
}

-(NSArray *) sort: (NSMutableArray *)arr
{
    NSArray *my_array= [arr sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    // to display the array contents
//    for (int i = 0; i < [my_array count]; i++)
//    {
//        NSLog(@"The Sorted array is %@",my_array[i]);
//    }
    return my_array;
}

-(NSString *) convertTOString: (NSArray *)array
{
    NSString * str = [[array valueForKey:@"description"] componentsJoinedByString:@""];
   // NSLog(@"Converted String is %@",str);
    return str;
}



-(NSString *) toUpper: (NSString *)str
{
    
    NSString * s2 = [str uppercaseString];
    //NSLog(@"%@", [str uppercaseString]);
    return s2;
}



-(NSMutableArray *) createCharArray:(NSString*) str
{
    NSMutableArray *letterArray = [NSMutableArray array];
    [str enumerateSubstringsInRange:NSMakeRange(0, [str length])
                                options:(NSStringEnumerationByComposedCharacterSequences)
                             usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                                 [letterArray addObject:substring];
                             }];
    
//    for (NSString *i in letterArray){
//        NSLog(@"%@",i);
//    }
    return letterArray;
}
@end
