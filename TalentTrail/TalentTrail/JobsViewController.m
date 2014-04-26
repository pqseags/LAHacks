//
//  JobsViewController.m
//  TalentTrail
//
//  Created by Parker Seagren on 4/12/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import "JobsViewController.h"
#import "SWRevealViewController.h"
#import "JobCell.h"
#import "JobDetailViewController.h"

@interface JobsViewController ()

@end

@implementation JobsViewController
NSArray *Jobs;
NSArray *Positions;
NSArray *Pictures;
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
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.tableView.backgroundColor = [UIColor lightGrayColor];
    self.tableView.separatorColor = [UIColor lightGrayColor];
    //--------------------SIDE BAR----------------------
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    _sidebarButton.tintColor = [UIColor whiteColor];
    _searchButton.tintColor = [UIColor whiteColor];
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    //____________________SIDE BAR_______________________
    Jobs = [NSArray arrayWithObjects: @"Google", @"Apple", @"Intel", @"Facebook", @"Disney", @"Nvidia", @"Microsoft", @"NASA", nil];
    Positions = [NSArray arrayWithObjects: @"Android Developer", @"Database Manager", @"iOS Developer", @"BackEnd Web Developer", @"Electrical Engineer", @"Designer", @"Hardware Engineer", @"Aerospace Engineer", nil];
    Pictures = [NSArray arrayWithObjects: @"google.png", @"apple.png", @"intel.png", @"facebook.gif", @"disney.png", @"nvidia.jpg", @"microsoft.png", @"nasa.png", nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return Jobs.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //static NSString *CellIdentifier = @"JobCell";
    // ConnectionCell *cell = (ConnectionCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    //    if(cell==nil)
    //    {
    NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"JobCell" owner:self options:nil];
    JobCell *cell = [nib objectAtIndex:0];
    //    }
    
    // Configure the cell...
    cell.Position.text = [Positions objectAtIndex:indexPath.row];
    cell.Job.text = [Jobs objectAtIndex:indexPath.row];
    cell.Picture.image = [UIImage imageNamed:[Pictures objectAtIndex:indexPath.row]];
    
    [cell.contentView.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    [cell.contentView.layer setBorderWidth:2.0f];
    
    
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 119;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self performSegueWithIdentifier:@"JobDetail" sender:self];

    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"Segue Identifier: %@", segue.identifier);
    
    if ([segue.identifier isEqualToString:@"JobDetail"]) {
        JobDetailViewController *destViewController = segue.destinationViewController;
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        destViewController.companyName = (NSString*)[Jobs objectAtIndex:indexPath.row];
        [self.tableView deselectRowAtIndexPath:indexPath animated:NO];

    }
                                                               
}


@end
