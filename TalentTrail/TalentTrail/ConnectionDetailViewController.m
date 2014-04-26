//
//  ConnectionDetailViewController.m
//  TalentTrail
//
//  Created by Parker Seagren on 4/26/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import "ConnectionDetailViewController.h"

@interface ConnectionDetailViewController ()

@end

@implementation ConnectionDetailViewController
@synthesize nameLabel;
@synthesize positionLabel;
@synthesize companyLabel;
@synthesize emailLabel;
@synthesize phoneLabel;
@synthesize connectionImageView;

@synthesize emailButton;
@synthesize callButton;


@synthesize firstName;
@synthesize position;
@synthesize company;
@synthesize email;
@synthesize phoneNumber;
@synthesize picture;

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
    
    //set button colors
    emailButton.imageView.image = [emailButton.imageView.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    [emailButton.imageView setTintColor:[UIColor blueColor]];
    callButton.imageView.image = [callButton.imageView.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    [callButton.imageView setTintColor:[UIColor blueColor]];
    //need to reset button color after click!!!
    
    
    //get data
    nameLabel.text = firstName;
    positionLabel.text = position;
    companyLabel.text = company;
    connectionImageView.image = picture;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
