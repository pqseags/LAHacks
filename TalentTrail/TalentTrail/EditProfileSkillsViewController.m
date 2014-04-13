//
//  EditProfileSkillsViewController.m
//  TalentTrail
//
//  Created by Kevin on 4/12/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import "EditProfileSkillsViewController.h"
#import "EditProfileSkillsCell.h"
@interface EditProfileSkillsViewController ()

@end

@implementation EditProfileSkillsViewController

int currSize;
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
    currSize = 1;
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
    return currSize;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"EditProfileSkillsCell";
    // ConnectionCell *cell = (ConnectionCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    //    if(cell==nil)
    //    {
    NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"EditProfileSkillsCell" owner:self options:nil];
    EditProfileSkillsCell *cell = [nib objectAtIndex:0];
    //    }
    
    // Configure the cell...
    
    /*[cell.contentView.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    [cell.contentView.layer setBorderWidth:2.0f];*/
    
    
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}

- (IBAction)addItems:(id)sender {
    // I thought it was as simple as this, but it doesn't work
    currSize++;
    [self.tableView reloadData];
}


@end
