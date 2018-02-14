//
//  main.m
//  Maths
//
//  Created by Chris Eloranta on 2018-02-13.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        QuestionManager *gameQuestionManager = [[QuestionManager alloc]init];
        
        BOOL gameOn = YES;

        while(true){
   
            AdditionQuestion *currentQuestion = [[AdditionQuestion alloc]init];
            [gameQuestionManager.questions addObject: currentQuestion];
            
            [currentQuestion queryUser];
            
            NSString *parsedUserAnswer = currentQuestion.userAnswer;
            
            //NSLog(@"...your answer was %@",parsedUserAnswer);
            //check for quit command and break if necessary
            if([parsedUserAnswer isEqualToString:@"quit"]){
                gameOn = NO;
            }
            if(gameOn == NO){
                break;
            }
            
            //feedback to user
            if(parsedUserAnswer.intValue == currentQuestion.correctAnswer){
                
                
                NSLog(@"You sexy genius!!");
            }
            else{
                NSLog(@"Ummm...  ok.  Try again, please.");
            }
            NSLog(@"--You took %.2f seconds to complete this round--\n\n\n",[currentQuestion answerTime]);
       

        }
    }
    return 0;
}

