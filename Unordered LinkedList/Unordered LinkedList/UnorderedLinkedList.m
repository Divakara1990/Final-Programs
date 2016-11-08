//
//  UnorderedLinkedList.m
//  Unordered LinkedList
//
//  Created by Divakar Y N on 10/18/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "UnorderedLinkedList.h"

@implementation UnorderedLinkedList

@synthesize stringdata = stringData;
@synthesize Nextaddr = nextAddr;

UnorderedLinkedList *head = NULL;
UnorderedLinkedList *newNode;

-(id)init:(NSString *)word
{
    self = [super init];
    if (self)
    {
        stringData = word;
        nextAddr = NULL;
    }
    return (self);
}

-(void)InsertWord:(NSString *)data
{
    newNode = [[UnorderedLinkedList alloc]init:data];
    
    if (head == NULL)
    {
        head = newNode;
        
    }
    else
    {
        UnorderedLinkedList *temp = head;
        while (temp.Nextaddr != NULL)
        {
            temp = temp.Nextaddr;
        }
        
        temp.Nextaddr = newNode;
    }
}

-(void)remove:(NSString *)word
{
    UnorderedLinkedList *currentcode = head.Nextaddr;
    UnorderedLinkedList *previouscode = head;
    
    if (head.stringdata == word)
    {
        head = head.Nextaddr;
        NSLog(@"%@ removed",word);
    }
    else
    {
        while (currentcode.Nextaddr != NULL)
        {
            if (currentcode.stringdata == word)
            {
                previouscode.Nextaddr = currentcode.Nextaddr;
                NSLog(@"Word removed");
                break;
            }
            else
            {
                previouscode = currentcode;
                currentcode = currentcode.Nextaddr;
            }
        }
        
        if (currentcode.stringdata == word && currentcode.Nextaddr == NULL)
        {
            previouscode.Nextaddr = NULL;
        }
    }
}

-(BOOL)search:(NSString *)word
{
    UnorderedLinkedList *currentcode = head;
    while (currentcode.Nextaddr != NULL)
    {
        if (currentcode.stringdata == word)
        {
            NSLog(@"%@ found",word);
            return YES;
        }
        currentcode = currentcode.Nextaddr;
    }
    
    if (currentcode.stringdata == word)
    {
        return YES;
    }
    return NO;
}

-(void) display;
{
    UnorderedLinkedList *t = head;
    while (t != nil)
    {
        NSLog(@" data is --> %@",t->stringData);
        t = [t Nextaddr];
    }
}


@end
