//
//  ConnectionDetailViewController.h
//  TalentTrail
//
//  Created by Parker Seagren on 4/26/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConnectionDetailViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *positionLabel;
@property (weak, nonatomic) IBOutlet UILabel *companyLabel;
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;
@property (weak, nonatomic) IBOutlet UILabel *phoneLabel;
@property (weak, nonatomic) IBOutlet UIImageView *connectionImageView;

@property (weak, nonatomic) IBOutlet UIButton *emailButton;
@property (weak, nonatomic) IBOutlet UIButton *callButton;


@property NSString * firstName;
@property NSString * position;
@property NSString * company;
@property NSString * email;
@property NSString * phoneNumber;
@property UIImage * picture;

@end
