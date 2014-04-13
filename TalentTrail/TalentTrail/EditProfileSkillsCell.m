//
//  EditProfileSkillsCell.m
//  TalentTrail
//
//  Created by Kevin on 4/12/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import "EditProfileSkillsCell.h"

@implementation EditProfileSkillsCell
@synthesize Skill = _Skill;
@synthesize Rating = _Rating;
@synthesize Fraction = _Fraction;
@synthesize SkillEntry = _SkillEntry;
@synthesize RatingEntry = _RatingEntry;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
