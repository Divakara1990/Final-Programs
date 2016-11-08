//
//  RegularExpression.m
//  RegularExpression
//
//  Created by Divakar Y N on 22/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "RegularExpression.h"

@implementation RegularExpression

-(void)replaceWord:(NSString *)string withName:(NSString *)name
{
    NSString *str2;
    char lastName[40];
    NSLog(@"enter last name");
    scanf(" %[^\n]s",lastName);
    NSString *str1 = [NSString stringWithUTF8String:lastName];
    NSString *str3 = [name stringByAppendingFormat:@" %@",str1];
    
    
    char phone[15];
    NSLog(@"Enter phone number");
    scanf("%s",phone);
    NSString *phone1 = [NSString stringWithUTF8String:phone];
    
    NSDateFormatter *dateformatter = [[NSDateFormatter alloc]init];
    [dateformatter setDateFormat:@"dd/MM/YYYY"];
    NSString *date = [dateformatter stringFromDate:[NSDate date]];
    
    for (int i=0; i<4; i++)
    {
        if (i==0)
        {
            NSRegularExpression *regex1 = [NSRegularExpression regularExpressionWithPattern:@"<<name>>" options:NSRegularExpressionCaseInsensitive error:nil];
            
            str2 = [regex1 stringByReplacingMatchesInString:string options:0 range:NSMakeRange(0, [string length]) withTemplate:name];
            string = str2;
        }
        else if (i==1)
        {
            NSRegularExpression *regex1 = [NSRegularExpression regularExpressionWithPattern:@"<<full name>>" options:NSRegularExpressionCaseInsensitive error:nil];
            
            str2 = [regex1 stringByReplacingMatchesInString:string options:0 range:NSMakeRange(0, [string length]) withTemplate:str3];
            string = str2;
        }
        else if (i==2)
        {
            NSRegularExpression *regex1 = [NSRegularExpression regularExpressionWithPattern:@"xxxxxxxxxx" options:NSRegularExpressionCaseInsensitive error:nil];
            
            str2 = [regex1 stringByReplacingMatchesInString:string options:0 range:NSMakeRange(0, [string length]) withTemplate:phone1];
            string = str2;
        }
        else if (i==3)
        {
            NSRegularExpression *regex1 = [NSRegularExpression regularExpressionWithPattern:@"01/01/2016" options:NSRegularExpressionCaseInsensitive error:nil];
            
            str2 = [regex1 stringByReplacingMatchesInString:string options:0 range:NSMakeRange(0, [string length]) withTemplate:date];
            string = str2;
        }
    }
    NSLog(@"%@",str2);
}

@end
