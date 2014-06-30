//
//  AnalyticsViewController.m
//  TalentTrail
//
//  Created by Parker Seagren on 6/29/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import "AnalyticsViewController.h"
#import "SWRevealViewController.h"
#import "HexColor.h"

@interface AnalyticsViewController ()

@end

@implementation AnalyticsViewController
@synthesize sidebarButton;

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
    
    
    self.title = @"Analytics";
    
    //--------------------SIDE BAR----------------------
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    self.navigationController.navigationBar.translucent = NO;
    sidebarButton.tintColor = [UIColor whiteColor];
    sidebarButton.target = self.revealViewController;
    sidebarButton.action = @selector(revealToggle:);
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    //____________________SIDE BAR_______________________

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
