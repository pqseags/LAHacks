//
//  LogInViewController.h
//  TalentTrail
//
//  Created by Parker Seagren on 4/11/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LogInViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;

@property NSString * email;
@property NSString * password;



@end
