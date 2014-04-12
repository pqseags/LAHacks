//
//  RegisterViewController.m
//  TalentTrail
//
//  Created by Parker Seagren on 4/12/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

@synthesize firstNameField;
@synthesize lastNameField;
@synthesize emailField;
@synthesize passwordField;
@synthesize password2Field;

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
    
    //set delegate of Text Fields to this view controller
    firstNameField.delegate = self;
    lastNameField.delegate = self;
    emailField.delegate = self;
    passwordField.delegate = self;
    password2Field.delegate = self;
    
    //change the return key to "Done" on keyboard
    firstNameField.returnKeyType = UIReturnKeyDone;
    lastNameField.returnKeyType = UIReturnKeyDone;
    emailField.returnKeyType = UIReturnKeyDone;
    passwordField.returnKeyType = UIReturnKeyDone;
    password2Field.returnKeyType = UIReturnKeyDone;

    //set text field placeholders
    firstNameField.placeholder = @"First Name";
    lastNameField.placeholder = @"Last Name";
    emailField.placeholder = @"Email Address";
    passwordField.placeholder = @"Password";
    password2Field.placeholder = @"Re-Enter Password";
    
    //set password fields with secure entry
    passwordField.secureTextEntry = YES;
    password2Field.secureTextEntry = YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
