//
//  Queue.h
//  CashCounter
//
//  Created by Divakar Y N on 20/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"
@interface Queue : NSObject

{
    Node *head;
    
}
@property(strong) Node *head;
-(void)add:(NSString*)data amount:(int)amount;
-(int)top;
-(id)remove;
//-(void)deposit:(int)amount operation:(NSString*)operation;
-(BOOL)isempty;
//-(int)search:(NSString*)word;

@end
