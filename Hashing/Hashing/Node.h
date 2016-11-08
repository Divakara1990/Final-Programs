//
//  Node.h
//  Hashing
//
//  Created by Divakar Y N on 25/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

{
    int data;
    Node *next;
}
@property(readwrite) int data;
@property (retain) Node *next;
-(id)initNodeWithValue:(int)data;

@end
