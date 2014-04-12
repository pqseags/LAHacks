//
//  LogInViewController.m
//  TalentTrail
//
//  Created by Parker Seagren on 4/11/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import "LogInViewController.h"

@interface LogInViewController ()

@end

@implementation LogInViewController
@synthesize emailField;
@synthesize passwordField;

@synthesize email;
@synthesize password;

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
    emailField.delegate = self;
    passwordField.delegate = self;
    
    //change the return key to "Done" on keyboard
    emailField.returnKeyType = UIReturnKeyDone;
    passwordField.returnKeyType = UIReturnKeyDone;
    
    //secure text entry for password field
    passwordField.secureTextEntry = YES;
    
    //set text field placeholders
    emailField.placeholder = @"Email";
    passwordField.placeholder = @"Password";
    
    //listen to notificationCenter for when keyboard appears/disappears
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidShow:) name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidHide:) name:UIKeyboardDidHideNotification object:nil];


    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)clickedSignInButton:(id)sender {
    email = emailField.text;
    password = passwordField.text;
    NSLog(@"Signed in with (Email: %@, Password: %@)", email, password);
    [self performSegueWithIdentifier:@"SignIn" sender:self];
    
    //check email/password against database to find user, and load their profile
    
    
    
}
- (IBAction)clickedNewAccountButton:(id)sender {
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
