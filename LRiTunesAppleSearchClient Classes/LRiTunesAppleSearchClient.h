//
//  LRiTunesAppleSearchClient.h
//  LRiTunesAppleSearchClient
//
//  Created by Liviu Romascanu on 5/22/14.
//  Copyright (c) 2014 Liviu Romascanu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LRiTunesAppleSearchClient : NSObject

/**
 Basic search function by term
 @param term - String describing the term to search
 @param completion - Completion block , in case of success - an NSArray will be returned with LRAppleSearchResultItem objects. In case of failure -  a nil object will be returned
 */
- (void)searchWithTerm:(NSString *)term withCompletionHandler:(void (^)(NSArray *results))completion;
@end
