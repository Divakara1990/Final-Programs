//
//  main.m
//  CashCounter
//
//  Created by Divakar Y N on 20/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"
#import "Queue.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int cash_balance = 0;
        Queue *obj1=[[Queue alloc]init];
        BOOL var=true;
        int amount,value;
        while(var)
        {
            NSLog(@"enter the \n1 to deposit,\n2 to witdraw,\n0 to exit");
            scanf("%d",&value);
            
            
            switch (value) {
                case 0:
                    NSLog(@"no transactions made");
                    var = false;
                    break;
                    
                case 1:
                    
                    NSLog(@"enter the amount ");
                    scanf("%d",&amount);
                    
                    cash_balance=cash_balance+amount;
                    
                    NSLog(@"cash balance is %d",cash_balance);
                    //checking if some 1 is there in the queue
                    if(![obj1 isempty])
                    {
                        int bal=[obj1 top];
                        
                        if (bal<=cash_balance) {
                            [obj1 remove];
                            NSLog(@"amount of %d removed from queue",bal);
                            cash_balance=cash_balance-bal;
                            NSLog(@"remaining balance is %d",cash_balance);
                        }
                    }
                    break;
                    
                case 2:
                    
                    NSLog(@"enter the amount ");
                    scanf("%d",&amount);
                    
                    if(cash_balance>=amount)
                    {
                        
                        cash_balance=cash_balance-amount;
                        NSLog(@"%d withdrawn",amount);
                    }
                    else
                        // if there is no suficient balance,add to queue
                        [obj1 add:@"withdrawal" amount:amount];
                    break;
                    
                default:
                    var = false;
                    NSLog(@"BYE BYE....HAVE A NICE DAY");
                    break;
                    
            }
        }
   
    }
    return 0;
}
