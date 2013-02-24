//
//  MasterViewController.h
//  JsonTest
//
//  Created by Corey Flynn on 2/5/13.
//  Copyright (c) 2013 Corey Flynn. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
