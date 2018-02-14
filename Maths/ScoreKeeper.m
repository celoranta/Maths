//
//  ScoreKeeper.m
//  Maths
//
//  Created by Chris Eloranta on 2018-02-14.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (NSString*) scoreBoard {

    self.cumulativePercentage = ((float)self.wonRounds/self.totalRounds)*100;
    self.scoreCard = [NSString stringWithFormat:@"Score: %d right, %d wrong ----- %d percent",self.wonRounds,self.lostRounds,(int)self.cumulativePercentage];
    return self.scoreCard;
    
}

@end
// + (instancetype)stringWithFormat:(NSString *)format, ... NS_FORMAT_FUNCTION(1,2);
