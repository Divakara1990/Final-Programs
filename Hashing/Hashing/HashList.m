//
//  HashList.m
//  Hashing
//
//  Created by Divakar Y N on 25/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "HashList.h"

@implementation HashList

@synthesize head;

-(void)add:(int)data
{
    Node  *lastNode;
    Node *newNode =[[Node alloc]initNodeWithValue:data];
    if(head == nil){
        head=newNode;
    }
    else{
        lastNode=head;
        
        while (lastNode.next!=nil) {
            lastNode=lastNode.next;
        }
        lastNode.next = newNode;
        
    }
    
    
    
}

-(id)remove
{
    Node *temp=head;
    if (head.next != nil)
    {
        Node *currentNode = head.next;
        head.next = nil;
        head = currentNode;
    }
    else{
        head = nil;
    }
    return temp;
}


-(void)display{
    Node  *lastNode=head;
    
    while (lastNode!=nil) {
        NSLog(@"%d",lastNode.data);
        lastNode=lastNode.next;
        
    }
    
    
}
-(void)remove:(int)value
{
    Node *currentNode = head.next;
    Node *previousNode = head;
    if (head.data == value) {
        head = head.next;
    }
    else{
        while (currentNode.next != nil){
            if (currentNode.data == value) {
                previousNode.next = currentNode.next;
                break;
            }
            else{
                previousNode = currentNode;
                currentNode = currentNode.next;
            }
        }
        if (currentNode.data == value && currentNode.next == nil) {
            previousNode.next = nil;
        }
    }
}
//function to search the required word
-(int)search:(int)value
{
    Node *currentNode = head;
    while (currentNode.next != nil) {
        if (currentNode.data == value) {
            return 1;
        }
        currentNode = currentNode.next;
    }
    if (currentNode.data == value){
        return 1;
    }
    return 0;
    
}

@end
