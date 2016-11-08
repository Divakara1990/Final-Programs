//
//  main.m
//  VendingMachine
//
//  Created by Divakar Y N on 14/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

void vendingMachine(int amount,int i)
{
    //taking different notes in array
    int arr[]={1000,500,100,50,20,10,5,2,1};
    static int count;
    
    if(i>8)
    {
        printf("Total Notes : %d\n",count);
        return;
    }
    
    //getting number of notes
    int numNote=amount/arr[i];
    
    if(numNote >= 1 )
    {
        count+=numNote;
        amount-=(numNote*arr[i]);
        printf("\t%i\t%i\n",numNote,arr[i]);
        
        //recursively call for function
        vendingMachine(amount, i+1);
    }
    else
    {
        //recursively call for function
        vendingMachine(amount, i+1);
    }
}


int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        printf("-----Vending Machine-----\n");
        
        //taking input as a amount
        printf("Enter the Amount : ");
        int amount;
        scanf("%d",&amount);
                
        //calling method
        vendingMachine(amount, 0);
                
    }
    return 0;
}
