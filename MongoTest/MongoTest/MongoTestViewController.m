//
//  MongoTestViewController.m
//  MongoTest
//
//  Created by Corey Flynn on 1/19/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "MongoTestViewController.h"



@implementation MongoTestViewController

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


-(void)viewDidLoad
{
    [super viewDidLoad];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        NSData* data = [NSData dataWithContentsOfURL: 
          @"http://www.cmapcloud.org/api/siginfo?q={%22pert_desc%22:%22sirolimus%22,%22cell_id%22:%22MCF7%22}"];
        [self performSelectorOnMainThread:@selector(fetchedData:) 
          withObject:data waitUntilDone:YES];
    });
}

- (void)fetchedData:(NSData *)responseData {
    //parse out the json data
    NSError* error;
    NSArray* json = [NSJSONSerialization 
        JSONObjectWithData:responseData
 
        options:kNilOptions 
        error:&error];
 
    NSLog(@"loans: %@", json);
}

@end
