//
//  My_Milky_WeightViewController.m
//  My Milky Weight
//
//  Created by Tony Florida on 6/25/10.
//  Copyright Raddfood 2010. All rights reserved.
//

#import "My_Milky_WeightViewController.h"

@implementation My_Milky_WeightViewController
@synthesize selectedPlanet, planetLabel, weightLabel, inputWeight, weight, inputWeightLabel;



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


// slider
-(IBAction) changeLabelText: (id) sender
{
	int sliderValue = weight.value;
	inputWeightLabel.text = [NSString stringWithFormat:@"%d", sliderValue];
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[super viewDidLoad];
	planets = [[NSArray alloc] initWithObjects:@"Sun", @"Mercury", @"Venus", @"Earth", @"Moon", @"Mars", @"Jupiter", @"Io", @"Europa", @"Ganymede", @"Callisto", @"Saturn", @"Titan", @"Uranus", @"Titania", @"Oberon", @"Neptune", @"Triton", @"Pluto", @"Eris", nil];
}

// Picker collums
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}

// Picker rows
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
	return [planets count];
}

// Picker
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent: (NSInteger)component
{
	return [planets objectAtIndex:row];
}



// Button
-(IBAction) sendButtonTapped: (id) sender
{
	
	NSInteger i = weight.value;
	double w;
	
	if ([selectedPlanet selectedRowInComponent:0] == 0 )
	{
		NSLog(@"Sun");
		planetLabel.text = @"the Sun is";
		w = (double) (i) * 27.90;
		NSLog(@"%f", w);		
//		weightLabel.text = [NSString stringWithFormat:@"%@", [inputWeight text]];
	}
	else if ([selectedPlanet selectedRowInComponent:0] == 1)
	{
		NSLog(@"Mercury");
		planetLabel.text = @"Mercury is";
		w = (double) (i) * 0.3770;
		NSLog(@"%f", w);
	}
	else if ([selectedPlanet selectedRowInComponent:0] == 2)
	{
		NSLog(@"Venus");
		planetLabel.text = @"Venus is";
		w = (double) (i) * 0.9032;
		NSLog(@"%f", w);
	}
	else if ([selectedPlanet selectedRowInComponent:0] == 3)
	{
		NSLog(@"Earth");
		planetLabel.text = @"Earth is";
		w = (double) (i) * 1;
		NSLog(@"%f", w);		
	}	
	else if ([selectedPlanet selectedRowInComponent:0] == 4)
	{
		NSLog(@"Moon");
		planetLabel.text = @"the Moon is";	
		w = (double) (i) * 0.1655;
		NSLog(@"%f", w);		
	}	
	else if ([selectedPlanet selectedRowInComponent:0] == 5)
	{
		NSLog(@"Mars");
		planetLabel.text = @"Mars is";
		w = (double) (i) * 0.3895;
		NSLog(@"%f", w);		
	}	
	else if ([selectedPlanet selectedRowInComponent:0] == 6)
	{
		NSLog(@"Jupiter");
		planetLabel.text = @"Jupiter is";
		w = (double) (i) * 2.640;
		NSLog(@"%f", w);		
	}	
	else if ([selectedPlanet selectedRowInComponent:0] == 7)
	{
		NSLog(@"Io");
		planetLabel.text = @"Io is";	
		w = (double) (i) * 0.182;
		NSLog(@"%f", w);		
	}	
	else if ([selectedPlanet selectedRowInComponent:0] == 8)
	{
		NSLog(@"Europa");
		planetLabel.text = @"Europa is";
		w = (double) (i) * 0.134;
		NSLog(@"%f", w);		
	}	
	else if ([selectedPlanet selectedRowInComponent:0] == 9)
	{
		NSLog(@"Ganymede");
		planetLabel.text = @"Ganymede is";	
		w = (double) (i) * 0.145;
		NSLog(@"%f", w);		
	}	
	else if ([selectedPlanet selectedRowInComponent:0] == 10)
	{
		NSLog(@"Callisto");
		planetLabel.text = @"Callisto is";	
		w = (double) (i) * 0.126;
		NSLog(@"%f", w);		
	}
	else if ([selectedPlanet selectedRowInComponent:0] == 11)
	{
		NSLog(@"Saturn");
		planetLabel.text = @"Saturn is";	
		w = (double) (i) * 1.139;
		NSLog(@"%f", w);		
	}	
	else if ([selectedPlanet selectedRowInComponent:0] == 12)
	{
		NSLog(@"Titan");
		planetLabel.text = @"Titan is";	
		w = (double) (i) * 0.138;
		NSLog(@"%f", w);		
	}	
	else if ([selectedPlanet selectedRowInComponent:0] == 13)
	{
		NSLog(@"Uranus");
		planetLabel.text = @"Uranus is";	
		w = (double) (i) * 0.917;
		NSLog(@"%f", w);		
	}
	else if ([selectedPlanet selectedRowInComponent:0] == 14)
	{
		NSLog(@"Titania");
		planetLabel.text = @"Titania is";	
		w = (double) (i) * 0.039;
		NSLog(@"%f", w);		
	}	
	else if ([selectedPlanet selectedRowInComponent:0] == 15)
	{
		NSLog(@"Oberon");
		planetLabel.text = @"Oberon is";	
		w = (double) (i) * 0.035;
		NSLog(@"%f", w);		
	}	
	else if ([selectedPlanet selectedRowInComponent:0] == 16)
	{
		NSLog(@"Neptune");
		planetLabel.text = @"Neptune is";	
		w = (double) (i) * 1.148;
		NSLog(@"%f", w);		
	}	
	else if ([selectedPlanet selectedRowInComponent:0] == 17)
	{
		NSLog(@"Triton");
		planetLabel.text = @"Triton is";	
		w = (double) (i) * 0.079;
		NSLog(@"%f", w);		
	}	
	else if ([selectedPlanet selectedRowInComponent:0] == 18)
	{
		NSLog(@"Pluto");
		planetLabel.text = @"Pluto is";	
		w = (double) (i) * 0.0621;
		NSLog(@"%f", w);		
	}	
	else if ([selectedPlanet selectedRowInComponent:0] == 19)
	{
		NSLog(@"Eris");
		planetLabel.text = @"Eris is";		
		w = (double) (i) * 0.0814;
		NSLog(@"%f", w);		
	}
	
	NSNumberFormatter *format = [[NSNumberFormatter alloc] init];
	[format setPositiveFormat:@"###,###.##"];
	NSString *strWeight = [format stringForObjectValue:[NSNumber numberWithDouble:w]];
	NSMutableString *done;
	done = [NSMutableString stringWithString: strWeight];
	weightLabel.text = done;
	
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

// Memory
- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

// Memory
- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

// Memory
- (void)dealloc {
	[planets release];
    [super dealloc];
}

@end
