//
//  ImageCollectionViewItem.h
//  Gallery
//
//  Created by Alex Vihlayew on 28/11/2017.
//  Copyright © 2017 Alex Vihlayew. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Image.h"
#import "ImageCollectionViewItemDelegate.h"

@interface ImageCollectionViewItem : NSCollectionViewItem

@property (weak, nonatomic) id<ImageCollectionViewItemDelegate> itemDelegate;

- (void)setRepresentedImageObject:(Image*)image;
//- (void)setItemDelegate:(id<ImageCollectionViewItemDelegate>)delegate;

@end
