//
//  PrimeFactor.m
//  PrimeFactorization
//
//  Created by Divakar Y N on 07/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "PrimeFactor.h"
//implementing the methods which is declared in ".h" file
@implementation PrimeFactor

-(void) display:(int)res
{
    //checking for the number "2" is a prime factor or not
    while (res%2 == 0)
    {
        NSLog(@"%i",2);
        res = res/2;
    }
    //checking for the other numbers >2
    for (int i = 3; i <= sqrt(res); i+=2)
    {
        while (res%i == 0)
        {
            NSLog(@"%i",i);
            res = res/i;
        }
    }
    if (res>2)
    {
        NSLog(@"%i",res);
    }
}
@end
