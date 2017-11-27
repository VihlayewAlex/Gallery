//
//  ImageCollectionViewItem.h
//  Gallery
//
//  Created by Alex Vihlayew on 26/11/2017.
//  Copyright © 2017 Alex Vihlayew. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ImageCollectionViewItemDelegate.h"
#import "Image.h"

@interface ImageCollectionViewItem : NSCollectionViewItem

@property (strong, nonatomic) Image* image;
@property (weak, nonatomic) id<ImageCollectionViewItemDelegate> delegate;

@end
