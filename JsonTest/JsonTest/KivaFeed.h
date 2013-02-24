//
//  KivaFeed.h
//  JsonTest
//
//  Created by Corey Flynn on 2/5/13.
//  Copyright (c) 2013 Corey Flynn. All rights reserved.
//

#import "JSONModel.h"
#import "LoanModel.h"

@interface KivaFeed : JSONModel

    @property (strong, nonatomic) NSArray<LoanModel>* loans;

@end
