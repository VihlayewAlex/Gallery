//
//  Image.h
//  Gallery
//
//  Created by Alex Vihlayew on 27/11/2017.
//  Copyright © 2017 Alex Vihlayew. All rights reserved.
//

#import <AppKit/AppKit.h>

@interface Image : NSObject <NSCopying>

@property (strong, nonatomic) NSImage* image;
@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* path;

- (instancetype)initWithImage:(NSImage*)image name:(NSString*)name path:(NSString*)path;

@end
