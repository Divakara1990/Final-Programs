//
//  PSPlayer.h
//  TicTacToa
//
//  Created by Divakar Y N on 24/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, PSBoardSymbol) {
    
    PSBoardSymbolX = 0,
    PSBoardSymbolO,
    PSBoardSymbolNone
};

@interface PSPlayer : NSObject

-(instancetype)initWithSymbol:(PSBoardSymbol)symbol name:(NSString *)name;

@property (nonatomic)  PSBoardSymbol    symbol;
@property (nonatomic)  NSString        *symbolStringRepresentation;
@property (nonatomic, strong) NSString *name;

@end