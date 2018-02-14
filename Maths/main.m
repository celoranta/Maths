//
//  main.m
//  Maths
//
//  Created by Chris Eloranta on 2018-02-13.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"

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
            
            

            InputHandler *currentInputHandler = [[InputHandler alloc]init];
            
            /*
             
             allocate question
             print question question.question
             inputHander queryuser
             
             */
            
            
            NSString *parsedUserAnswer = [currentInputHandler queryUser];
            
            
            
            //check for quit command and break if necessary
            if([parsedUserAnswer isEqualToString:@"quit"]){
                gameOn = NO;
            }
            if(gameOn == NO){
                break;
            }
            
            //feedback to user
            if(parsedUserAnswer.intValue == currentInputHandler.correctAnswer){
                
                
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
