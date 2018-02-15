//
//  QuestionManager.h
//  Maths
//
//  Created by Chris Eloranta on 2018-02-14.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

@interface QuestionManager : NSObject

@property (nonatomic) NSMutableArray *questions;
@property (nonatomic) float totalTime;
@property (nonatomic) float meanTime;
@property (nonatomic) int result;
@property (nonatomic) NSTimeInterval gameTotalTime;
@property (nonatomic) NSTimeInterval gameMeanTime;


-(NSString*) gameTimeTotals;



@end
