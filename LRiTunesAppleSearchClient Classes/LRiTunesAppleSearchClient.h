//
//  LRiTunesAppleSearchClient.h
//  LRiTunesAppleSearchClient
//
//  Created by Liviu Romascanu on 5/22/14.
//  Copyright (c) 2014 Liviu Romascanu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LRiTunesAppleSearchClient : NSObject

- (void)searchWithTerm:(NSString *)term withCompletionHandler:(void (^)(NSArray *results))completion;
@end
