//
//  JobDetailViewController.h
//  TalentTrail
//
//  Created by Parker Seagren on 4/25/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JobDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *companyNameLabel;

@property (weak, nonatomic) IBOutlet UILabel *positionTitleLabel;
@property (weak, nonatomic) IBOutlet UITextView *requirementsText;
@property (weak, nonatomic) IBOutlet UITextView *descriptionText;

@property NSString *companyName;
@property NSString *positionTitle;
@property NSString *requirements;
@property NSString *description;


@end
