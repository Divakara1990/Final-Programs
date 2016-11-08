//
//  StockMarket.m
//  StockMarket
//
//  Created by Divakar Y N on 13/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "StockMarket.h"

@implementation StockMarket

//set name
-(void) setName:(NSString *)name
{
    mName = name;
}

//set share
-(void) setShare:(int)share
{
    mNOOfShare = share;
}

//set price
-(void) setPrice:(int)price
{
    mPrice = price;
}

//display all information of member
-(void) display
{
    NSLog(@"name=%@",mName);
    NSLog(@"No. of share=%i",mNOOfShare);
    NSLog(@"price of share=%i",mPrice);
    NSLog(@"total=%i", mNOOfShare * mPrice);
}

@end
