//
//  EditProfileSkillsCell.h
//  TalentTrail
//
//  Created by Kevin on 4/12/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditProfileSkillsCell : UITableViewCell
@property(nonatomic,weak) IBOutlet UILabel *Skill;
@property(nonatomic,weak) IBOutlet UILabel *Rating;
@property(nonatomic,weak) IBOutlet UILabel *Fraction;
@property(nonatomic,weak) IBOutlet UITextField *SkillEntry;
@property(nonatomic,weak) IBOutlet UITextField *RatingEntry;
@end
