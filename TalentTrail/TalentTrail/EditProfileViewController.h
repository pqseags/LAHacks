//
//  EditProfileViewController.h
//  TalentTrail
//
//  Created by Parker Seagren on 4/12/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditProfileViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *firstNameField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameField;
@property IBOutlet UITextField *phoneNumberField;

@property IBOutlet UITextField *schoolNameField;
@property IBOutlet UISegmentedControl *degreeControl;
@property IBOutlet UIDatePicker *graduationDatePicker;  //need to change to uidatepicker in storyboard
@property IBOutlet UITextField *majorField;
@property IBOutlet UITextField *gpaField;

@end
