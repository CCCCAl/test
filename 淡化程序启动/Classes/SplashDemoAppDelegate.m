//
//  SplashDemoAppDelegate.m
//  SplashDemo
//
//  Created by babyfish0226 on 2009/3/23.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "SplashDemoAppDelegate.h"
#import "SplashDemoViewController.h"

@implementation SplashDemoAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
	viewController=[[SplashViewController alloc] init];
	
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
    //nfdsfns,mdafas
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
