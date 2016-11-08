//
//  main.m
//  PrimeFactorization
//
//  Program to print the PrimeFactor of the number
//
//  Created by Divakar Y N on 07/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrimeFactor.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        //Creating the object of PrimeFactor Class
        PrimeFactor *prime = [[PrimeFactor alloc] init];
        int number;
        //Taking the input with user
        NSLog(@"Enter the Number to find the PrimeFactor");
        scanf("%i",&number);
        //invoking the method
        [prime display:number];
    }
    return 0;
}
