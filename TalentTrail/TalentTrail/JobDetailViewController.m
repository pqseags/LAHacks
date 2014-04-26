//
//  JobDetailViewController.m
//  TalentTrail
//
//  Created by Parker Seagren on 4/25/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import "JobDetailViewController.h"

@interface JobDetailViewController ()

@end

@implementation JobDetailViewController

@synthesize companyNameLabel;
@synthesize companyName;
@synthesize positionTitleLabel;
@synthesize positionTitle;
@synthesize requirementsText;
@synthesize requirements;
@synthesize description;
@synthesize descriptionText;

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
    
    //set back button color
    [[UIBarButtonItem appearanceWhenContainedIn:[UINavigationBar class], nil] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName,nil] forState:UIControlStateNormal];
    //set back button arrow color
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    
    //get data
    companyNameLabel.text = companyName;
    positionTitleLabel.text = positionTitle;
    requirementsText.text = requirements;
    descriptionText.text = description;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
