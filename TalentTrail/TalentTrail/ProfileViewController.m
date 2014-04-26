//
//  ProfileViewController.m
//  TalentTrail
//
//  Created by Parker Seagren on 4/12/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import "ProfileViewController.h"
#import "SWRevealViewController.h"
#import "AppDelegate.h"
@interface ProfileViewController ()

@end

@implementation ProfileViewController
@synthesize FirstName;
@synthesize LastName;
@synthesize Email;
@synthesize School;
@synthesize Degree;
@synthesize GraduationYear;
@synthesize GraduationMonth;
@synthesize GPA;
@synthesize Major;
@synthesize Phone;
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
    
    //--------------------SIDE BAR----------------------
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    _sidebarButton.tintColor = [UIColor whiteColor];
    _searchButton.tintColor = [UIColor whiteColor];
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    //____________________SIDE BAR_______________________
    
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Cancel" style:UIBarButtonItemStylePlain target:nil action:nil];
    //set back button color
    [[UIBarButtonItem appearanceWhenContainedIn:[UINavigationBar class], nil] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName,nil] forState:UIControlStateNormal];
    //set back button arrow color
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    
    //get data
    AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    //FirstName.text = [appDelegate.userProfile firstname];
    if(appDelegate.userProfile != nil){
        FirstName.text = [appDelegate.userProfile firstname];
        LastName.text = [appDelegate.userProfile lastname];
        Email.text = [appDelegate.userProfile email];
        School.text = [appDelegate.userProfile school];
        Degree.text = [appDelegate.userProfile degree];
        GraduationMonth.text = [appDelegate.userProfile graduationmonth];
        GraduationYear.text = [appDelegate.userProfile graduationyear];
        Major.text = [appDelegate.userProfile major];
        Phone.text = [appDelegate.userProfile phone];
        GPA.text = [appDelegate.userProfile gpa];
    }
}

/*- (void)updateData{
    AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    FirstName.text = [appDelegate.userProfile firstname];
    LastName.text = [appDelegate.userProfile lastname];
    Email.text = [appDelegate.userProfile email];
    School.text = [appDelegate.userProfile school];
    Degree.text = [appDelegate.userProfile degree];
    GraduationMonth.text = [appDelegate.userProfile graduationmonth];
    GraduationYear.text = [appDelegate.userProfile graduationyear];
    Phone.text = [appDelegate.userProfile phone];
    GPA.text = [appDelegate.userProfile gpa];

}*/

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
