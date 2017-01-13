//
//  SplashDemoAppDelegate.h
//  SplashDemo
//
//  Created by babyfish0226 on 2009/3/23.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SplashViewController.h"

@class SplashDemoViewController;

@interface SplashDemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
   	SplashViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic,retain) IBOutlet SplashViewController *viewController;

@end

