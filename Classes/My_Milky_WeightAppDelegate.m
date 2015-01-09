//
//  My_Milky_WeightAppDelegate.m
//  My Milky Weight
//
//  Created by Tony Florida on 6/25/10.
//  Copyright Raddfood 2010. All rights reserved.
//

#import "My_Milky_WeightAppDelegate.h"
#import "My_Milky_WeightViewController.h"

@implementation My_Milky_WeightAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
