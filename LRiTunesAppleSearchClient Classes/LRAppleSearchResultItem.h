//
//  LRAppleSearchResultItem.h
//  LRiTunesAppleSearchClient
//
//  Created by Liviu Romascanu on 5/24/14.
//  Copyright (c) 2014 Liviu Romascanu. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, LRAppleSearchResultWrapperType) {
    LRAppleSearchResultWrapperTypeTrack,
    LRAppleSearchResultWrapperTypeCollection,
    LRAppleSearchResultWrapperTypeArtist
};

typedef NS_ENUM(NSUInteger, LRAppleSearchResultExplicitness) {
    LRAppleSearchResultExplicitnessExplicit,
    LRAppleSearchResultExplicitnessCleanedUp,
    LRAppleSearchResultExplicitnessNonExplicit,
};

typedef NS_ENUM(NSUInteger, LRAppleSearchResultKind) {
    LRAppleSearchResultKindBook,
    LRAppleSearchResultKindAlbum,
    LRAppleSearchResultKindCoachedAudio,
    LRAppleSearchResultKindFeatureMovie,
    LRAppleSearchResultKindInteractiveBooklet,
    LRAppleSearchResultKindMusicVideo,
    LRAppleSearchResultKindPdf,
    LRAppleSearchResultKindPodcast,
    LRAppleSearchResultKindPodcastEpisode,
    LRAppleSearchResultKindSoftwarePackage,
    LRAppleSearchResultKindSong,
    LRAppleSearchResultKindTvEpisode,
    LRAppleSearchResultKindArtist
};

@interface LRAppleSearchResultItem : NSObject
@property (nonatomic, strong) NSDictionary *modelDictionary;

@property (nonatomic, readonly, assign) LRAppleSearchResultWrapperType wrapperType;
@property (nonatomic, readonly, assign) LRAppleSearchResultExplicitness explicitness;
@property (nonatomic, readonly, assign) LRAppleSearchResultKind kind;

- (void)initWithDictionary:(NSDictionary *)dictionary;
@end
