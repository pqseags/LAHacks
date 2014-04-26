//
//  ConnectionDetailViewController.h
//  TalentTrail
//
//  Created by Parker Seagren on 4/26/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConnectionDetailViewController : UIViewController

@property NSString * firstName;
@property NSString * lastName;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;


@end
