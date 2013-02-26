//
//  ViewController.m
//  Quiz
//
//  Created by Corey Flynn on 2/24/13.
//  Copyright (c) 2013 Corey Flynn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    // call the init method implimented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // create two arrays and make the pointers point to them
        questions = [[NSMutableArray alloc]init];
        answers = [[NSMutableArray alloc]init];
        
        // add questions and answers to the arrays
        [questions addObject:@"what is 7 + 7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"What is the capital of Vermont?"];
        [answers addObject:@"Montpelier"];
        
        [questions addObject:@"From what is cognac made?"];
        [answers addObject:@"Grapes"];
    }
    
    // return the address of the new object
    return self;
}

-(IBAction)showQuestion:(id)sender {
    // step to the next question
    currentQuestionIndex++;
    
    // Am I past the last question?
    if (currentQuestionIndex == [questions count]) {
        // go back to the first question
        currentQuestionIndex = 0;
    }
    
    // get the string at that index in the question array and display it
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    [questionField setText:question];
    
    //log the string to the console
    NSLog(@"displaying quesion: %@", question);
    
    // clear the answer field
    [answerField setText:@"???"];
}

-(IBAction)showAnswer:(id)sender {
    //what is the answer to the current question
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    //display it in the answer field
    [answerField setText:answer];
}

@end
