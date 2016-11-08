//
//  Paranthesis.m
//  Paranthesis
//
//  Created by Divakar Y N on 22/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "Paranthesis.h"

@implementation Paranthesis

NSMutableArray *stack;


-(id)init
{
    self = [super init];
    if (self)
    {
        stack = [[NSMutableArray alloc]initWithCapacity:100];
    }
    return (self);
}

-(void)push:(char)charac
{
    id val = [NSNumber numberWithChar:charac];
    [stack addObject:val];
}

-(char)pop
{
    char charc =[[stack lastObject] charValue];
    [stack removeLastObject];
    return charc;
}

-(char)peek
{
    char charc = [[[stack lastObject] copy] charValue];
    return charc;
}

-(BOOL)isEmpty
{
    if ([stack count] == 0)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

-(int)size
{
    return (int)[stack count];
}

@end
