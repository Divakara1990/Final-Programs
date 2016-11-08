//
//  main.m
//  JsonFile
//
//  Created by Divakar Y N on 17/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        //get all document in NSData from json file
        NSData *data = [[NSData alloc] initWithContentsOfFile: @"/Users/bridgelabz/Desktop/divakar/div/Programming-Project/Programming-Project/jsonExample.json"];
        
        //error
        NSError *error;
        
        //transform NSData object into Dictionary
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
        else
        {
            //asking user to choose the item
            NSLog(@"Enter 1. to check rice \n 2. to check wheat \n 3. to check pulses");
            int num;
            scanf("%d",&num);
            if (num == 1)
            {
                //storing into dictionary which is taken from JSON dictionary
                NSLog(@"**************** Details of RICE ****************");
                NSDictionary *inventory = dictionary[@"rice"];
                NSLog(@"Inventry value is : %@",inventory);
                
                // to display we must convert dictionary type to the NSEnumerator type
                NSEnumerator *enumerator = [inventory keyEnumerator];
                id key;
                
                // extra parens to suppress warning about using = instead of ==
                while((key = [enumerator nextObject]))
                    NSLog(@"key=%@ value=%@", key, [inventory objectForKey:key]);
            }
            else if (num == 2)
            {
                 NSLog(@"**************** Details of WHEAT ****************");
                NSDictionary *inventory = dictionary[@"wheat"];
                NSLog(@"Inventry value is : %@",inventory);
                
                NSEnumerator *enumerator = [inventory keyEnumerator];
                id key;
                // extra parens to suppress warning about using = instead of ==
                while((key = [enumerator nextObject]))
                    NSLog(@"key=%@ value=%@", key, [inventory objectForKey:key]);
            }
            else
            {
                 NSLog(@"**************** Details of PULSES ****************");
                NSDictionary *inventory = dictionary[@"pulses"];
                NSLog(@"Inventry value is : %@",inventory);
                
                NSEnumerator *enumerator = [inventory keyEnumerator];
                id key;
                // extra parens to suppress warning about using = instead of ==
                while((key = [enumerator nextObject]))
                    NSLog(@"key=%@ value=%@", key, [inventory objectForKey:key]);
            }
            

            
        }
        
    }
    return 0;
}
