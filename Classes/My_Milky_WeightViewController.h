//
//  My_Milky_WeightViewController.h
//  My Milky Weight
//
//  Created by Tony Florida on 6/25/10.
//  Copyright Raddfood 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface My_Milky_WeightViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate> 
{
	// picker
	IBOutlet UIPickerView *selectedPlanet;
	NSArray* planets;
	// planet label
	IBOutlet UILabel *planetLabel;
	// output weight label
	IBOutlet UILabel *weightLabel;
	// text field
	IBOutlet UITextField *inputWeight;
	// slider
	IBOutlet UISlider *weight;
	// input weight label
	IBOutlet UILabel *inputWeightLabel;
}

@property(nonatomic, retain) UIPickerView* selectedPlanet;
@property(nonatomic, retain) UILabel *planetLabel;
@property(nonatomic, retain) UILabel *weightLabel;
@property(nonatomic, retain) UITextField *inputWeight;
@property(nonatomic, retain) UISlider *weight;
@property(nonatomic, retain) UILabel *inputWeightLabel;

-(IBAction) sendButtonTapped: (id) sender;
-(IBAction) changeLabelText: (id) sender;



@end

