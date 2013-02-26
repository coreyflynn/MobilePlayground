//
//  ViewController.h
//  Quiz
//
//  Created by Corey Flynn on 2/24/13.
//  Copyright (c) 2013 Corey Flynn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int currentQuestionIndex;
    
    //    the model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    //    the view objects
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}

-(IBAction)showQuestion:(id)sender;
-(IBAction)showAnswer:(id)sender;

@end
