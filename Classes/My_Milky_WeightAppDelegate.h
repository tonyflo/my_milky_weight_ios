//
//  My_Milky_WeightAppDelegate.h
//  My Milky Weight
//
//  Created by Tony Florida on 6/25/10.
//  Copyright Raddfood 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class My_Milky_WeightViewController;

@interface My_Milky_WeightAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    My_Milky_WeightViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet My_Milky_WeightViewController *viewController;

@end

