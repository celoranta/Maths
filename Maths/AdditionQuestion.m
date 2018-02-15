//
//  AdditionQuestion.m
//  Maths
//
//  Created by Chris Eloranta on 2018-02-13.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion



- (instancetype)init {
    if(self = [super init]){
        // Generates random number
        int mathValueOne = arc4random_uniform(90)+10;
        int mathValueTwo = arc4random_uniform(90)+10;
        _startTime = [NSDate date];
        _question = [NSString stringWithFormat:@"What is %i plus %i",mathValueOne, mathValueTwo];
        // Sum values to create answer
        _correctAnswer = mathValueOne + mathValueTwo;
    }
    return self;
}

//overriding getter
- (NSInteger) correctAnswer{
    
    self.endTime = [NSDate date];
    NSInteger answer = _correctAnswer;
    return answer;
}

- (void) queryUser {
    
        NSLog(self.question);
        NSLog(@"Please Enter an Answer:");
        char userInput[255];
        fgets(userInput,255,stdin);
        
        // this takes user answer and cleans it up to a nice NSString
        NSCharacterSet *inputCharacterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        NSString *userInputConverted = [NSString stringWithCString:userInput encoding:NSUTF8StringEncoding];
        NSString *userInputTrimmed = [userInputConverted stringByTrimmingCharactersInSet:inputCharacterSet];
        self.userAnswer = userInputTrimmed;
        return;
    }


- (NSTimeInterval)answerTime{
    NSDate *endTime = [NSDate date];
    NSTimeInterval roundDuration = [endTime timeIntervalSinceDate: self.startTime];
    return roundDuration;
}

@end
