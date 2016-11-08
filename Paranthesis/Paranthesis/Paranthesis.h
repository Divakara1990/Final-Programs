//
//  Paranthesis.h
//  Paranthesis
//
//  Created by Divakar Y N on 22/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Paranthesis : NSObject

-(id)init;
-(void)push:(char)charac;
-(char)pop;
-(char)peek;
-(BOOL)isEmpty;
-(int)size;

@end
