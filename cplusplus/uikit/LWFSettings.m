//
//  LWFViewController.m
//  lwf
//
//  Created by Watanabe Toshinori on 2014/01/09.
//  Copyright (c) 2014 Watanabe Toshinori. All rights reserved.
//
#import "LWFSettings.h"

@interface LWFSettings ()
@property (retain, nonatomic) NSMutableDictionary *mutableImageMap;
@end

@implementation LWFSettings

#pragma mark - Getting the shared instance

+ (instancetype)sharedSettings
{
    static dispatch_once_t onceToken;
    static LWFSettings *sharedSettings = nil;
    dispatch_once(&onceToken, ^{
        sharedSettings = [LWFSettings new];
    });
    
    return sharedSettings;
}


#pragma mark - Initializing a Class

- (id)init
{
    self = [super init];
    if (self) {
        self.mutableImageMap = @{}.mutableCopy;
    }
    return self;
}


#pragma mark - Image map

- (NSDictionary *)imageMap
{
    return self.mutableImageMap;
}

- (void)addImageMapWithTextureName:(NSString *)textureName replaceFilePath:(NSString *)filePath
{
    self.mutableImageMap[textureName] = filePath;
}

- (void)removeImageMapWithTextureName:(NSString *)textureName
{
    [self.mutableImageMap removeObjectForKey:textureName];
}

- (void)resetImageMap
{
    [self.mutableImageMap removeAllObjects];
}

@end
