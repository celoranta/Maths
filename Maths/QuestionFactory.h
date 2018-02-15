//
//  QuestionFactory.h
//  Maths
//
//  Created by Chris Eloranta on 2018-02-14.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import "Question.h"

@interface QuestionFactory : NSObject

@property (nonatomic, readonly) NSArray *questionTypes;

- (int) generateQuestionTypeIndex;

- (NSString*) generateQuestionType;

- (Question*) generateRandomQuestion;

@end
