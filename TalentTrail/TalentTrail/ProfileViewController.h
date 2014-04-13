//
//  ProfileViewController.h
//  TalentTrail
//
//  Created by Parker Seagren on 4/12/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *searchButton;
@property (weak, nonatomic) IBOutlet UILabel *FirstName;
@property (weak, nonatomic) IBOutlet UILabel *LastName;
@property (weak, nonatomic) IBOutlet UILabel *Phone;
@property (weak, nonatomic) IBOutlet UILabel *Email;
@property (weak, nonatomic) IBOutlet UILabel *School;
@property (weak, nonatomic) IBOutlet UILabel *Degree;
@property (weak, nonatomic) IBOutlet UILabel *GraduationYear;
@property (weak, nonatomic) IBOutlet UILabel *GraduationMonth;
@property (weak, nonatomic) IBOutlet UILabel *GPA;
@property (weak, nonatomic) IBOutlet UILabel *Major;

@end
