//
//  LinkedList.h
//  LinkedList
//
//  Created by Divakar Y N on 15/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"
@interface LinkedList : NSObject
{
    Node *head;
}
@property (strong, nonatomic) Node *head;
-(BOOL) add:(id)obj;
-(void) display;
-(BOOL) addFirst:(id)obj;
-(BOOL) add:(id)obj1 inPosition:(id)obj2;
-(int) search:(id)obj;
-(BOOL) deleteObj:(id)obj;

@end
