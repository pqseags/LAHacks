//
//  DashboardDetailsControllerViewController.m
//  TalentTrail
//
//  Created by Kevin on 4/13/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import "CompanyDetailViewController.h"

@interface CompanyDetailViewController ()

@end

@implementation CompanyDetailViewController
@synthesize Req;
@synthesize Info;
@synthesize ReqField;
@synthesize InfoField;
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
    ReqField.text = Req;
    InfoField.text = Info;
    
    
    //set back button color
    [[UIBarButtonItem appearanceWhenContainedIn:[UINavigationBar class], nil] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName,nil] forState:UIControlStateNormal];
    //set back button arrow color
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
