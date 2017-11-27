//
//  ImageCollectionViewItem.m
//  Gallery
//
//  Created by Alex Vihlayew on 26/11/2017.
//  Copyright © 2017 Alex Vihlayew. All rights reserved.
//

#import "ImageCollectionViewItem.h"

@interface ImageCollectionViewItem ()

@property (weak) IBOutlet NSImageView *imageView;
@property (weak) IBOutlet NSTextField *pathLabel;
@property (weak) IBOutlet NSTextField *nameLabel;

@end

@implementation ImageCollectionViewItem

#pragma mark Synthesizing accessors

@synthesize image;
@synthesize imageView;
@synthesize pathLabel;
@synthesize nameLabel;
@synthesize delegate;

#pragma mark Life cycle

- (void)viewWillAppear
{
    [super viewWillAppear];
    [imageView setImage:[image image]];
    [nameLabel setStringValue:[image name]];
    [pathLabel setStringValue:[image path]];
}

#pragma mark Clicks handling

- (IBAction)click:(NSClickGestureRecognizer *)sender
{
    [delegate didClickImage:image];
}

@end
