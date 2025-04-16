//
//  SALoginRobot.m
//  SampleiOSAppTests
//
//  Created by Girish Chauhan on 16/04/25.
//  Copyright © 2025 Girish. All rights reserved.
//

#import "SALoginRobot.h"

@implementation SALoginRobot

- (instancetype)initWithTestCase:(XCTestCase *)testCase;
{
    return [super initWithTestCase:testCase];
}

- (void)enterEmail:(NSString *)text {
    [[viewTester usingLabel:@"Email"] tap];
    [[viewTester usingFirstResponder] enterText:text];
}

- (void)enterPassword:(NSString *)text {
    [[viewTester usingLabel:@"Password"] tap];
    [[viewTester usingFirstResponder] enterText:text];
}

- (void)tapSignIn {
    [[viewTester usingLabel: @"Sign In"] tap];
}

@end
