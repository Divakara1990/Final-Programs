//
//  main.m
//  RegularExpression
//
//  Created by Divakar Y N on 22/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RegularExpression.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        RegularExpression *regex = [[RegularExpression alloc]init];
        char name[40];
        NSLog(@"Enter first name");
        scanf(" %[^\n]s",name);
        NSString *line = [NSString stringWithUTF8String:name];
        
        NSString *str = @"Hello <<name>>, We have your full name as <<full name>> in our system. your contact number is 91-xxxxxxxxxx. Please,let us know in case of any clarification Thank you BridgeLabz 01/01/2016.";
        
        [regex replaceWord:str withName:line];

    }
    return 0;
}
