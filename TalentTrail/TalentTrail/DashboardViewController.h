//
//  DashboardViewController.h
//  TalentTrail
//
//  Created by Parker Seagren on 6/29/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DashboardViewController : UIViewController <UICollectionViewDelegate , UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UICollectionView *gridView;

@end
