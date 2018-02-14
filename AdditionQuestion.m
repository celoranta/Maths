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
        _question = [NSString stringWithFormat:@"What is %i plus %i",mathValueOne, mathValueTwo];
        // Sum values to create answer
        _answer = mathValueOne + mathValueTwo;
    }
    return self;
}

@end
