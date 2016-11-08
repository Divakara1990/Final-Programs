//
//  main.m
//  TicTacToa
//
//  Created by Divakar Y N on 24/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PSBoard.h"
#import "PSPlayer.h"
#import "PSInputHandler.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        // Taking the inputs from user
        NSLog(@"Enter Player 1 Name:");
        NSString *playerOneName = [PSInputHandler getString];
        NSLog(@"Enter Player 2 Name:");
        NSString *playerTwoName = [PSInputHandler getString];
        
        NSLog(@"How many rows and columns will you play with?");
        NSUInteger numberOfRowsAndColumns = [PSInputHandler getInteger];
        
        //Assigning the symbols for the Players one and two (X and O)
        PSPlayer *playerOne = [[PSPlayer alloc] initWithSymbol:PSBoardSymbolX name:playerOneName];
        PSPlayer *playerTwo = [[PSPlayer alloc] initWithSymbol:PSBoardSymbolO name:playerTwoName];
        //Setting the board with the nor of rows and columns which is entered by user with setting all the slots to null
        PSBoard  *board = [[PSBoard alloc] initWithRows:numberOfRowsAndColumns columns:numberOfRowsAndColumns players:@[playerOne, playerTwo]];
        
        do {
            PSPlayer *currentPlayer = [board playerUp];
            BOOL validInputEntered = NO;
            
            //Loop until valid input is entered
            while(!validInputEntered) {
                //Get input coordinates
                NSLog(@"%@, enter a row (1-%lu).", currentPlayer.name, (unsigned long)numberOfRowsAndColumns);
                NSUInteger row = [PSInputHandler getInteger];
                NSLog(@"Now enter a column (1-%lu).", (unsigned long)numberOfRowsAndColumns);
                NSUInteger column = [PSInputHandler getInteger];
                
                //Verify that nothing is already placed there
                PSBoardSymbol symbolOfPlayerAtCoordinates = [board playerAtRow:row-1 column:column-1].symbol;
                
                if((symbolOfPlayerAtCoordinates != PSBoardSymbolX && symbolOfPlayerAtCoordinates != PSBoardSymbolO) &&
                   row > 0 && row <= numberOfRowsAndColumns && column > 0 && column <= numberOfRowsAndColumns) {
                    [board setPlayer:currentPlayer atRow:(row-1) column:(column-1)];
                    validInputEntered = YES;
                }
            }
            
            //Show the board
            [board display];
            
        } while(!board.winner);
        
        NSLog(@"Congrats %@! You won.", [board winner].name);
    
    }
    return 0;
}
