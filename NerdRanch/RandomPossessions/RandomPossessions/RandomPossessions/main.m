//
//  main.m
//  RandomPossessions
//
//  Created by Corey Flynn on 3/6/13.
//  Copyright (c) 2013 Corey Flynn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        for (int i = 0; i < 10; i++) {
               BNRItem *p = [BNRItem randomItem];
               [items addObject:p];
           }

        for (int i = 0; i < [items count]; i++) {
               NSLog(@"%@", [items objectAtIndex:i]);
           }
        
        
    }
    return 0;
}


