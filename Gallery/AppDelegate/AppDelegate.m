//
//  AppDelegate.m
//  Gallery
//
//  Created by Alex Vihlayew on 26/11/2017.
//  Copyright © 2017 Alex Vihlayew. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong, nonatomic) GalleryWindowController* galleryWindowController;

@end

@implementation AppDelegate

#pragma mark Synthesizing accessors

@synthesize galleryWindowController;

#pragma mark Application delegate methods

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [self setupWindows];
    NSLog(@"Application did finish launching");
}

- (void)setupWindows
{
    galleryWindowController = [[GalleryWindowController alloc] init];
    [galleryWindowController showWindow:nil];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification
{
    // Insert code here to tear down your application
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender
{
    return YES;
}

- (void)application:(NSApplication *)sender openFiles:(NSArray<NSString *> *)filenames
{
    NSLog(@"Will open images: %@", filenames);
    [[ImageManager shared] loadImages:filenames];
    [sender replyToOpenOrPrint:NSApplicationDelegateReplySuccess];
}

@end
