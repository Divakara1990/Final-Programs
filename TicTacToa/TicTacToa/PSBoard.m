//
//  PSBoard.m
//  TicTacToa
//
//  Created by Divakar Y N on 24/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "PSBoard.h"
#import "PSPlayer.h"

@interface PSBoard ()

@property (nonatomic, strong) NSMutableArray *internalBoardRepresentation;
@property (nonatomic, strong) NSArray *players;
@property (nonatomic, strong) PSPlayer *oldPlayerUp;

@end
@implementation PSBoard

-(instancetype)initWithRows:(NSUInteger)rows columns:(NSUInteger)columns players:(NSArray *)players {
    
    if(self = [super init]) {
        
        self.rows = rows;
        self.columns = columns;
        self.players = players;
        self.internalBoardRepresentation = [[NSMutableArray alloc] initWithCapacity:rows];
        
        PSPlayer *null = [[PSPlayer alloc] initWithSymbol:PSBoardSymbolNone name:nil];
        
        for(NSUInteger row = 0; row < rows; row++) {
            
            NSMutableArray *currentColumn = [NSMutableArray array];
            for(NSUInteger column = 0; column < columns; column++) {
                [currentColumn addObject:null];
            }
            [self.internalBoardRepresentation addObject:currentColumn];
        }
        
        self.oldPlayerUp = players[0];
    }
    
    return self;
}

-(PSPlayer *)playerAtRow:(NSUInteger)row column:(NSUInteger)column
{
    return self.internalBoardRepresentation[row][column];
}

-(void)setPlayer:(PSPlayer *)player atRow:(NSUInteger)row column:(NSUInteger)column
{
    self.internalBoardRepresentation[row][column] = player;
    [self checkForWinner];
}

-(void)checkForWinner
{
    
    NSUInteger numberOfPiecesInARowToWin = MAX(self.rows, self.columns);
    
    //Check horizontal lines
    for(NSUInteger row = 0; row < self.rows; row++) {
        
        PSPlayer *playerInFirstColumn = [self playerAtRow:row column:0];
        NSUInteger playerPiecesInRow = 0;
        
        for(NSUInteger column = 0; column < self.columns; column++) {
            if([[self playerAtRow:row column:column] isEqualTo:playerInFirstColumn]) {
                playerPiecesInRow++;
            }
        }
        
        if(playerPiecesInRow >= numberOfPiecesInARowToWin && playerInFirstColumn.symbol != PSBoardSymbolNone) {
            self.winner = playerInFirstColumn;
            return;
        }
    }
    
    //Check vertical lines
    for(NSUInteger column = 0; column < self.columns; column++) {
        
        PSPlayer *playerInFirstRow = [self playerAtRow:0 column:column];
        NSUInteger playerPiecesInColumn = 0;
        
        for(NSUInteger row = 0; row < self.rows; row++) {
            if([[self playerAtRow:row column:column] isEqualTo:playerInFirstRow]) {
                playerPiecesInColumn++;
            }
        }
        
        if(playerPiecesInColumn >= numberOfPiecesInARowToWin && playerInFirstRow.symbol != PSBoardSymbolNone) {
            self.winner = playerInFirstRow;
            return;
        }
    }
    
    //Check top left to bottom right diagonal
    PSPlayer *playerInFirstSlotOfLeftDiagonal = [self playerAtRow:0 column:0];
    NSUInteger playerPiecesInLeftDiagonal = 0;
    
    for(NSUInteger row = 0, column = 0; row < self.rows; column++, row++) {
        if([[self playerAtRow:row column:column] isEqualTo:playerInFirstSlotOfLeftDiagonal]) {
            playerPiecesInLeftDiagonal++;
        }
    }
    
    if(playerPiecesInLeftDiagonal >= numberOfPiecesInARowToWin && playerInFirstSlotOfLeftDiagonal.symbol != PSBoardSymbolNone) {
        self.winner = playerInFirstSlotOfLeftDiagonal;
        return;
    }
    
    //Check bottom left to top right diagonal
    PSPlayer *playerInFirstSlotOfRightDiagonal = [self playerAtRow:self.rows-1 column:0];
    NSUInteger playerPiecesInRightDiagonal = 0;
    
    for(NSInteger row = self.rows-1, column = 0; row >= 0; row--, column++) {
        if([[self playerAtRow:row column:column] isEqualTo:playerInFirstSlotOfRightDiagonal]) {
            playerPiecesInRightDiagonal++;
        }
    }
    
    if(playerPiecesInRightDiagonal >= numberOfPiecesInARowToWin && playerInFirstSlotOfRightDiagonal.symbol != PSBoardSymbolNone) {
        self.winner = playerInFirstSlotOfRightDiagonal;
        return;
    }
}

-(void)display
{
    
    NSMutableString *displayString = [NSMutableString stringWithFormat:@"\n"];
    
    for(NSUInteger row = 0; row < self.rows; row++) {
        
        NSMutableString *rowDisplayString = [[NSMutableString alloc] init];
        NSString *innerFillerString = (row == self.rows-1) ? @" " : @"_";
        
        for(NSUInteger column = 0; column < self.columns; column++) {
            NSString *columnSeparator = (column == self.columns-1) ? @" " : @"|";
            NSString *playerSymbol = ([self playerAtRow:row column:column].symbolStringRepresentation);
            
            if(playerSymbol.length == 0) {
                playerSymbol = innerFillerString;
            }
            
            [rowDisplayString appendString:[NSString stringWithFormat:@"%@%@%@%@", innerFillerString, playerSymbol, innerFillerString, columnSeparator]];
        }
        
        [displayString appendString:[NSString stringWithFormat:@"%@\n", rowDisplayString]];
        [rowDisplayString setString:@""];
    }
    
    NSLog(@"%@", displayString);
}

-(PSPlayer *)playerUp
{
    
    PSPlayer *nextPlayerUp = self.players[1-([self.players indexOfObjectIdenticalTo:self.oldPlayerUp])];
    PSPlayer *previousPlayerUp = self.oldPlayerUp;
    self.oldPlayerUp = nextPlayerUp;
    return previousPlayerUp;
}

@end
