//
//  MongoTestAppDelegate.h
//  MongoTest
//
//  Created by Corey Flynn on 1/19/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MongoTestViewController;

@interface MongoTestAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet MongoTestViewController *viewController;

@end
