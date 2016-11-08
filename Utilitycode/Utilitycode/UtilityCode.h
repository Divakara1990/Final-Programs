//
//  UtilityCode.h
//  Utilitycode
//
//  Created by BridgeLabz on 24/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UtilityCode : NSObject

-(NSMutableArray *)importStringData;
-(NSMutableArray *)importIntegerData;

-(NSMutableArray *)doSort:(NSMutableArray *)ary;

-(void)doBinarySearchString:(NSMutableArray *)ary1 wordToBeSearched:(NSString *)word;
-(void)doBinarySearchInteger:(NSMutableArray *)ary2 noToBeSearched:(int)num;

-(NSMutableArray *)bubbleSortInteger:(NSMutableArray *)ary3;
-(NSMutableArray *)bubbleSortString:(NSMutableArray *)ary4;

-(NSMutableArray *)insertionSortInteger:(NSMutableArray *)ary5;
-(NSMutableArray *)insertionSortString:(NSMutableArray *)ary6;

-(NSDate *)startTimer;
-(float)stopTimer;

-(NSMutableArray *)sort:(NSMutableArray *)ary7;

@end
