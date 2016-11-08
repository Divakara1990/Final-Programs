//
//  main.m
//  Anagram
//
//  Created by Divakar Y N on 10/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Anagram.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        //taking Strings From User and storing them in the Char array
         NSLog(@"Enter the First String");
        char str1[40];
        scanf(" %[^\n]s",str1);
        
        NSLog(@"Enter the second String");
        char str2[40];
        scanf(" %[^\n]s",str2);
        
        //Converting those char array into the NSString type
        NSString * String1 = [NSString stringWithCString:str1 encoding:3];
        NSLog(@"First String is : %@ ",String1);
        
        NSString * String2 = [NSString stringWithCString:str2 encoding:3];
        NSLog(@"Second String is : %@ ",String2);

        //Creating the Object of the Anagram Class
        Anagram *anaObj = [[Anagram alloc]init];
        
        //Removing the Spaces of the Strings by invoking the method
        NSString *noSpace1 = [anaObj removeSpace:String1];
        NSString *noSpace2 = [anaObj removeSpace:String2];
        
//        NSLog(@"First String without Space is : %@",noSpace1);
//        NSLog(@"Second String without Space is : %@",noSpace2);
        
        //Converting the Strings into UpperCase
        //NSString *upper;
        [anaObj toUpper:noSpace1];
        //NSString *upperSub;
        [anaObj toUpper:noSpace2];

//        NSLog(@"First string in UpperCase is : %@",upper);
//        NSLog(@"Second string in UpperCase is : %@",upperSub);
        
        //convert uppercase strings into Char Array
        NSMutableArray *arr1 = [anaObj createCharArray:noSpace1];
        NSMutableArray *arr1Sub = [anaObj createCharArray:noSpace2];
        
        //sorting the character array
        NSArray *sortedArray = [anaObj sort:arr1];
        NSArray *sortedArraySub = [anaObj sort:arr1Sub];
        
        //After sorting converting it to the String
        NSString *finalString = [anaObj convertTOString:sortedArray];
        NSString *finalSubString = [anaObj convertTOString:sortedArraySub];
        
        //checking the strings are equal or not
        if ([finalString isEqualToString:finalSubString])
        {
            NSLog(@"Its an ANAGRAM");
        
        }
        else
        {
            NSLog(@"Its not an ANAGRAM");
        }
    return 0;
    }
}