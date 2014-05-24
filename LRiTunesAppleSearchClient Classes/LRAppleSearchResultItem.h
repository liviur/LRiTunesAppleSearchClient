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
    LRAppleSearchResultWrapperTypeArtist,
    LRAppleSearchResultWrapperTypeUnknown
};

typedef NS_ENUM(NSUInteger, LRAppleSearchResultExplicitness) {
    LRAppleSearchResultExplicitnessExplicit,
    LRAppleSearchResultExplicitnessCleanedUp,
    LRAppleSearchResultExplicitnessNonExplicit,
    LRAppleSearchResultExplicitnessUnknown
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
    LRAppleSearchResultKindArtist,
    LRAppleSearchResultKindUnknown
};

@interface LRAppleSearchResultItem : NSObject
@property (nonatomic, strong) NSDictionary *modelDictionary;

/**
 The name of the object returned by the search request.
 Possible values: track, collection, artist
 */
@property (nonatomic, readonly, assign) LRAppleSearchResultWrapperType wrapperType;

/**
 The Recording Industry Association of America (RIAA) parental advisory for the content returned by the search request.
 
 For more information, see http://itunes.apple.com/WebObjects/MZStore.woa/wa/parentalAdvisory.
 Possible values: explicit (explicit lyrics, possibly explicit album cover), cleaned (explicit lyrics "bleeped out"), notExplicit (no explicit lyrics)
 */
@property (nonatomic, readonly, assign) LRAppleSearchResultExplicitness explicitness;

/**
 The kind of content returned by the search request.
 Possible values: book, album, coached-audio, feature-movie, interactive- booklet, music-video, pdf podcast, podcast-episode, software-package, song, tv- episode, artist
 */
@property (nonatomic, readonly, assign) LRAppleSearchResultKind kind;

/**
 The name of the track, song, video, TV episode, and so on returned by the search request.
 */
@property (nonatomic, strong, readonly) NSString *trackName;

/**
 The name of the artist returned by the search request.
 */
@property (nonatomic, strong, readonly) NSString *artistName;

/**
 The name of the album, TV season, audiobook, and so on returned by the search request.
 */
@property (nonatomic, strong, readonly) NSString *collectionName;

/**
 The name of the album, TV season, audiobook, and so on returned by the search request, with objectionable words *'d out.
 
 Note: Artist names are never censored.
 */
@property (nonatomic, strong, readonly) NSString *censoredName;

/**
 A URL for the artwork associated with the returned media type, sized to 100x100 pixels.
 Only returned when artwork is available.
 */
@property (nonatomic, strong, readonly) NSURL *artworkUrl100;

/**
 A URL for the artwork associated with the returned media type, sized to 60x60 pixels.
 Only returned when artwork is available.
 */
@property (nonatomic, strong, readonly) NSURL *artworkUrl60;

/**
 A URL for the content associated with the returned media type. You can click the URL to view the content in the iTunes Store.
 */
@property (nonatomic, strong, readonly) NSURL *viewURL;

/**
 A URL referencing the 30-second preview file for the content associated with the returned media type.
 Only returned when media type is track.
 */
@property (nonatomic, strong, readonly) NSURL *previewUrl;

/**
 The returned track's time in milliseconds.
 Only returned when media type is track.
 */
@property (nonatomic, readonly, assign) NSInteger trackTimeMillis;

/**
 Init function that sets the model dictionary
 @param dictionary - set as the self.ModelDictionary
 @return Apple Search Result Item
 */
- (id)initWithDictionary:(NSDictionary *)dictionary;
@end
