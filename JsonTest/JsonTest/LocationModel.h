//
//  LocationModel.h
//  JsonTest
//
//  Created by Corey Flynn on 2/5/13.
//  Copyright (c) 2013 Corey Flynn. All rights reserved.
//

#import "JSONModel.h"

@interface LocationModel : JSONModel
    @property (strong, nonatomic) NSString* country_code;
    @property (strong, nonatomic) NSString* country;

@end
