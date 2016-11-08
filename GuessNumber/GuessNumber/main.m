//
//  main.m
//  GuessNumber
//
//  Created by Divakar Y N on 12/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

void findNumber(int lower,int higher )
{
    // number found
    if(lower == higher)
    {
        NSLog(@"Your Number is : %d",lower);
        return ;
    }
    
    //finding middle number
    int middle=(lower+higher)/2;
    
    //displaying choices of two half
    NSLog(@"Press 1 if your Number is between %d - %d ",lower,middle);
    NSLog(@"Press 2 if your Number is between %d - %d ",middle+1,higher);
    
    //taking choice of two half
    int ch;
    printf("Enter your choice : ");
    scanf("%d",&ch);
    
    //if guess number is in first half
    if(ch == 1)
    {
        findNumber(lower, middle);
    }
    
    //if guess number is in second half
    else
    {
        findNumber(middle+1, higher);
    }
}

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        //guess number in 0-99 range
        NSLog(@"Guess Number between 0 - 999");
        
        //calling function
        findNumber(0, 999);
    }
    return 0;
}