//
//  EditProfileJobsViewController.h
//  TalentTrail
//
//  Created by Kevin on 4/12/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditProfileJobsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)addItems:(id)sender;
@end
