//
//  InputHandler.m
//  Maths
//
//  Created by Chris Eloranta on 2018-02-13.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import "InputHandler.h"
#import "AdditionQuestion.h"

@implementation InputHandler




- (NSString*) queryUser{
    
    
    //create question
    AdditionQuestion *currentQuestion = [[AdditionQuestion alloc]init];
    _question = currentQuestion.question;
    _correctAnswer = currentQuestion.answer;
    NSLog(currentQuestion.question);
    
    NSLog(@"Please Enter an Answer:");
    char userInput[255];
    fgets(userInput,255,stdin);
    
    // this takes user answer and cleans it up to a nice NSString
    NSCharacterSet *inputCharacterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *userInputConverted = [NSString stringWithCString:userInput encoding:NSUTF8StringEncoding];
    NSString *userInputTrimmed = [userInputConverted stringByTrimmingCharactersInSet:inputCharacterSet];
    

    
    return userInputTrimmed;
    
}

@end

