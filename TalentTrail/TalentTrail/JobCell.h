//
//  JobCell.h
//  TalentTrail
//
//  Created by Kevin on 4/12/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JobCell : UITableViewCell
@property(nonatomic,weak) IBOutlet UILabel *Position;
@property(nonatomic,weak) IBOutlet UILabel *Job;
@property(nonatomic,weak) IBOutlet UIImageView *Picture;
@end
