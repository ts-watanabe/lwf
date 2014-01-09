//
//  LWFViewController.h
//  lwf
//
//  Created by Watanabe Toshinori on 2014/01/09.
//  Copyright (c) 2014 Watanabe Toshinori. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface LWFSettings : NSObject

///-------------------------------
/// @name  Getting the shared instance
///-------------------------------

/**
 Returns the singleton settings.
 */
+ (instancetype)sharedSettings;

///-------------------------------
/// @name  Image map
///-------------------------------

/**
 The image mapping data.
 */
@property (nonatomic, readonly) NSDictionary *imageMap;

/**
 Add a new mapping.
 */
- (void)addImageMapWithTextureName:(NSString *)textureName replaceFilePath:(NSString *)filePath;

/**
 Remove a specified mapping.
 */
- (void)removeImageMapWithTextureName:(NSString *)textureName;

/**
 Remove all mappings.
 */
- (void)resetImageMap;

@end
