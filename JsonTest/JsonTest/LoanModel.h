//
//  LoanModel.h
//  JsonTest
//
//  Created by Corey Flynn on 2/5/13.
//  Copyright (c) 2013 Corey Flynn. All rights reserved.
//

#import "JSONModel.h"
#import "LocationModel.h"

@protocol
    LoanModel
@end

@interface LoanModel : JSONModel

    @property (strong, nonatomic) NSString* name;
    @property (strong, nonatomic) NSString* status;
    @property (strong, nonatomic) NSString* use;
    @property (strong, nonatomic) LocationModel* location;

@end


