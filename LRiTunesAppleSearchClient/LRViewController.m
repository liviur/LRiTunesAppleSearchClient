//
//  LRViewController.m
//  LRiTunesAppleSearchClient
//
//  Created by Liviu Romascanu on 5/22/14.
//  Copyright (c) 2014 Liviu Romascanu. All rights reserved.
//

#import "LRViewController.h"
#import "LRiTunesAppleSearchClient.h"

@interface LRViewController ()

@end

@implementation LRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)searchButtonClicked:(id)sender {
    LRiTunesAppleSearchClient *searchClient = [[LRiTunesAppleSearchClient alloc] init];
    [self.activityIndicator startAnimating];
    self.searchButton.enabled = NO;
    self.resultsTextView.text = @"Searching...";
    [self.searchTextField resignFirstResponder];
    
    __weak LRViewController *weakSelf = self;
    [searchClient searchWithTerm:self.searchTextField.text withCompletionHandler:^(NSArray *results) {
        [weakSelf.activityIndicator stopAnimating];
        weakSelf.resultsTextView.text = results.description;
        weakSelf.searchButton.enabled = YES;
    }];
}
@end
