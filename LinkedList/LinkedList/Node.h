//
//  Node.h
//  LinkedList
//
//  Created by Divakar Y N on 15/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject
{
    @public id data;
    @public Node *link;
}

@property Node *link;

-(id) initNode:(id) obj;
@end