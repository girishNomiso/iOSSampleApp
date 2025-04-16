//
//  RKTRobot.h
//  SampleiOSApp
//
//  Created by Girish Chauhan on 07/04/25.
//  Copyright © 2025 Girish. All rights reserved.
//

#ifndef RKTRobot_h
#define RKTRobot_h

#import <KIF/KIF.h>
@import XCTest;


@interface RKTRobot : NSObject <KIFTestActorDelegate>

@property (nonatomic) NSString *name;

- (nonnull instancetype)initWithTestCase:(nonnull XCTestCase *)testCase NS_DESIGNATED_INITIALIZER;

@property (nonatomic, readonly, nonnull, unsafe_unretained) XCTestCase *testCase;

- (nonnull instancetype)init NS_UNAVAILABLE;

@end
#endif /* RKTRobot_h */
