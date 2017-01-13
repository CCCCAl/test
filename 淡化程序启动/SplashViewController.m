//
//  SplashViewController.m
//  SplashDemo
//
//  Created by babyfish0226 on 2009/3/23.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "SplashViewController.h"


@implementation SplashViewController

@synthesize timer,splashImageView,viewController;



/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
	CGRect appFrame=[[UIScreen alloc] applicationFrame];
	UIView *view=[[UIView alloc] initWithFrame:appFrame];
	//view.autoresizingMask=UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
	self.view=view;
	[view release];
	
	splashImageView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"splashdemo.jpg"]];
	splashImageView.frame=CGRectMake(0,0,320,480);
	[self.view addSubview:splashImageView];
	
	viewController=[[SplashDemoViewController alloc] initWithNibName:@"SplashDemoViewController" bundle:[NSBundle mainBundle]];
	viewController.view.alpha=0.0;
	[self.view addSubview:viewController.view];
	
	timer=[NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(fadeScreen) userInfo:nil repeats:NO];
}

-(void)fadeScreen{
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.75];
	[UIView setAnimationDelegate:self];
	[UIView setAnimationDidStopSelector:@selector(finishedFading)];
	self.view.alpha=0.0;
	[UIView commitAnimations];


}


-(void)finishedFading{
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.75];
	self.view.alpha=1.0;
	viewController.view.alpha=1.0;
	[UIView commitAnimations];
	[splashImageView removeFromSuperview];

}
	/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [splashImageView release];
    [viewController release];
    [super dealloc];
}


@end
