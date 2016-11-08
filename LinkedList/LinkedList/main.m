//
//  main.m
//  LinkedList
//
//  Created by Divakar Y N on 15/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedList.h"
#import "Node.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        LinkedList *linkedListObject = [[LinkedList alloc]init];
        [linkedListObject add:@"suresh"];
        [linkedListObject add:@"ramesh"];
        [linkedListObject add:@"jaggesh"];
        [linkedListObject add:@"roopesh"];
        [linkedListObject add:@"pranesh"];
        [linkedListObject add:@"mahesh"];
        [linkedListObject add:@"lokesh"];
        [linkedListObject display];
        int pos = [linkedListObject search:@"suresh"];
        NSLog(@" position of the element is %d",pos);
        [linkedListObject deleteObj:@"ramesh"];
        [linkedListObject addFirst:@"divakar"];
        [linkedListObject display];
        [linkedListObject add:@"jaggesh" inPosition:@"chandra"];
        NSLog(@"****************************");
        [linkedListObject display];
        
    }
    return 0;
}
