//
//  InventryManager.m
//  InventryExtended
//
//  Created by Divakar Y N on 18/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "InventryManager.h"
#import "InventryFactory.h"
@implementation InventryManager

-(void) factoryObject:(id)data
{
    //receiving the json data in the form of object to the method
    id dataObj = data;
    
    NSLog(@"Which items Price U want to check?");
    NSLog(@"Enter 1. to check price of rice \n 2. Enter to check price of wheat \n 3. Enter to check price of pulses");
    int num;
    scanf("%d",&num);
    //creating the object of factory method to create the object of result
    InventryFactory *iFObj = [[InventryFactory alloc]init];
    
    //checking the user entered condition and invoking the factory Object methods
    if(num == 1)
    {
        [iFObj factoryObjectForRice:dataObj];
    }
    else if(num == 2)
    {
        [iFObj factoryObjectForWheat:dataObj];
    }
    else if(num == 3)
    {
        [iFObj factoryObjectForPulses:dataObj];
    }
}

@end
