//
//  main.m
//  InventryExtended
//
//  Created by Divakar Y N on 18/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InventryFactory.h"
#import "InventryManager.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        //get all document in NSData from json file
        NSData *data = [[NSData alloc] initWithContentsOfFile: @"/Users/bridgelabz/Desktop/divakar/div/Programming-Project/Programming-Project/jsonExample.json"];
        
        //asking user to use the Inventory machine
        NSLog(@"Enter 1. to use Inventry Machine ");
        int num;
        scanf("%d",&num);
        //creating the object of InventryManager class
        InventryManager *iMObj = [[InventryManager alloc]init];
    
        if (num == 1)
        {
            //invoking the method of inventoryManager class 
            [iMObj factoryObject:data];
        }
    }
    return 0;
}
