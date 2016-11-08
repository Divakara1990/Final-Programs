//
//  UnorderedLinkedList.h
//  Unordered LinkedList
//
//  Created by Divakar Y N on 10/18/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UnorderedLinkedList : NSObject
{
    NSString *stringData;
    UnorderedLinkedList *nextAddr;
}

-(id)init:(NSString *)word;
-(void)InsertWord:(NSString *)data;
-(void)remove:(NSString *)word;
-(BOOL)search:(NSString *)word;
-(void) display;

@property (readwrite) NSString *stringdata;
@property (retain)UnorderedLinkedList *Nextaddr;

@end
