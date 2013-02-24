//
//  DetailViewController.h
//  JsonTest
//
//  Created by Corey Flynn on 2/5/13.
//  Copyright (c) 2013 Corey Flynn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
