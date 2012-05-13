//
//  OperationGlory6ViewController.h
//  OperationGlory6
//
//  Created by Kyle Luchinski on 9/6/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kname 0
#define ksport 1
#define khow 2

@interface PWNCityFreeViewController : UIViewController 
<UIPickerViewDelegate, UIPickerViewDataSource> 
{
	
	UIPickerView	*triplePicker;
	NSArray			*names;
	NSArray			*sports;
	NSArray			*how;
	
}

@property (nonatomic, retain) IBOutlet UIPickerView *triplePicker;
@property (nonatomic, retain) NSArray *names;
@property (nonatomic, retain) NSArray *sports;
@property (nonatomic, retain) NSArray *how;
-(IBAction)buttonPressed;
-(IBAction)spin;

@end

