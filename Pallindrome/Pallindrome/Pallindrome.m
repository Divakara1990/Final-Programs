//
//  Pallindrome.m
//  Pallindrome
//
//  Created by Divakar Y N on 14/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "Pallindrome.h"

@implementation Pallindrome

-(BOOL)isPalindrome:(NSString *)phrase
{
    if (phrase) {
        
        // remove spaces, punctuation
        NSError *error = nil;
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[\\s\\p{P}]"
                                                                               options:NSRegularExpressionCaseInsensitive
                                                                                 error:&error];
        phrase = [regex stringByReplacingMatchesInString:phrase
                                                 options:0
                                                   range:NSMakeRange(0, phrase.length)
                                            withTemplate:@""];
        if (phrase.length > 1)
        {
            phrase = [phrase lowercaseString];
            
            // go to mid-point while checking for same character on other end
            for (int i = 0; i < phrase.length / 2 + 1; ++i)
            {
                if ([phrase characterAtIndex:i] != [phrase characterAtIndex:(phrase.length - i - 1)])
                {
                    return NO;
                }
            }
            return YES;
        }
        else
        {
            return YES;
        }
    }
    return NO;
}

@end
