//
//  ImagesCollectionViewController.m
//  Gallery
//
//  Created by Alex Vihlayew on 26/11/2017.
//  Copyright © 2017 Alex Vihlayew. All rights reserved.
//

#import "ImagesCollectionViewController.h"

@interface ImagesCollectionViewController ()

@property (weak) IBOutlet NSCollectionView *imagesCollectionView;
@property (weak) IBOutlet NSPathControl *pathControl;

@end

@implementation ImagesCollectionViewController

#pragma mark Synthesizing accessors

@synthesize imagesCollectionView;
@synthesize pathControl;

#pragma mark Life cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupCollectionView];
    [self setupNotifications];
}

#pragma mark UI configuration

- (void)setupCollectionView
{
    NSCollectionViewFlowLayout* layout = [[NSCollectionViewFlowLayout alloc] init];
    [layout setItemSize:NSMakeSize(160.0, 140.0)];
    [layout setSectionInset:NSEdgeInsetsMake(10.0, 20.0, 10.0, 20.0)];
    [layout setMinimumInteritemSpacing:20.0];
    [layout setMinimumLineSpacing:20.0];
    [imagesCollectionView setCollectionViewLayout:layout];
    [imagesCollectionView registerNib:[[NSNib alloc] initWithNibNamed:@"ImageCollectionViewItem" bundle:nil] forItemWithIdentifier:@"ImageCollectionViewItem"];
    [imagesCollectionView setDataSource:self];
}

- (void)setupNotifications
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleImageListUpdate) name:@"ImageMangerDidUpdateImageListNotification" object:nil];
}

- (void)handleImageListUpdate
{
    [imagesCollectionView reloadData];
}

#pragma mark NSCollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(NSCollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(NSCollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [[[ImageManager shared] loadedImages] count];
}

- (NSCollectionViewItem*)collectionView:(NSCollectionView *)collectionView itemForRepresentedObjectAtIndexPath:(NSIndexPath *)indexPath
{
    ImageCollectionViewItem* item = (ImageCollectionViewItem*)[collectionView makeItemWithIdentifier:@"ImageCollectionViewItem" forIndexPath:indexPath];
    Image* image = [[[ImageManager shared] loadedImages] objectAtIndex:[indexPath item]];
    // Setting represented image object and delegate
    [item setRepresentedImageObject:image];
    [item setItemDelegate:self];
    return item;
}

#pragma mark ImageCollectionViewItemDelegate

- (void)didClickImage:(Image *)clickedImage
{
    [pathControl setURL:[NSURL URLWithString:[clickedImage path]]];
}

- (void)didDoubleClickImage:(Image *)clickedImage
{
    
}

@end
