//
//  OperationGlory6ViewController.h
//  OperationGlory6
//
//  Created by Kyle Luchinski on 9/6/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iAd/ADBannerView.h"

#define kname 0
#define ksport 1
#define khow 2

@interface PWNCityFreeViewController : UIViewController 
<UIPickerViewDelegate, UIPickerViewDataSource, UISplitViewControllerDelegate, ADBannerViewDelegate>
{
	
	UIPickerView	*triplePicker;
	NSArray			*names;
	NSArray			*sports;
	NSArray			*how;
    UIView          *_contentView;
    id              _adBannerView;
    BOOL            _adBannerViewIsVisible;
	
}

@property (nonatomic, retain) IBOutlet UIPickerView *triplePicker;
@property (nonatomic, retain) NSArray *names;
@property (nonatomic, retain) NSArray *sports;
@property (nonatomic, retain) NSArray *how;
@property (nonatomic, retain) IBOutlet UIView *contentView;
@property (nonatomic, retain) id adBannerView;
@property (nonatomic) BOOL adBannerViewIsVisible;
-(IBAction)buttonPressed;
-(IBAction)spin;

@end

