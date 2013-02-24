//
//  PertDescModel.h
//  JsonTest
//
//  Created by Corey Flynn on 2/5/13.
//  Copyright (c) 2013 Corey Flynn. All rights reserved.
//

#import "JSONModel.h"

@protocol
    PertDescModel
@end

@interface PertDescModel : JSONModel
    @property (strong,nonatomic) NSString* pert_desc;

@end
