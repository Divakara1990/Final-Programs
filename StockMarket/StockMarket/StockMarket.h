//
//  StockMarket.h
//  StockMarket
//
//  Created by Divakar Y N on 13/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockMarket : NSObject
{
    NSString *mName;
    int mNOOfShare;
    int mPrice;
    int mTotal;
}

-(void) setName:(NSString *)name;
-(void) setShare:(int) share;
-(void) setPrice:(int) price;
-(void) display;

@end
