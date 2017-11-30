//
//  ImageCollectionViewItem.m
//  Gallery
//
//  Created by Alex Vihlayew on 28/11/2017.
//  Copyright © 2017 Alex Vihlayew. All rights reserved.
//

#import "ImageCollectionViewItem.h"

@interface ImageCollectionViewItem ()

@property (nonatomic, copy) Image* representedImageObject;

@property (weak) IBOutlet NSImageView *previewImageView;
@property (weak) IBOutlet NSTextField *nameLabel;
@property (weak) IBOutlet NSTextField *pathLabel;

@end

@implementation ImageCollectionViewItem

#pragma mark Synthesizing accessors

@synthesize itemDelegate;
@synthesize representedImageObject;

#pragma mark Lifecycle

- (void)viewWillAppear
{
    [super viewWillAppear];

    [[self previewImageView] setImage:[representedImageObject image]];
    [[self nameLabel] setStringValue:[representedImageObject name]];
    [[self pathLabel] setStringValue:[representedImageObject path]];
}

#pragma mark Handling click events

- (IBAction)click:(NSClickGestureRecognizer *)sender
{
    [itemDelegate didClickImage:representedImageObject];
}

- (IBAction)doubleClick:(NSClickGestureRecognizer *)sender
{
    [itemDelegate didDoubleClickImage:representedImageObject];
}

@end
