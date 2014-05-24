//
//  LRViewController.h
//  LRiTunesAppleSearchClient
//
//  Created by Liviu Romascanu on 5/22/14.
//  Copyright (c) 2014 Liviu Romascanu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LRViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *searchTextField;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;
@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

- (IBAction)searchButtonClicked:(id)sender;

@end
