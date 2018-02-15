//
//  SubtractionQuestion.m
//  Maths
//
//  Created by Chris Eloranta on 2018-02-14.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void) generateQuestion{
    
    // grab randomly generated numbers from superclass 'question'
    int localLefthandValue = (int)super.lefthandValue;
    int localRighthandValue = (int)super.righthandValue;
    super.correctAnswer = localLefthandValue - localRighthandValue;
    super.question = [NSString stringWithFormat:@"What is %d minus %d",localLefthandValue, localRighthandValue];
    
    //create question and set new question in superclass 'question;
    
    
    
    
    return;
};
@end
