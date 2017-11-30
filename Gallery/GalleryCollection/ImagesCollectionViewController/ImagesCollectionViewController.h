//
//  ImagesCollectionViewController.h
//  Gallery
//
//  Created by Alex Vihlayew on 26/11/2017.
//  Copyright © 2017 Alex Vihlayew. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ImageCollectionViewItem.h"
#import "Image.h"
#import "ImageManager.h"

@interface ImagesCollectionViewController : NSViewController <NSCollectionViewDelegate, NSCollectionViewDataSource, ImageCollectionViewItemDelegate>


@end
