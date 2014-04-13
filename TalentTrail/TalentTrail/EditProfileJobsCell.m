//
//  EditProfileJobsCell.m
//  TalentTrail
//
//  Created by Kevin on 4/12/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import "EditProfileJobsCell.h"

@implementation EditProfileJobsCell
@synthesize Company = _Company;
@synthesize Position = _Position;
@synthesize Start = _Start;
@synthesize End = _End;
@synthesize Slash1 = _Slash1;
@synthesize Slash2 = _Slash2;
@synthesize CompanyEntry = _CompanyEntry;
@synthesize PositionEntry = _PositionEntry;
@synthesize StartEntryMonth = _StartEntryMonth;
@synthesize StartEntryYear = _StartEntryYear;
@synthesize EndtEntryMonth = _EndtEntryMonth;
@synthesize EndEntryYear = _EndEntryYear;
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
