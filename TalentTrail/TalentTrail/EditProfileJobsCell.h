//
//  EditProfileJobsCell.h
//  TalentTrail
//
//  Created by Kevin on 4/12/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditProfileJobsCell : UITableViewCell
@property(nonatomic,weak) IBOutlet UILabel *Company;
@property(nonatomic,weak) IBOutlet UILabel *Position;
@property(nonatomic,weak) IBOutlet UILabel *Start;
@property(nonatomic,weak) IBOutlet UILabel *End;
@property(nonatomic,weak) IBOutlet UILabel *Slash1;
@property(nonatomic,weak) IBOutlet UILabel *Slash2;
@property(nonatomic,weak) IBOutlet UITextField *CompanyEntry;
@property(nonatomic,weak) IBOutlet UITextField *PositionEntry;
@property(nonatomic,weak) IBOutlet UITextField *StartEntryMonth;
@property(nonatomic,weak) IBOutlet UITextField *StartEntryYear;
@property(nonatomic,weak) IBOutlet UITextField *EndtEntryMonth;
@property(nonatomic,weak) IBOutlet UITextField *EndEntryYear;
@end
