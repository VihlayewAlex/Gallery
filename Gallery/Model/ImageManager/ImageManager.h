//
//  ImageManager.h
//  Gallery
//
//  Created by Alex Vihlayew on 27/11/2017.
//  Copyright © 2017 Alex Vihlayew. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Image.h"

@interface ImageManager : NSObject

@property (strong, nonatomic) NSMutableArray<Image *>* loadedImages;

+ (id)shared;
- (void)loadImages:(NSArray<NSString *> *)filenames;

@end
