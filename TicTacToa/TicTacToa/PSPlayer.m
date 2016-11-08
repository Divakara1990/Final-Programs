//
//  PSPlayer.m
//  TicTacToa
//
//  Created by Divakar Y N on 24/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "PSPlayer.h"

@implementation PSPlayer

-(instancetype)initWithSymbol:(PSBoardSymbol)symbol name:(NSString *)name{
    
    if(self = [super init]) {
        
        self.symbol = symbol;
        self.symbolStringRepresentation = (symbol == PSBoardSymbolO) ? @"O" : ((symbol == PSBoardSymbolX) ? @"X" : @"");
        self.name = name;
    }
    
    return self;
}

@end
