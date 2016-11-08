//
//  LinkedList.m
//  LinkedList
//
//  Created by Divakar Y N on 15/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "LinkedList.h"
#import "Node.h"

@implementation LinkedList
@synthesize head;
-(BOOL) add:(id)obj;
{
    Node *n = [[Node alloc]initNode:obj];
    if(head == nil)
    {
        head = n;
        return true;
    }
    
    Node *t = head;
    while ([t link] != nil)
    {
        t = [t link];
    }
    t.link = n;
    return true;
}
-(void) display;
{
    Node *t = head;
    while (t != nil)
    {
        NSLog(@" data is --> %@",t->data);
        t = [t link];
    }
}
-(BOOL) addFirst:(id)obj;
{
    Node *n = [[Node alloc]initNode:obj];
    Node *t = head;
    head = n;
    head.link = t;
    return  true;
}

-(BOOL) add:(id)obj1 inPosition:(id)obj2;
{
    Node *n = [[Node alloc]initNode:obj2];
    Node *t = head;
    while (t!=nil)
    {
        if (t->data == obj1)
        {
            break;
        }
        t = [t link];
    }
    if(t == nil)
        return false;
    else
    {
        n.link = t.link;
        t.link = n;
        return true;
    }
}
-(int) search:(id)obj;
{
    int count = 0;
    Node *t = head;
    while (t != nil)
    {
        count++;
        if (t->data == obj)
        {
            break;
        }
        t = [t link];
    }
    if (t == nil)
    {
        return -1;
    }
    return count;
}
-(BOOL) deleteObj:(id)obj;
{
    NSLog(@"Deleting wait fr a sec");
    if (head->data == obj)
    {
        head = [head link];
        return true;
    }
    Node *t = [head link];
    Node *p = head;
    while (t != nil)
    {
        if (t->data == obj)
        {
            break;
        }
        p = t;
        t = t.link;
    }
    if (t != nil)
    {
        p.link = t.link;
        return true;
    }
    else
    {
        return false;
    }
}


@end
