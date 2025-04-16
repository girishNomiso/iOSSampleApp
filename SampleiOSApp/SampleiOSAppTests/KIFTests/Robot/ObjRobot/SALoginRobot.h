//
//  SALoginRobot.h
//  SampleiOSApp
//
//  Created by Girish Chauhan on 16/04/25.
//  Copyright © 2025 Girish. All rights reserved.
//

#ifndef SALoginRobot_h
#define SALoginRobot_h
//#import <KIF/KIF.h>
#import <Foundation/Foundation.h>
#import "RKTRobot.h"

@interface SALoginRobot : RKTRobot

- (void)enterEmail:(NSString *)text;
- (void)enterPassword:(NSString *)text;
- (void)tapSignIn;
@end

#endif /* SALoginRobot_h */
