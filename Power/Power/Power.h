//
//  Power.h
//  Power
//
//  Created by Divakar Y N on 03/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Power : NSObject


-(int)pow: (int)n : (int)p;

@end


@implementation Power
//Method to find the power of the number
-(int)pow : (const int)p  : (int)n;
{
    int pw = 1;
    while(n>0)
    {
        pw = pw * p;
        n--;
    }
    return pw;
}
@end