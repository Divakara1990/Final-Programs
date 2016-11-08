//
//  PSBoard.h
//  TicTacToa
//
//  Created by Divakar Y N on 24/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PSPlayer.h"
@interface PSBoard : NSObject

@property (nonatomic) NSUInteger        rows;
@property (nonatomic) NSUInteger        columns;
@property (nonatomic, strong) PSPlayer *winner;

-(instancetype)initWithRows:(NSUInteger)rows columns:(NSUInteger)columns players:(NSArray *)players;
-(PSPlayer *)playerAtRow:(NSUInteger)row column:(NSUInteger)column;
-(void)setPlayer:(PSPlayer *)player atRow:(NSUInteger)row column:(NSUInteger)column;
-(void)display;
-(PSPlayer *)playerUp;

@end
