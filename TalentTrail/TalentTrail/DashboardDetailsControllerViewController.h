//
//  DashboardDetailsControllerViewController.h
//  TalentTrail
//
//  Created by Kevin on 4/13/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DashboardDetailsControllerViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *ReqField;
@property (weak, nonatomic) IBOutlet UITextView *InfoField;
@property (weak, nonatomic) NSString *Req;
@property (weak, nonatomic) NSString *Info;


//- (IBAction)close:(id)sender;

@end
