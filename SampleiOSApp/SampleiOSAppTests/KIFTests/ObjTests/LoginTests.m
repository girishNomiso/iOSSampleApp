//
//  LoginTests.m
//  SampleiOSAppTests
//
//  Created by Girish Chauhan on 07/04/25.
//  Copyright © 2025 Girish. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginTests.h"
#import "KIFUITestActor+EXAdditions.h"
#import "SALoginRobot.h"

@implementation LoginTests

- (void)beforeEach
{
//    [tester navigateToLoginPage];
}

- (void)afterEach
{
//    [tester returnToLoggedOutHomeScreen];
}

- (void)testLoginInvalidInputError
{
    SALoginRobot *login = [[SALoginRobot alloc] initWithTestCase:self];
    [login enterEmail: @"user@gmail.com"];
    [login enterPassword: @"thisismypassword"];
    [login tapSignIn];
}

- (void)testSuccessfulLogin
{
    // Email
    [tester tapViewWithAccessibilityLabel:@"Email"];
    [tester enterTextIntoCurrentFirstResponder: @"user@example.com"];
    
    // Password
    [tester tapViewWithAccessibilityLabel:@"Password"];
    [tester enterTextIntoCurrentFirstResponder: @"thisismypassword"];
    
    // Tap Login
    [tester tapViewWithAccessibilityLabel:@"Login"];

    // Verify that the login succeeded
    [tester waitForTappableViewWithAccessibilityLabel:@"Home"];
}
@end
