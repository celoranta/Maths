//
//  main.m
//  Maths
//
//  Created by Chris Eloranta on 2018-02-13.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while(true){
        // create a command line game called Maths that will generate a random addition question
        // prompt the user to input their answer
            int mathValueOne = arc4random_uniform(100);
            int mathValueTwo = arc4random_uniform(100);
            NSLog(@"What is %i + %i?",mathValueOne,mathValueTwo);
            
            char userInput[255];
            NSLog(@"Please enter your answer");
            fgets(userInput,255,stdin);
            NSString * userInputConverted = [NSString stringWithCString:userInput encoding:NSUTF8StringEncoding];
            NSInteger userInputConvertedValue = [userInputConverted integerValue];
            NSInteger answer = mathValueOne + mathValueTwo;
            if (userInputConvertedValue == answer){
                NSLog(@"You sexy genius!!");
            }
            else {
                NSLog(@"Ummm...  ok.  Try again, please.");
            }
            
        
        
        // parse the user's inputted answer and convert it to a primitive NSInteger
        
        // log "Right!" for correct and "Wrong!" for incorrect answers
        
        // present the next question immediately after the app outputs the evaluation of the user's input (for now there's no exit option)
        
        //  add the ability to exit the game
        
// add a scoring function to the game
    }
    }
    return 0;
}
