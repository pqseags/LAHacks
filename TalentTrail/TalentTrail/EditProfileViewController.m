//
//  EditProfileViewController.m
//  TalentTrail
//
//  Created by Parker Seagren on 4/12/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import "EditProfileViewController.h"
#import "AppDelegate.h"
#import "Profile.h"

@interface EditProfileViewController ()

@end

@implementation EditProfileViewController

@synthesize firstNameField;
@synthesize lastNameField;
@synthesize phoneNumberField;
@synthesize schoolNameField;
@synthesize degreeControl;
@synthesize graduationMonth;
@synthesize graduationYear;
@synthesize majorField;
@synthesize gpaField;
@synthesize email;

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
    graduationMonth.delegate = self;
    graduationYear.delegate = self;
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
    graduationMonth.returnKeyType = UIReturnKeyDone;
    graduationYear.returnKeyType = UIReturnKeyDone;
    majorField.returnKeyType = UIReturnKeyDone;
    gpaField.returnKeyType = UIReturnKeyDone;
    
    AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    firstNameField.text = [appDelegate.userProfile firstname];
    lastNameField.text = [appDelegate.userProfile lastname];
    phoneNumberField.text = [appDelegate.userProfile phone];
    schoolNameField.text = [appDelegate.userProfile school];
    graduationMonth.text = [appDelegate.userProfile graduationmonth];
    graduationYear.text = [appDelegate.userProfile graduationyear];
    majorField.text = [appDelegate.userProfile major];
    gpaField.text = [appDelegate.userProfile gpa];
    

}
//also need to make a function for when picker and control change to update

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}


- (IBAction)pressedDone:(UIBarButtonItem *)sender {
    
    //save all new info
    
//    NSArray *vcs = self.navigationController.viewControllers;
//    [vcs objectAtIndex:([vcs count]-1)].
    AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    Profile *p = [[Profile alloc] init];
    [p setFirstname:firstNameField.text];
    [p setLastname:lastNameField.text];
    [p setPhone:phoneNumberField.text];
    [p setSchool:schoolNameField.text];
    [p setFirstname:firstNameField.text];
    NSString * a = [degreeControl titleForSegmentAtIndex:degreeControl.selectedSegmentIndex];
    [p setDegree:a];
    [p setGraduationmonth:graduationMonth.text];
    [p setGraduationyear:graduationYear.text];
    [p setMajor:majorField.text];
    [p setGpa:gpaField.text];
    [p setEmail:email.text];
    
    appDelegate.userProfile = p;
    
    NSLog(@"Name: %@", [p firstname]);
    [self.navigationController popViewControllerAnimated:YES];
    NSArray *vcs = self.navigationController.viewControllers;
    [[vcs objectAtIndex:([vcs count]-1)] viewDidLoad];

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
