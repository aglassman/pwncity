//
//  PWNCityFreeAppDelegate.h
//  PWNCityFree
//
//  Created by Kyle Luchinski on 9/21/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PWNCityFreeViewController;

@interface PWNCityFreeAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	
	UIViewController *viewController;
	UITabBarController *rootController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *rootController;
@property (nonatomic, retain) IBOutlet UIViewController *viewController;

@end

