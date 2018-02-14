//
//  AdditionQuestion.h
//  Maths
//
//  Created by Chris Eloranta on 2018-02-13.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property (strong, nonatomic) NSString *question;
@property NSInteger correctAnswer;

@property (strong, nonatomic) NSDate *startTime;
@property (strong, nonatomic) NSDate *endTime;
@property (strong, nonatomic) NSString *userAnswer;
@property (nonatomic) int roundNumber;

- (NSTimeInterval)answerTime;
- (void)queryUser;



@end
