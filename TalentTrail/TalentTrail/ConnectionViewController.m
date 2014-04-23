//
//  ConnectionViewController.m
//  TalentTrail
//
//  Created by Kevin on 4/12/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import "ConnectionViewController.h"
#import "ConnectionCell.h"
#import "SWRevealViewController.h"
@interface ConnectionViewController ()

@end

@implementation ConnectionViewController
NSArray *Names;
NSArray *Jobs;
NSArray *Positions;
NSArray *Pictures;


/*- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}*/

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //--------------------SIDE BAR----------------------
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    _sidebarButton.tintColor = [UIColor whiteColor];
    _searchButton.tintColor = [UIColor whiteColor];
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    //____________________SIDE BAR_______________________
    
    Names = [NSArray arrayWithObjects:@"Kevin Chen", @"Ryan Choi" , @"Parker Seagren", @"Trey Nelson", @"Sydney Liu", @"Justin Kwang", nil];
    Jobs = [NSArray arrayWithObjects: @"TalentTrail", @"TalentTrail", @"TalentTrail", @"TalentTrail", @"TalentTrail", @"TalentTrail", nil];
    Positions = [NSArray arrayWithObjects: @"Android Developer", @"Database Manager", @"iOS Developer", @"BackEnd Web Developer", @"CEO", @"Designer", nil];
    Pictures = [NSArray arrayWithObjects: @"orange.png", @"reddish.png", @"purple.png", @"green.png", @"blue.png", @"orange.png", nil];

                                        
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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
    return Names.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //static NSString *CellIdentifier = @"ConnectionCell";
   // ConnectionCell *cell = (ConnectionCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//    if(cell==nil)
//    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ConnectionCell" owner:self options:nil];
        ConnectionCell *cell = [nib objectAtIndex:0];
//    }

    // Configure the cell...
    cell.Name.text = [Names objectAtIndex:indexPath.row];
    cell.Position.text = [Positions objectAtIndex:indexPath.row];
    cell.Job.text = [Jobs objectAtIndex:indexPath.row];
    cell.Picture.image = [UIImage imageNamed:[Pictures objectAtIndex:indexPath.row]];

    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 119;
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
