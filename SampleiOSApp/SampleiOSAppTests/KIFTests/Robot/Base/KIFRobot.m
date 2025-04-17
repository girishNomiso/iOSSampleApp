//
//  KIFRobot.m
//  SampleiOSAppTests
//
//  Created by Girish Chauhan on 07/04/25.
//  Copyright © 2025 Girish. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KIFRobot.h"

@implementation KIFRobot

#pragma mark - KIFTestActorDelegate

- (void)failWithException:(NSException *)exception stopTest:(BOOL)stop;
{
    [self.testCase failWithException:exception stopTest:stop];
}

- (void)failWithExceptions:(NSArray *)exceptions stopTest:(BOOL)stop;
{
    [self.testCase failWithExceptions:exceptions stopTest:stop];
}

#pragma mark - Public Methods - Initialization


#pragma mark - Public Methods

- (instancetype)initWithTestCase:(XCTestCase *)testCase;
{
    self = [super init];
    if (!self) {
        return nil;
    }

    // testCase must not be nil, a nil testCase results in false positive testing!
    NSParameterAssert(testCase);

    _testCase = testCase;
    return self;
}

@end
