//
//  Question.m
//  Maths
//
//  Created by Chris Eloranta on 2018-02-13.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import "Question.h"
#import "QuestionFactory.h"
#import "AdditionQuestion.h"

@implementation Question



- (instancetype)init {
    if(self = [super init]){
        
        // Generates random number (duplicated because I had already created local ints, but required ivars as well for a later step
        int mathValueLeft = arc4random_uniform(9)+1;
        int mathValueRight = arc4random_uniform(9)+1;
        _lefthandValue = mathValueLeft;
        _righthandValue = mathValueRight;
        
        
        //records time of object creation for calculation of time elapsed in each round
        _startTime = [NSDate date];
        
        

        
        
        
        //creates a string with which to query the user in standard ouput
        // commented out to allow string pushed from subclasses
        //_question = [NSString stringWithFormat:@"What is %i plus %i",mathValueLeft, mathValueRight];
        
        // Sum values to create answer
        // line below is to be replaced with data pushed from subclasses
        //_correctAnswer = mathValueLeft + mathValueRight;
    }
    return self;
}

//overriding getter method to include recording of the time of user feedback for calc of time elapsed in each round
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
