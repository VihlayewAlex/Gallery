//
//  ImageCollectionViewItemDelegate.h
//  Gallery
//
//  Created by Alex Vihlayew on 27/11/2017.
//  Copyright © 2017 Alex Vihlayew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Image.h"

@protocol ImageCollectionViewItemDelegate <NSObject>

- (void)didClickImage:(Image*)clickedImage;

@end
