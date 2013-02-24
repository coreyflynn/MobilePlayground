//
//  MasterViewController.m
//  JsonTest
//
//  Created by Corey Flynn on 2/5/13.
//  Copyright (c) 2013 Corey Flynn. All rights reserved.
//

#import "MasterViewController.h"
#import "JSONModelLib.h"
#import "KivaFeed.h"
#import "SigInfoFeed.h"
#import "PertDescModel.h"
#import "HUD.h"


@interface MasterViewController (){
    SigInfoFeed* _feed;
    NSArray* jsonArray;
}
@end

@implementation MasterViewController
-(void) viewDidAppear:(BOOL)animated{
    //    show loader view
    [HUD showUIBlockingIndicatorWithText:@"fetching JSON"];
    

//
//    //    fetch the feed 2.0
//        NSData* sig_info_data = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://www.cmapcloud.org/api/geneinfo?q={\"pr_gene_symbol\":\"TP53\"}"]];
////        NSError* error;
////        NSArray* sig_info_array = [NSJSONSerialization JSONObjectWithData:sig_info_data options:kNilOptions error:&error];
//    //        hide the loader view
//        [HUD hideUIBlockingIndicator];
//        
//    //    json fetched
//        NSLog(@"sigs: %@", _feed);
//        NSLog(@"sigs: %@", sig_info_data);

    NSString *url=@"http://www.cmapcloud.org/api/geneinfo?q={}";
    
    NSURLRequest *theRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    
    NSURLResponse *resp = nil;
    NSError *err = nil;
    

    
    NSString* query = @"{\"pert_desc\":\"AKT1\",\"cell_id\":\"MCF7\"}";
    NSString * encoded_query = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(
                                                                                      NULL,
                                                                                      (CFStringRef)query,
                                                                                      NULL,
                                                                                      (CFStringRef)@"!*'();:@&=+$,/?%#[]",
                                                                                      kCFStringEncodingUTF8 ));
    NSString *str = [NSString stringWithFormat: @"http://www.cmapcloud.org/api/siginfo?q=%@",encoded_query];
    NSURL *url2 = [[NSURL alloc] initWithString:str];
    NSData* sig_info_data = [NSData dataWithContentsOfURL:url2];
    //    fetch the feed
//    _feed = [[SigInfoFeed alloc] initFromURLWithString:@"http://www.cmapcloud.org/api/siginfo?q={'pert_desc':'sirolimus','cell_id':'MCF7'}" completion:^(JSONModel *model, JSONModelError *err) {
//            //hide the loader view
//            [HUD hideUIBlockingIndicator];
//            
//            //json fetched
//            NSLog(@"loans: %@", _feed);
//            
//        }];

    
//    NSString * theString = [[NSString alloc] initWithData:sig_info_data encoding:NSUTF8StringEncoding];
//    NSLog(@"response: %@", theString);
    
    jsonArray = [NSJSONSerialization JSONObjectWithData: sig_info_data options: NSJSONReadingMutableContainers error: &err];
    //hide the loader view
    [HUD hideUIBlockingIndicator];
    NSLog(@"%@", jsonArray);
    
//    if (!jsonArray) {
//        NSLog(@"Error parsing JSON: %@", err);
//    } else {
//        for(NSDictionary *item in jsonArray) {
//            NSLog(@" %@", item);
//            NSLog(@"---------------------------------");
//        }
//    }
    
    //  reload the table
        [self.tableView reloadData];
    
        
}

#pragma mark - table methods
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return jsonArray.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary* sig = jsonArray[indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"%@",
                           [sig valueForKey:@"pert_id"]
                           ];
    return cell;
}
@end