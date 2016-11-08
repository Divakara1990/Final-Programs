//
//  InventryFactory.m
//  InventryExtended
//
//  Created by Divakar Y N on 18/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "InventryFactory.h"

@implementation InventryFactory


-(void) factoryObjectForRice:(id)data
{
    NSError *error;
    //converting the json data to the NSMutableDictionary type
    NSMutableDictionary *dictionary = [NSJSONSerialization
                                       JSONObjectWithData:data
                                       options:NSJSONReadingMutableContainers
                                       error:&error];
    //checking error
    if( error )
    {
        //printing error
        NSLog(@"%@", [error localizedDescription]);
    }
    
    //converting the dictionary type to the enumerator type bcoz it is used to display the objects
    NSDictionary *inventory = dictionary[@"rice"];
    NSEnumerator *enumerator = [inventory keyEnumerator];
    
    id key;
    
    // extra parens to suppress warning about using = instead of ==
    while((key = [enumerator nextObject]))
    {
        if ([key  isEqual: @"price"])
        {
        NSLog(@"key=%@ value=%@", key, [inventory objectForKey:key]);
        }
    }
}

-(void) factoryObjectForWheat:(id)data
{
    NSError *error;
    //converting the json data to the NSMutableDictionary type
    NSMutableDictionary *dictionary = [NSJSONSerialization
                                       JSONObjectWithData:data
                                       options:NSJSONReadingMutableContainers
                                       error:&error];
    //checking error
    if( error )
    {
        //printing error
        NSLog(@"%@", [error localizedDescription]);
    }
    
    //converting the dictionary type to the enumerator type bcoz it is used to display the objects
    NSDictionary *inventory = dictionary[@"wheat"];
    NSEnumerator *enumerator = [inventory keyEnumerator];
    
    id key;
    
    // extra parens to suppress warning about using = instead of ==
    while((key = [enumerator nextObject]))
    {
        if ([key  isEqual: @"price"])
        {
            NSLog(@"key=%@ value=%@", key, [inventory objectForKey:key]);
        }
    }
}

-(void) factoryObjectForPulses:(id)data
{
    NSError *error;
    //converting the json data to the NSMutableDictionary type
    NSMutableDictionary *dictionary = [NSJSONSerialization
                                       JSONObjectWithData:data
                                       options:NSJSONReadingMutableContainers
                                       error:&error];
    //checking error
    if( error )
    {
        //printing error
        NSLog(@"%@", [error localizedDescription]);
    }
    
    //converting the dictionary type to the enumerator type bcoz it is used to display the objects
    NSDictionary *inventory = dictionary[@"pulses"];
    NSEnumerator *enumerator = [inventory keyEnumerator];
    
    id key;
    
    // extra parens to suppress warning about using = instead of ==
    while((key = [enumerator nextObject]))
        if([key isEqualToString:@"price"])
        {
            NSLog(@"key=%@ value=%@", key, [inventory objectForKey:key]);
        }
}
@end
