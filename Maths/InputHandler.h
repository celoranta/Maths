//
//  InputHandler.h
//  Maths
//
//  Created by Chris Eloranta on 2018-02-13.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

@property NSString *question;
@property NSInteger correctAnswer;

- (NSString*) queryUser;


@end
