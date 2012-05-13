//
//  OperationGlory6ViewController.m
//  OperationGlory6
//
//  Created by Kyle Luchinski on 9/6/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "PWNCityFreeViewController.h"

@implementation PWNCityFreeViewController
@synthesize triplePicker;
@synthesize names;
@synthesize sports;
@synthesize how;

-(IBAction)buttonPressed {
	
	NSInteger nameRow = [triplePicker selectedRowInComponent:
						 kname];
	NSInteger sportsRow = [triplePicker selectedRowInComponent:
						   ksport];
	NSInteger howRow = [triplePicker selectedRowInComponent:
						khow];
	
	NSString *snames = [names objectAtIndex:nameRow];
	NSString *ssports = [sports objectAtIndex:sportsRow];
	NSString *show = [how objectAtIndex:howRow];
	
	NSString *message = [[NSString alloc] initWithFormat:
						 @"AHH! Dude called you a(n) %@ %@ %@!!", snames, ssports, show];
	
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:
						  @"SALTY POINT"
													message:message
												   delegate:nil
										  cancelButtonTitle:@"Get 'Em!"
										  otherButtonTitles:nil];
	[alert show];
	[alert release];
	[message release];
}

-(IBAction)spin {
	
	int randomNumber1 =  1 + arc4random() % 22;
	int randomNumber2 =  1 + arc4random() % 32;
	int randomNumber3 =  1 + arc4random() % 30;
	
	[triplePicker selectRow:randomNumber1 inComponent:0 animated:YES];
	[triplePicker reloadComponent:0];
	
	[triplePicker selectRow:randomNumber2 inComponent:1 animated:YES];
	[triplePicker reloadComponent:1];
	
	[triplePicker selectRow:randomNumber3 inComponent:2 animated:YES];
	[triplePicker reloadComponent:2];
	
}


-(void)viewDidLoad {
	
	NSArray *nameArray = [[NSArray alloc] initWithObjects:@"Hairy",@"Misshapen",@"Big",@"Fat",@"Crooked",@"Blubbery",@"Freakish",@"Bloody",@"Bent",@"Grotesque",@"Deformed",@"Ingested",@"Scabbed",@"Scummy",@"Vaginal",@"Wrinkled",@"Dried up",@"Overgrown",@"Squished",@"Inglorious",@"Oblong",@"Girthy", nil];
	self.names = nameArray;
	[nameArray release];
	
	NSArray *sportArray = [[NSArray alloc] initWithObjects:@"Fungus",@"Dwarf",@"Turd",@"Weenis",@"Donkey",@"Garbage",@"Scum",@"Dung",@"Girth",@"Rhino",@"Zombie",@"Boner",@"Toilet",@"Beltch",@"Sphincter",@"Pimple",@"Butter",@"Chode",@"Barf",@"Sheep",@"Lard",@"Vomit",@"Shart",@"Nazi",@"Beaver",@"Gooch",@"Spam",@"Groin",@"Arse",@"Fart",@"Poop",@"Rectal", nil];
	self.sports = sportArray;
	[sportArray release];
	
	NSArray *howArray = [[NSArray alloc] initWithObjects:@"Wanker",@"Wart",@"Lover",@"Growth",@"Poker",@"Cleaver",@"Farmer",@"Mangina",@"Drinker",@"Kisser",@"Rider",@"Head",@"Secretion",@"Nazi",@"Squeezer",@"Queef",@"Bubble",@"Scum",@"Melon",@"Face",@"Humper",@"Biter",@"Waffle",@"Hunter",@"Smoker",@"Bender",@"Biscuit",@"Head",@"Licker",@"Microphallus", nil];
	self.how = howArray;
	[howArray release];
}



/*
 // The designated initializer. Override to perform setup that is required before the view is loaded.
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
 // Custom initialization
 }
 return self;
 }
 */

/*
 // Implement loadView to create a view hierarchy programmatically, without using a nib.
 - (void)loadView {
 }
 */


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
	self.triplePicker = nil;
	self.names = nil;
	self.sports = nil;
	self.how = nil;
	[super viewDidUnload];
}


- (void)dealloc {
	[triplePicker release];
	[names release];
	[sports release];
	[how release];
    [super dealloc];
}

#pragma mark - 
#pragma mark Picker Data Source Methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView 
{
	return 3;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView 
numberOfRowsInComponent:(NSInteger)component 
{
	if (component == kname)
		return [self.names count];
	if(component == ksport)
		return [self.sports count];
	return [self.how count];
}

#pragma mark Picker Delegate Methods
-(NSString *)pickerView:(UIPickerView *)pickerView 

			titleForRow:(NSInteger)row
		   forComponent:(NSInteger)component 
{
	
	if (component == kname)
		return [self.names objectAtIndex:row];
	if (component == ksport)
		return [self.sports objectAtIndex:row];
	return [self.how objectAtIndex:row];
	
	
}


@end
