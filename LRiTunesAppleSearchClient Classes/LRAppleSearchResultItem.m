//
//  LRAppleSearchResultItem.m
//  LRiTunesAppleSearchClient
//
//  Created by Liviu Romascanu on 5/24/14.
//  Copyright (c) 2014 Liviu Romascanu. All rights reserved.
//

#import "LRAppleSearchResultItem.h"

NSString * const kLRAppleSearchResultWrapperTypeKey = @"wrapperType";
NSString * const kLRAppleSearchResultExplicitnessKey = @"explicitness";
NSString * const kLRAppleSearchResultKindKey = @"kind";
NSString * const kLRAppleSearchResultTrackNameKey = @"trackName";
NSString * const kLRAppleSearchResultArtistNameKey = @"artistName";
NSString * const kLRAppleSearchResultCollectionNameKey = @"collectionName";
NSString * const kLRAppleSearchResultCensodredNameKey = @"censoredName";
NSString * const kLRAppleSearchResultArtworkUrl100Key = @"artworkUrl100";
NSString * const kLRAppleSearchResultArtworkUrl60Key = @"artworkUrl60";
NSString * const kLRAppleSearchResultViewUrlKey = @"viewURL";
NSString * const kLRAppleSearchResultPreviewUrlKey = @"previewUrl";
NSString * const kLRAppleSearchResultTrackTimeMillisKey = @"trackTimeMillis";

@implementation LRAppleSearchResultItem

- (LRAppleSearchResultWrapperType)wrapperType
{
    LRAppleSearchResultWrapperType returnValue = LRAppleSearchResultWrapperTypeUnknown;
    NSString *wrapperTypeString = [self.modelDictionary objectForKey:kLRAppleSearchResultWrapperTypeKey];
    if ([wrapperTypeString isEqualToString:@"track"]) {
        returnValue = LRAppleSearchResultWrapperTypeTrack;
    } else if ([wrapperTypeString isEqualToString:@"collection"]) {
        returnValue = LRAppleSearchResultWrapperTypeCollection;
    } else if ([wrapperTypeString isEqualToString:@"artist"]) {
        returnValue = LRAppleSearchResultWrapperTypeArtist;
    }

    return returnValue;
}

- (LRAppleSearchResultExplicitness)explicitness
{
    LRAppleSearchResultExplicitness returnValue = LRAppleSearchResultExplicitnessUnknown;
    NSString *explicitnessString = [self.modelDictionary objectForKey:kLRAppleSearchResultExplicitnessKey];
    if ([explicitnessString isEqualToString:@"explicit"]) {
        returnValue = LRAppleSearchResultExplicitnessExplicit;
    } else if ([explicitnessString isEqualToString:@"cleanedUp"]) {
        returnValue = LRAppleSearchResultExplicitnessCleanedUp;
    } else if ([explicitnessString isEqualToString:@"nonExplicit"]) {
        returnValue = LRAppleSearchResultExplicitnessNonExplicit;
    }
    
    return returnValue;
}

- (LRAppleSearchResultKind)kind
{
    LRAppleSearchResultKind returnValue = LRAppleSearchResultKindUnknown;
    NSString *kindString = [self.modelDictionary objectForKey:kLRAppleSearchResultKindKey];
    if ([kindString isEqualToString:@"book"]) {
        returnValue = LRAppleSearchResultKindBook;
    } else if ([kindString isEqualToString:@"album"]) {
        returnValue = LRAppleSearchResultKindAlbum;
    } else if ([kindString isEqualToString:@"Coached-audio"]) {
        returnValue = LRAppleSearchResultKindCoachedAudio;
    } else if ([kindString isEqualToString:@"feature-movie"]) {
        returnValue = LRAppleSearchResultKindFeatureMovie;
    } else if ([kindString isEqualToString:@"interactive-booklet"]) {
        returnValue = LRAppleSearchResultKindInteractiveBooklet;
    } else if ([kindString isEqualToString:@"musicVideo"]) {
        returnValue = LRAppleSearchResultKindMusicVideo;
    } else if ([kindString isEqualToString:@"pdf"]) {
        returnValue = LRAppleSearchResultKindPdf;
    } else if ([kindString isEqualToString:@"podcast"]) {
        returnValue = LRAppleSearchResultKindPodcast;
    } else if ([kindString isEqualToString:@"podcast-episode"]) {
        returnValue = LRAppleSearchResultKindPodcastEpisode;
    } else if ([kindString isEqualToString:@"software-package"]) {
        returnValue = LRAppleSearchResultKindSoftwarePackage;
    } else if ([kindString isEqualToString:@"song"]) {
        returnValue = LRAppleSearchResultKindSong;
    } else if ([kindString isEqualToString:@"tv-episode"]) {
        returnValue = LRAppleSearchResultKindTvEpisode;
    } else if ([kindString isEqualToString:@"artist"]) {
        returnValue = LRAppleSearchResultKindArtist;
    }
    
    return returnValue;
}

- (NSString *)trackName
{
    return [self.modelDictionary objectForKey:kLRAppleSearchResultTrackNameKey];
}

- (NSString *)artistName
{
    return [self.modelDictionary objectForKey:kLRAppleSearchResultArtistNameKey];
}

- (NSString *)collectionName
{
    return [self.modelDictionary objectForKey:kLRAppleSearchResultCollectionNameKey];
}

- (NSString *)censoredName
{
    return [self.modelDictionary objectForKey:kLRAppleSearchResultCensodredNameKey];
}

- (NSURL *)artworkUrl100
{
    return [NSURL URLWithString:[self.modelDictionary objectForKey:kLRAppleSearchResultArtworkUrl100Key]];
}

- (NSURL *)artworkUrl60
{
    return [NSURL URLWithString:[self.modelDictionary objectForKey:kLRAppleSearchResultArtworkUrl60Key]];
}

- (NSURL *)viewURL
{
    return [NSURL URLWithString:[self.modelDictionary objectForKey:kLRAppleSearchResultViewUrlKey]];
}

- (NSURL *)previewUrl
{
    return [NSURL URLWithString:[self.modelDictionary objectForKey:kLRAppleSearchResultPreviewUrlKey]];
}

- (NSInteger)trackTimeMillis
{
    return [[self.modelDictionary objectForKey:kLRAppleSearchResultTrackTimeMillisKey] integerValue];
}

- (id)initWithDictionary:(NSDictionary *)dictionary
{
    self = [self init];
    if (self) {
        self.modelDictionary = dictionary;
    }
    
    return self;
}

@end
