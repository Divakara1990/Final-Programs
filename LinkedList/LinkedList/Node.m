//
//  Node.m
//  LinkedList
//
//  Created by Divakar Y N on 15/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "Node.h"

@implementation Node
@synthesize link;
-(id) initNode:(id)obj
{
    if (self=[super init])
    {
        self->data = obj;
    }
    return self;
}

@end
