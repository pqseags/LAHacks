//
//  SideBarViewController.m
//  TalentTrail
//
//  Created by Parker Seagren on 4/12/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import "SideBarViewController.h"
#import "SWRevealViewController.h"
#import "HexColor.h"
#import "SideBarCell.h"

@interface SideBarViewController ()
@property (nonatomic, strong) NSArray *menuItems;
@property (nonatomic, strong) NSArray *settingsMenuItems;
@property (nonatomic, strong) NSArray *menuPictures;
@property (nonatomic, strong) NSArray *settingsMenuPictures;
@end

@implementation SideBarViewController
@synthesize menuItems;
@synthesize settingsMenuItems;
@synthesize menuPictures;
@synthesize settingsMenuPictures;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    //self.view.backgroundColor = [UIColor colorWithWhite:0.2f alpha:1.0f];
    //self.tableView.backgroundColor = [UIColor colorWithWhite:0.2f alpha:1.0f];
    //self.tableView.separatorColor = [UIColor colorWithWhite:0.15f alpha:0.2f];
    
    menuItems = @[@"dashboard", @"jobs", @"connections", @"profile"];
    settingsMenuItems = @[@"settings", @"help", @"feedback", @"logout"];
    menuPictures = @[@"dashboard.png", @"jobs.png", @"connections.png", @"profile.png"];
    settingsMenuPictures = @[@"settings.png", @"help.png", @"feedback.png", @"logout.png"];
    
    self.tableView.backgroundColor = [UIColor lightGrayColor];
    self.tableView.separatorColor = [UIColor lightGrayColor];
   
//[HexColor colorWithHexString:@"F48F16"]
    
    UIView* view = [[UIView alloc]initWithFrame:CGRectMake(0, -20, self.view.frame.size.width, 20.0)];
    view.backgroundColor = [HexColor colorWithHexString:@"F48F16"];
    [self.view addSubview:view];
    
    
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
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    if (section ==0)
        return [self.menuItems count];
    else return [self.settingsMenuItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //static NSString *CellIdentifier = @"SideBarCell";
    
    NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SideBarCell" owner:self options:nil];
    SideBarCell *cell = [nib objectAtIndex:0];
    /*if (indexPath.section ==0){
        CellIdentifier = [self.menuItems objectAtIndex:indexPath.row];
    }
    else CellIdentifier = [self.settingsMenuItems objectAtIndex:indexPath.row];
    
    SideBarCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    */
    cell.backgroundColor =[UIColor lightGrayColor];
    UIImage * whiteImage = [[UIImage alloc] init];
    if (indexPath.section ==0){
        cell.Item.text = [[menuItems objectAtIndex:indexPath.row] capitalizedString];
        whiteImage = [UIImage imageNamed:[menuPictures objectAtIndex:indexPath.row]];
    }
    else{
        cell.Item.text = [[settingsMenuItems objectAtIndex:indexPath.row] capitalizedString];
        whiteImage = [UIImage imageNamed:[settingsMenuPictures objectAtIndex:indexPath.row]];

    }
    
    //set text and picture color
    cell.Item.textColor = [UIColor whiteColor];
    cell.Picture.image = [whiteImage imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    cell.Picture.tintColor = [UIColor whiteColor];
    return cell;
    
}

- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section
{
    // Background color
    
    
    // Text Color
    UITableViewHeaderFooterView *header = (UITableViewHeaderFooterView *)view;
    [header.textLabel setTextColor:[UIColor whiteColor]];
    
    // Another way to set the background color
    // Note: does not preserve gradient effect of original header
    // header.contentView.backgroundColor = [UIColor blackColor];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if(section == 0)
        return @"";
    else return @"Help and Settings";
}

//what happens if a sidebar item is clicked!!!

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    if (indexPath.section == 0){
        if (indexPath.row == 0){
            [self performSegueWithIdentifier:@"revealDashboard" sender:self];
        }
        else if (indexPath.row == 1){
            [self performSegueWithIdentifier:@"revealJobs" sender:self];
        }
        else if (indexPath.row == 2){
            [self performSegueWithIdentifier:@"revealConnections" sender:self];
        }

        else if (indexPath.row == 3){
            [self performSegueWithIdentifier:@"revealProfile" sender:self];
        }
    }
    
    else if (indexPath.section == 1){
        if (indexPath.row == 0){
            //Settings
        }
        else if (indexPath.row == 1){
            //Help
        }
        else if (indexPath.row == 2){
            //Feedback
        }
        
        else if (indexPath.row == 3){
            //Logout
            [self performSegueWithIdentifier:@"logout" sender:self];
        }
    }

    
}


- (void) prepareForSegue: (UIStoryboardSegue *) segue sender: (id) sender
{
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    UINavigationController *destViewController = (UINavigationController*)segue.destinationViewController;
    destViewController.title = [[menuItems objectAtIndex:indexPath.row] capitalizedString];
    
    if ( [segue isKindOfClass: [SWRevealViewControllerSegue class]] ) {
        SWRevealViewControllerSegue *swSegue = (SWRevealViewControllerSegue*) segue;
        
        swSegue.performBlock = ^(SWRevealViewControllerSegue* rvc_segue, UIViewController* svc, UIViewController* dvc) {
            
            UINavigationController* navController = (UINavigationController*)self.revealViewController.frontViewController;
            [navController setViewControllers: @[dvc] animated: NO ];
            [self.revealViewController setFrontViewPosition: FrontViewPositionLeft animated: YES];
        };
        
    }
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
