//
//  TypeFormApplicationViewController.m
//  TalentTrail
//
//  Created by Parker Seagren on 6/21/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import "TypeFormApplicationViewController.h"

@interface TypeFormApplicationViewController ()

@end

@implementation TypeFormApplicationViewController

@synthesize webPage;

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
    
    NSString *fullURL = @"https://talenttrail.typeform.com/to/zaSt74";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webPage loadRequest:requestObj];
    
    
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
