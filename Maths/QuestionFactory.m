//
//  QuestionFactory.m
//  Maths
//
//  Created by Chris Eloranta on 2018-02-14.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        //generates an indexed list of question types
        NSArray *questionTypes = @[@"AdditionQuestion",@"SubtractionQuestion",@"MultiplicationQuestion",@"DivisionQuestion"];
        _questionTypes = questionTypes;
    }
    return self;
}

- (int) generateQuestionTypeIndex{
    int index = arc4random_uniform(4);
    return index;
}


- (NSString*) generateQuestionType{
    int index = [self generateQuestionTypeIndex];
    NSString *type = [self.questionTypes objectAtIndex:index];
    NSLog(@"Let's go with %@",type);
    return type;
}

- (Question*) generateRandomQuestion{
    NSString* returnString = [self generateQuestionType];
    //Creates a question of the type returned by questionFactory
     Question *currentQuestion = [[NSClassFromString (returnString) alloc]init];
    //  self =[[AdditionQuestion alloc] init];
    return currentQuestion;
}

@end

