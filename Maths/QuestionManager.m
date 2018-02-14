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
        _questions = [[NSMutableArray alloc]init];
        _totalTime = (float)0;
        _meanTime = (float)0;
    }
    
    return self;
}

//- (NSString *) timeOutput{
//    NSString *totalTimeReport = [NSString stringWithFormat:(@"Total time: %.2fs, Average time: %.2fs",5.6, 6.7 )];
    
//    return void;
//}

@end
