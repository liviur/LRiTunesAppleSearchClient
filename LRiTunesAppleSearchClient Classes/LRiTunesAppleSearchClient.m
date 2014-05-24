//
//  LRiTunesAppleSearchClient.m
//  LRiTunesAppleSearchClient
//
//  Created by Liviu Romascanu on 5/22/14.
//  Copyright (c) 2014 Liviu Romascanu. All rights reserved.
//

#import "LRiTunesAppleSearchClient.h"
#import <AFNetworking/AFNetworking.h>
#import "LRAppleSearchResultItem.h"

NSString * const kAppleSearchAPIURLString = @"https://itunes.apple.com/search?";

@implementation LRiTunesAppleSearchClient

- (void)searchWithTerm:(NSString *)term withCompletionHandler:(void (^)(NSArray *results))completion
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    [manager GET:[NSString stringWithFormat:@"%@term=%@",kAppleSearchAPIURLString , [term stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]
      parameters:nil
         success:^(AFHTTPRequestOperation *operation, id responseObject) {
             NSMutableArray *results = [[NSMutableArray alloc] init];
             NSArray *responseArray = [responseObject objectForKey:@"results"];
             for (NSDictionary *dict in responseArray)
             {
                 LRAppleSearchResultItem *item = [[LRAppleSearchResultItem alloc] initWithDictionary:dict];
                 [results addObject:item];
             }
             completion(results);
             
         } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             completion(nil);
         }];
}

@end
