//
//  ScoreKeeper.h
//  Maths
//
//  Created by Chris Eloranta on 2018-02-14.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic) int wonRounds;
@property (nonatomic) int lostRounds;
@property (nonatomic) int totalRounds;
@property (nonatomic) float cumulativePercentage;
@property (nonatomic) NSString *scoreCard;

- (NSString*) scoreBoard;


@end
