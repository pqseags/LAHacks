//
//  EditProfileViewController.m
//  TalentTrail
//
//  Created by Parker Seagren on 4/12/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import "EditProfileViewController.h"

@interface EditProfileViewController ()

@end

@implementation EditProfileViewController

@synthesize firstNameField;
@synthesize lastNameField;
@synthesize phoneNumberField;
@synthesize schoolNameField;
@synthesize degreeControl;
@synthesize graduationDatePicker;
@synthesize majorField;
@synthesize gpaField;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //self.automaticallyAdjustsScrollViewInsets = NO;  //doesnt work
    
    //set delegate of Text Fields to this view controller
    firstNameField.delegate = self;
    lastNameField.delegate = self;
    phoneNumberField.delegate = self;
    schoolNameField.delegate = self;
   // degreeControl.delegate = self;
   // graduationDatePicker.delegate = self;
    majorField.delegate = self;
    gpaField.delegate = self;
    
    //change the return key to "Done" on keyboard
    firstNameField.returnKeyType = UIReturnKeyDone;
    lastNameField.returnKeyType = UIReturnKeyDone;
    firstNameField.returnKeyType = UIReturnKeyDone;
    lastNameField.returnKeyType = UIReturnKeyDone;
    phoneNumberField.delegate = self;
    schoolNameField.returnKeyType = UIReturnKeyDone;
    // degreeControl.delegate = self;
    // graduationDatePicker.delegate = self;
    majorField.returnKeyType = UIReturnKeyDone;
    gpaField.returnKeyType = UIReturnKeyDone;

}
//also need to make a function for when picker and control change to update

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}


- (IBAction)pressedDone:(UIBarButtonItem *)sender {
    
    //save all new info
    
    [self.navigationController popViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
