//
//  SigInfoFeed.h
//  JsonTest
//
//  Created by Corey Flynn on 2/5/13.
//  Copyright (c) 2013 Corey Flynn. All rights reserved.
//

#import "JSONModel.h"
#import "PertDescModel.h"

@interface SigInfoFeed : JSONModel
    @property (strong, nonatomic) NSArray* sigs;

@end
