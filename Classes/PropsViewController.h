//
//  PropsViewController.h
//  PWNCityFree
//
//  Created by Kyle Luchinski on 9/21/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PropsViewController : UIViewController {
	
	IBOutlet UIView *uiView;

}

@property (nonatomic, retain) UIView *uiView;
@property (nonatomic, retain) IBOutlet UILabel *settingLabel;
-(IBAction)setToPG;
-(IBAction)setToPG13;
-(IBAction)setToR;
-(IBAction)setToCustom;
@end
