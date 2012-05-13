//
//  PWNCityFreeAppDelegate.m
//  PWNCityFree
//
//  Created by Kyle Luchinski on 9/21/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "PWNCityFreeAppDelegate.h"
#import "PWNCityFreeViewController.h"

@implementation PWNCityFreeAppDelegate

@synthesize window;
@synthesize rootController;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:rootController.view];
	[window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [rootController release];
    [window release];
	[viewController release];
    [super dealloc];
}


@end
