//
//  main.m
//  Maths
//
//  Created by Chris Eloranta on 2018-02-13.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;

        while(true){
        // create a command line game called Maths that will generate a random addition question
        // prompt the user to input their answer
            
            // 1. getAdditionQuestion to prompt user input
            // 2. getUserInput
            // 3. convertUserInput to NSString
            // 4.
            
            

            //create question
            AdditionQuestion *currentQuestion = [[AdditionQuestion alloc]init];
            NSLog(currentQuestion.question);
    
            NSLog(@"Please Enter an Answer:");
            char userInput[255];
            fgets(userInput,255,stdin);
            
            // this takes user answer and cleans it up to a nice NSString
            NSCharacterSet *inputCharacterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
            NSString *userInputConverted = [NSString stringWithCString:userInput encoding:NSUTF8StringEncoding];
            NSString *userInputTrimmed = [userInputConverted stringByTrimmingCharactersInSet:inputCharacterSet];
            
            //check for quit command and break if necessary
            if([userInputTrimmed isEqualToString:@"quit"]){
                gameOn = NO;
            }
            if(gameOn == NO){
                break;
            }
            
            //check answer for correct value
            NSInteger userAnswer = userInputConverted.intValue;
            
            //feedback to user
            if(currentQuestion.answer == userAnswer){
                NSLog(@"You sexy genius!!");
            }
            else{
                NSLog(@"Ummm...  ok.  Try again, please.");
            }

        
// add a scoring function to the game
        }
    }
    return 0;
}
