//
//  KIFRobot.h
//  SampleiOSApp
//
//  Created by Girish Chauhan on 07/04/25.
//  Copyright © 2025 Girish. All rights reserved.
//

#ifndef KIFRobot_h
#define KIFRobot_h

#import <KIF/KIF.h>
@import XCTest;


@interface KIFRobot : NSObject <KIFTestActorDelegate>

@property (nonatomic) NSString *name;

- (nonnull instancetype)initWithTestCase:(nonnull XCTestCase *)testCase NS_DESIGNATED_INITIALIZER;

@property (nonatomic, readonly, nonnull, unsafe_unretained) XCTestCase *testCase;

- (nonnull instancetype)init NS_UNAVAILABLE;

@end
#endif /* KIFRobot_h */
