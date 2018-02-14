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
            NSCharacterSet *inputCharacterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
            NSString *userInputConverted = [NSString stringWithCString:userInput encoding:NSUTF8StringEncoding];
            NSString *userInputTrimmed = [userInputConverted stringByTrimmingCharactersInSet:inputCharacterSet];
            

            if([userInputTrimmed isEqualToString:@"q"]) break;
            NSInteger userInputConvertedValue = [userInputTrimmed integerValue];
            NSInteger answer = mathValueOne + mathValueTwo;
            if (userInputConvertedValue == answer){
                NSLog(@"You sexy genius!!");
            }
            else {
                NSLog(@"Ummm...  ok.  Try again, please.");
            }
            
            
        //  add the ability to exit the game
        
// add a scoring function to the game
    }
    }
    return 0;
}
