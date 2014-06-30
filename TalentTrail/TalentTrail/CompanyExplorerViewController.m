//
//  DashboardViewController.m
//  TalentTrail
//
//  Created by Parker Seagren on 4/12/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import "CompanyExplorerViewController.h"
#import "SWRevealViewController.h"
#import "HexColor.h"
#import "CompanyCell.h"
#import "CompanyDetailViewController.h"

@interface CompanyExplorerViewController ()

@end

@implementation CompanyExplorerViewController
NSArray *companyImages;
NSArray *companyLabels;
NSArray *Reqs;
NSArray *Infos;

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
    
    self.title = @"Companies";
    self.collectionView.backgroundColor = [UIColor lightGrayColor];
    
    //--------------------SIDE BAR----------------------
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    self.navigationController.navigationBar.translucent = NO;
    _sidebarButton.tintColor = [UIColor whiteColor];
    _searchButton.tintColor = [UIColor whiteColor];
   // _sidebarButton.backgroundColor =[UIColor whiteColor];
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    //____________________SIDE BAR_______________________
    
    
    //___________________________________________________________
    //---------v------v-----COLLECTION VIEW--------v--------v----
    
    //create data for collection view -- later need to get it from API

    companyImages = [NSArray arrayWithObjects: @"google.png", @"apple.png", @"intel.png", @"facebook.gif", @"disney.png", @"nvidia.jpg", @"microsoft.png", @"nasa.png", nil];
    companyLabels = [NSArray arrayWithObjects: @"Google", @"Apple", @"Intel", @"Facebook", @"Disney", @"Nvidia", @"Microsoft", @"NASA", nil];

    Reqs = [NSArray arrayWithObjects: @"GPA: 3.5+\nB.S. or higher in Computer Science, Computer Engineering, Electrical Engineering, or equivalent\nMinimum Experience: 9 to 12 months\nLanguage: English (other languages are a plus)\nAge: College Senior or older\n", @"GPA: 3.25+\nB.S. or higher in Computer Science, Computer Engineering, Electrical Engineering, or equivalent\nMinimum Experience: 9 to 12 months\nLanguage: English (other languages are a plus)\nAge: College Senior or older\n", @"Minimum Experience: 9 months\nworking towards B.S. or higher in Computer Science, Computer Engineering, Electrical Engineering, or equivalent\nGPA: 3.75+\nAge: College Junior or older\nLanguage: English", @"GPA: 3.5+\nB.S. or higher in Computer Science, Computer Engineering, Electrical Engineering, or equivalent\nMinimum Experience: 9 to 12 months\nLanguage: English (other languages are a plus)\nAge: College Senior or older\n", @"GPA: 3.25+\nB.S. or higher in Computer Science, Computer Engineering, Electrical Engineering, or equivalent\nMinimum Experience: 9 to 12 months\nLanguage: English (other languages are a plus)\nAge: College Senior or older\n",  @"Minimum Experience: 9 months\nworking towards B.S. or higher in Computer Science, Computer Engineering, Electrical Engineering, or equivalent\nGPA: 3.75+\nAge: College Junior or older\nLanguage: English", @"GPA: 3.5+\nB.S. or higher in Computer Science, Computer Engineering, Electrical Engineering, or equivalent\nMinimum Experience: 9 to 12 months\nLanguage: English (other languages are a plus)\nAge: College Senior or older\n", @"GPA: 3.25+\nB.S. or higher in Computer Science, Computer Engineering, Electrical Engineering, or equivalent\nMinimum Experience: 9 to 12 months\nLanguage: English (other languages are a plus)\nAge: College Senior or older\n", nil];
    Infos = [NSArray arrayWithObjects: @"Google’s software engineers develop the next-generation technologies that change how millions interact, making accessible and useful the world’s information, and our ambitions reach far beyond just Search. To handle information at the scale of the web requires ideas from every area of computer science, including information retrieval, artificial intelligence, machine learning, natural language processing, distributed computing, large-scale system design, networking, security, data compression and user interface design; the list goes on and is growing every day. As a software engineer, you work on a small team and can switch teams and projects as our fast-paced business grows and evolves. We need our engineers to be versatile and always eager to tackle new problems as we continue to push technology forward.", @"A software engineer is a skilled professional focused on the design and creation of software. They may or may not actually code. Because they are interacting with both business functions and programmers, Software Engineers should have excellent communication skills and should enjoy working as part of a team. They will often have to explain business functions to programmers and technology restraints to non-technical business managers.", @"Every day, more than 250 million people access Facebook using Android mobile devices from across the world. The Facebook Mobile team constantly pushes the boundaries of the Facebook Mobile experience, as a leader in an exciting and fast-paced industry that is evolving daily. We are seeking full-time Android Engineers to join the Mobile team. As a Facebook Mobile Software Engineer, you will specialize in building elegant products on world-class technologies that bring the Facebook experience to hundreds of millions of people, anytime and anywhere. We are looking for someone that has strong experience developing user interfaces for applications on Android using Android SDK. If you are interested in joining a world-class team of passionate people and industry veterans who like to work hard and play hard, we look forward to hearing from you soon!", @"The candidate / intern will be part of graphics front end design team under Visual and Parallel Computing Group (VPG) responsible for design and proliferation of graphics cores which would eventually become part of Intel CPUs.", @"The Walt Disney Company is a world-class entertainment and technological leader. Walt’s passion was to continuously envision new ways to move audiences around the world—a passion that remains our touchstone in an enterprise that stretches from theme parks, resorts and a cruise line to sports, news, movies and a variety of other businesses. Uniting each endeavor is a commitment to creating and delivering unforgettable experiences — and we’re constantly looking for new ways to enhance these exciting experiences. Bring your individual talents here and discover for yourself why a career with Disney is the opportunity you’ve been looking for.", @"Are you passionate about building cloud services? Are you interesting in competing and winning in the rapidly evolving world of Business Intelligence (one of the hottest areas in software and web services)? Do you want to help millions of people around the world get “insights at the speed of thought?”. We build the lightning fast xVelocity in-memory analytics engine and the Azure based runtime that drives the Microsoft Power BI offering. As a program manager on this team, you work closely with customers, developers, and test to define and drive new experiences to enable users to discover deep insights on ever-growing amounts of data. We are looking for someone who works well on teams, has a solid technical background, and a great interest in user experiences. If you fit this description, and want to play a significant role in the transformation of the BI market, we want to hear from you.", @"NVIDIA is the world leader in visual computing technologies and the inventor of the GPU, a high-performance processor which generates breathtaking, interactive graphics on workstations, personal computers, game consoles, and mobile devices. NVIDIA serves the entertainment and consumer market with its GeForce® products, the professional design and visualization market with its Quadro® products, and the high-performance computing market with its Tesla™ products. At NVIDIA we set unprecedented standards of excellence. We do so in our vision, our values, and our work. We believe that you become the best by hiring the best, and know that as long as we have a superior engineering team, we\'ll continue to lead the graphics industry into a new era of multimedia innovation.", @"Aeronautical Engineers design, develop, test and oversee the building of aircraft, aircraft propulsion systems, airframes and control surfaces. When designing a new aircraft, engineers first define what the purpose of such a vehicle is to be. Based upon research that has already been done and the design parameters, aeronautical engineers then design the prototype or model section. They design the test procedures and then run the test using a small team of experts. The engineer then examines the results and generates a report that identifies whether the design should be continued as is, modified as per the results or completely redesigned. The research performed prior to the design as well as the design work is performed in an office building or aeronautical lab facility using sophisticated computer workstations and computer visualization tools. When models are tested they can be tested in a wind tunnel facility or flown in a computer using sophisticated computational fluid dynamics visualization software. Aeronautical engineers spend a lot of time researching information, working with complex equations, using computers and discussing possibilities with colleagues.", nil];
    
    //create cells from .xib
//    UINib *cellNib = [UINib nibWithNibName:@"DashboardCell" bundle:nil];
//    [self.collectionView registerNib:cellNib forCellWithReuseIdentifier:@"dashCell"];
    
    //instead, create cells from DashboardCell class
    [self.collectionView registerClass:[CompanyCell class] forCellWithReuseIdentifier:@"dashCell"];
    
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
    NSLog(@"Number of items in dataArray: %lu", (unsigned long)[companyLabels count]);
    return [companyLabels count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
   // NSMutableArray *data = [self.dataArray objectAtIndex:indexPath.section];
    
    //NSString *cellData = [dataArray objectAtIndex:indexPath.row];
    
    
    static NSString *cellIdentifier = @"dashCell";
    
    CompanyCell *cell = (CompanyCell*)[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    //UILabel *titleLabel = (UILabel *)[cell viewWithTag:100];
    //[titleLabel setText:cellData];
    cell.companyLabel.text = [companyLabels objectAtIndex:indexPath.row];
    cell.companyImage.image = [UIImage imageNamed:[companyImages objectAtIndex:indexPath.row]];
    //[cell.companyLabel setText:cellData];
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
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:@"JobDetails" sender:self];
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"Segue Identifier: %@", segue.identifier);
    
        if ([segue.identifier isEqualToString:@"JobDetails"]) {
        NSArray *indexPaths = [self.collectionView indexPathsForSelectedItems];
        CompanyDetailViewController *destViewController = segue.destinationViewController;
        NSIndexPath *indexPath = [indexPaths objectAtIndex:0];
        destViewController.Req = [Reqs objectAtIndex:indexPath.row];
        destViewController.Info = [Infos objectAtIndex:indexPath.row];
        [self.collectionView deselectItemAtIndexPath:indexPath animated:NO];
    }
}

@end
