//
//  main.m
//  Unordered LinkedList
//
//  Created by Divakar Y N on 10/18/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UnorderedLinkedList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSData *path = [NSData dataWithContentsOfFile:@"/Users/bridgelabz/Desktop/divakar/div/34.txt"];
        NSString *lines = [[NSString alloc]initWithBytes:[path bytes] length:[path length] encoding:NSUTF8StringEncoding];
        
        NSString *delimiter = @" ";
        NSString *delimiter2 =@" ";
        
        NSArray *arr = [lines componentsSeparatedByString:delimiter];
        NSArray *tempArray = [[NSArray alloc]init];
        
        for (int k=0; k<[arr count]; k++)
        {
            NSArray *ary = [[arr objectAtIndex:k] componentsSeparatedByString:delimiter2];
            tempArray = [tempArray arrayByAddingObjectsFromArray:ary];
        }
        
        NSMutableArray *array = [NSMutableArray arrayWithArray:tempArray];

        UnorderedLinkedList *list = [[UnorderedLinkedList alloc]init];
        
        for (int i=0; i<[array count]; i++)
        {
            NSString *data = [array objectAtIndex:i];
            [list InsertWord:data];
        }
        NSLog(@"Before inserting or Deleting the word which is passed from the user");
        [list display];
        
        char word[40];
        NSLog(@"Enter the word to be searched");
        scanf("%s",word);
        NSString *wrd = [NSString stringWithUTF8String:word];
        
        if ([list search:wrd])
        {
            NSLog(@"Entered word found, hence removing from the list");
            [list remove:wrd];
            NSLog(@"enter 1 to check the entered word is removed or not");
            int num;
            scanf("%d",&num);
            if (num == 1)
            {
                NSLog(@"After the Entered word is removed");
                [list display];
            }

        }
        else
        {
            NSLog(@"Word not found");
            
            [list InsertWord:wrd];
            NSLog(@"enter 1 to check the entered new value is inserted or not");
            int num;
            scanf("%d",&num);
            if (num == 1)
            {
                NSLog(@"After the Entered word is Inserted");
                [list display];
            }

        }
    }
    return 0;
}
