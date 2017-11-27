//
//  Image.m
//  Gallery
//
//  Created by Alex Vihlayew on 27/11/2017.
//  Copyright © 2017 Alex Vihlayew. All rights reserved.
//

#import "Image.h"

@implementation Image

@synthesize image;
@synthesize name;
@synthesize path;

- (instancetype)initWithImage:(NSImage*)image name:(NSString*)name path:(NSString*)path
{
    self = [super init];
    if (self) {
        [self setImage:image];
        [self setName:name];
        [self setPath:path];
    }
    return self;
}

- (void)save
{
    
}

- (void)delete
{
    
}

@end
