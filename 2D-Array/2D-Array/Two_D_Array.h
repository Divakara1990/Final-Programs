//
//  Two_D_Array.h
//  2D-Array
//
//  Created by BridgeLabz on 10/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Two_D_Array : NSObject
{
    int r;
    int c;
}
-(void) setRow:(int)row;
-(void) setCol:(int)col;
-(void) input:(int [5][5]) arr;
-(void) display:(int [5][5]) arr;

@end
