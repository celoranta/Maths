//
//  QuestionManager.m
//  Maths
//
//  Created by Chris Eloranta on 2018-02-14.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import "QuestionManager.h"



@implementation QuestionManager



- (instancetype) init{
    self = [super init];
    if(self){
        _result = 0;
        _questions = [[NSMutableArray alloc]init];
        _totalTime = (float)0;
        _meanTime = (float)0;
    }
    
    return self;
}

- (NSString*) gameTimeTotals{

    int rounds = (int)[self.questions count];
    self.totalTime =0;
    for (Question *question in self.questions){
        [question answerTime];
        self.totalTime += [question answerTime];
        self.meanTime = self.totalTime/rounds;
    }
        NSString *returnString = [NSString stringWithFormat:@"Total Time: %.0f seconds, Average Time: %.0f seconds.",self.totalTime, self.meanTime];
        return returnString;
}

@end
