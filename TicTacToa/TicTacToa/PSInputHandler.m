//
//  PSInputHandler.m
//  TicTacToa
//
//  Created by Divakar Y N on 24/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "PSInputHandler.h"

@implementation PSInputHandler

+(NSInteger)getInteger {
    int temp;
    scanf("%i", &temp);
    return (NSInteger)temp;
}
+(NSString *)getString {
    char input[256];
    scanf("%s", input);
    return [NSString stringWithUTF8String:input];
}


@end
