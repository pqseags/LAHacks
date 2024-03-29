//
//  HelpViewController.m
//  TalentTrail
//
//  Created by Parker Seagren on 4/23/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import "HelpViewController.h"
#import "SWRevealViewController.h"
#import "HexColor.h"

@interface HelpViewController ()

@end

@implementation HelpViewController

@synthesize infoText;
@synthesize infoText2;
@synthesize infoText3;

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
    //_searchButton.tintColor = [UIColor whiteColor];
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    //____________________SIDE BAR_______________________
    
    //make it orange
    //[self.view setBackgroundColor: [HexColor colorWithHexString:@"F48F16"]];
    //[infoText setBackgroundColor:[HexColor colorWithHexString:@"F48F16"]];
    infoText.textColor = [HexColor colorWithHexString:@"F48F16"];
    infoText2.textColor = [HexColor colorWithHexString:@"F48F16"];
    infoText3.textColor = [HexColor colorWithHexString:@"F48F16"];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
