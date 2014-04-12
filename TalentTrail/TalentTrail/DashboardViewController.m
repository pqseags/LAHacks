//
//  DashboardViewController.m
//  TalentTrail
//
//  Created by Parker Seagren on 4/12/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import "DashboardViewController.h"
#import "SWRevealViewController.h"
#import "HexColor.h"
#import "DashboardCell.h"

@interface DashboardViewController ()

@end

@implementation DashboardViewController

@synthesize dataArray;

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
    
    self.title = @"Dashboard";
    self.collectionView.backgroundColor = [UIColor lightGrayColor];
    
    //--------------------SIDE BAR----------------------
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    
    _sidebarButton.tintColor = [UIColor whiteColor];
    _searchButton.tintColor = [UIColor whiteColor];
   // _sidebarButton.backgroundColor =[UIColor whiteColor];
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    //____________________SIDE BAR_______________________
    
    //configure navigation controller bar
    self.navigationController.navigationBar.barTintColor = [HexColor colorWithHexString:@"F48F16"];
    self.navigationController.navigationBar.titleTextAttributes= @{NSForegroundColorAttributeName : [UIColor whiteColor]};
    
    //___________________________________________________________
    //---------v------v-----COLLECTION VIEW--------v--------v----
    
    //create data for collection view -- later need to get it from API

    dataArray = [[NSMutableArray alloc] init];
    for (int i=0; i<8; i++)
    {
        [dataArray addObject:[NSString stringWithFormat:@"Apple"]];
    }


    
    
    //create cells from .xib
//    UINib *cellNib = [UINib nibWithNibName:@"DashboardCell" bundle:nil];
//    [self.collectionView registerNib:cellNib forCellWithReuseIdentifier:@"dashCell"];
    
    //instead, create cells from DashboardCell class!
    [self.collectionView registerClass:[DashboardCell class] forCellWithReuseIdentifier:@"dashCell"];
    
    //create flowlayout
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    [flowLayout setItemSize:CGSizeMake(100, 125)];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];  //probably want to set to vertical
    
    [self.collectionView setCollectionViewLayout:flowLayout];
    
  
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    //return [self.dataArray count];
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
//    NSMutableArray *sectionArray = [self.dataArray objectAtIndex:section];
//    return [sectionArray count];
    NSLog(@"Number of items in dataArray: %d", [dataArray count]);
    return [dataArray count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
   // NSMutableArray *data = [self.dataArray objectAtIndex:indexPath.section];
    
    NSString *cellData = [dataArray objectAtIndex:indexPath.row];
    
    static NSString *cellIdentifier = @"dashCell";
    
    DashboardCell *cell = (DashboardCell*)[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    //UILabel *titleLabel = (UILabel *)[cell viewWithTag:100];
    //[titleLabel setText:cellData];
    
    [cell.companyLabel setText:cellData];
    //[cell.companyImage setImage:
    
    return cell;
    
}

  //_____^__________^_____COLLECTION VIEW______^____________^_____
  //______________________________________________________________

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
