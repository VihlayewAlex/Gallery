//
//  ImageManager.m
//  Gallery
//
//  Created by Alex Vihlayew on 27/11/2017.
//  Copyright © 2017 Alex Vihlayew. All rights reserved.
//

#import "ImageManager.h"

@implementation ImageManager

#pragma mark Initialization

+ (id)shared
{
    static ImageManager* sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
        [sharedInstance setLoadedImages:[[NSMutableArray alloc] init]];
    });
    return sharedInstance;
}

#pragma mark Images processing

- (void)loadImages:(NSArray<NSString *> *)filenames
{
    for (NSString* imagePath in filenames) {
        NSImage* image = [[NSImage alloc] initWithContentsOfFile:imagePath];
        NSString* imageName = [[[NSURL alloc] initWithString:imagePath] lastPathComponent];
        Image* imageItem = [[Image alloc] initWithImage:image name:imageName path:imagePath];
        [[self loadedImages] addObject:imageItem];
        [self notifyAboutImageListUpdate];
    }
}

- (void)notifyAboutImageListUpdate
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"ImageMangerDidUpdateImageListNotification" object:nil];
}

@end
