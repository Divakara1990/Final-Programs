//
//  Node.m
//  Hashing
//
//  Created by Divakar Y N on 25/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "Node.h"

@implementation Node

@synthesize data,next;


-(id) initNodeWithValue:(int)value
{
    self = [super init];
    data=value;
    next = nil;
    return self;
}


@end
