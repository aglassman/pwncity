//
//  PropsViewController.m
//  PWNCityFree
//
//  Created by Kyle Luchinski on 9/21/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "PropsViewController.h"


@implementation PropsViewController

@synthesize uiView;
@synthesize settingLabel;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	
	[settingLabel setText: @"PG"];
    [super viewDidLoad];
}


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
    [uiView release];
	
	[super dealloc];
}

-(IBAction)setToPG {
    [settingLabel setText: @"PG"];
}
-(IBAction)setToPG13 {
     [settingLabel setText: @"PG-13"];
}
-(IBAction)setToR {
     [settingLabel setText: @"R"];
}
-(IBAction)setToCustom {
     [settingLabel setText: @"Custom"];
}

@end
