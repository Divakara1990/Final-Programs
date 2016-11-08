//
//  main.m
//  Pallindrome
//
//  Created by Divakar Y N on 14/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pallindrome.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        char string1[40];
        NSLog(@"Enter the String");
        scanf("%s[^\n]", string1);
        NSString *str = [NSString stringWithFormat:@"%s", string1];
        Pallindrome *pallObj = [[Pallindrome alloc]init];
       BOOL res = [pallObj isPalindrome:str];
        
        if (res)
        {
            NSLog(@"Yes Entered String is a PAllindrome");
        }
        else
        {
            NSLog(@"NO Entered String is NOT a Pallindrome");
        }
    }
    return 0;
}
