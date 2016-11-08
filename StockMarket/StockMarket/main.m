//
//  main.m
//  StockMarket
//
//  Created by Divakar Y N on 13/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockMarket.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        char name[20];
        int share;
        int price;
        int number;
        
        //taking number of member in stock market
        NSLog(@"how many member in stock market : ");
        scanf("%i",&number);
        
        for (int i=0; i<number; i++)
        {
            //making object of StockMarket class
            StockMarket *stockObj=[[StockMarket alloc] init];
            
            //taking members name
            NSLog(@"enter name :");
            scanf("%s",name);
            NSString *sName=[NSString stringWithCString:name encoding:1];
            
            //No. of share
            NSLog(@"enter share :");
            scanf("%i",&share);
            
            //Price of share
            NSLog(@"enter price:");
            scanf("%i",&price);
            
            //calling methods
            [stockObj setName:sName];
            [stockObj setShare:share];
            [stockObj setPrice:price];
            [stockObj display];
        }
    }
    return 0;
}
