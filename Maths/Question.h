//
//  Question.h
//  Maths
//
//  Created by Chris Eloranta on 2018-02-13.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Question : NSObject

@property (strong, nonatomic) NSString *question;
@property (nonatomic) NSInteger correctAnswer;

@property (strong, nonatomic) NSDate *startTime;
@property (strong, nonatomic) NSDate *endTime;
@property (strong, nonatomic) NSString *userAnswer;
@property (nonatomic) int roundNumber;

@property (nonatomic) NSInteger righthandValue;
@property (nonatomic) NSInteger lefthandValue;

- (NSTimeInterval)answerTime;
- (void)queryUser;



@end