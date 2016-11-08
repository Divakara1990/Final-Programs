//
//  main.m
//  Harmonic
//
//  Created by Divakar Y N on 05/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        int n;
        double res = 0;
        //taking the input from the user
        NSLog(@"Enter the number");
        scanf("%d",&n);
        for(double i = 1; i <= n; i++)
            res = res+(1/i);
        NSLog(@"The %i Harmonic number is %1f",n,res);
    }
    return 0;
}
