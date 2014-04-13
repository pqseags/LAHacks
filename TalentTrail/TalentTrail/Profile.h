//
//  Profile.h
//  TalentTrail
//
//  Created by Parker Seagren on 4/12/14.
//  Copyright (c) 2014 TalentTrail. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Profile : NSObject {
   }
@property (nonatomic, copy) NSString *firstname;
@property (nonatomic, copy) NSString *lastname;
@property (nonatomic, copy) NSString *phone;

@property (nonatomic, copy) NSString *school;
@property (nonatomic, copy) NSString *degree;
@property (nonatomic, copy) NSString *graduationmonth;
@property (nonatomic, copy) NSString *graduationyear;
@property (nonatomic, copy) NSString *major;
@property (nonatomic, copy) NSString *gpa;
@property (nonatomic, copy) NSString *email;

@end
