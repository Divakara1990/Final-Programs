//
//  HashList.h
//  Hashing
//
//  Created by Divakar Y N on 25/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"
@interface HashList : NSObject

{
    Node *head;
}
@property(strong) Node *head;
-(void)add:(int)data;
-(id)remove;
-(void)display;
-(int)search:(int)value;
-(void)remove:(int)value;


@end
