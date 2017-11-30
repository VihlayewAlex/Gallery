//
//  GalleryWindowController.m
//  Gallery
//
//  Created by Alex Vihlayew on 26/11/2017.
//  Copyright © 2017 Alex Vihlayew. All rights reserved.
//

#import "GalleryWindowController.h"

@interface GalleryWindowController ()

@end

@implementation GalleryWindowController

#pragma mark Initialization

- (instancetype)init
{
    NSString* nibName = NSStringFromClass([self class]);
    self = [super initWithWindowNibName:nibName];
    if (self) {
        [[self window] setTitle:@"Gallery"];
        [[self window] setAppearance:[NSAppearance appearanceNamed:NSAppearanceNameVibrantDark]];
    }
    return self;
}

#pragma mark Life cycle

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    ImagesCollectionViewController* imagesCollectionViewController = [[ImagesCollectionViewController alloc] init];
    [[self window] setContentViewController:imagesCollectionViewController];
}

@end
