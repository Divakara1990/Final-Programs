//
//  InventryFactory.h
//  InventryExtended
//
//  Created by Divakar Y N on 18/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InventryFactory : NSObject

-(void) factoryObjectForRice:(id)data;
-(void) factoryObjectForWheat:(id)data;
-(void) factoryObjectForPulses:(id)data;

@end
