//
//  AppDelegate.h
//  TalentTrail
//
//  Created by Parker Seagren on 4/11/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Profile.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property Profile *userProfile;

@end
