//
//  Node.m
//  CashCounter
//
//  Created by Divakar Y N on 20/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "Node.h"

@implementation Node

@synthesize data,next,balance;

-(id) initNodeWithValue:(NSString*)string balance:(int)amount{
    self = [super init];
    data=string;
    next = nil;
    balance=amount;
    return self;
}


@end
