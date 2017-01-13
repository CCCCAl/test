//
//  SplashViewController.h
//  SplashDemo
//
//  Created by babyfish0226 on 2009/3/23.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SplashDemoViewController.h"


@interface SplashViewController : UIViewController {
	NSTimer *timer;
	UIImageView *splashImageView;
	
	SplashDemoViewController *viewController;
}
//FSAFSAFSD

@property (nonatomic,retain) NSTimer *timer;
@property (nonatomic,retain) UIImageView *splashImageView;
@property (nonatomic,retain) SplashDemoViewController *viewController;

@end
