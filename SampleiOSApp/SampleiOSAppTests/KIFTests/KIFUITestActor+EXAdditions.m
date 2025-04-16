//
//  KIFUITestActor+EXAdditions.m
//  SampleiOSAppTests
//
//  Created by Girish Chauhan on 07/04/25.
//  Copyright © 2025 Girish. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KIFUITestActor+EXAdditions.h"

@implementation KIFUITestActor (EXAdditions)

- (void)navigateToLoginPage
{
    [self tapViewWithAccessibilityLabel:@"Login/Sign Up"];
    [self tapViewWithAccessibilityLabel:@"Skip this ad"];
}

- (void)returnToLoggedOutHomeScreen
{
    [self tapViewWithAccessibilityLabel:@"Logout"];
    [self tapViewWithAccessibilityLabel:@"Logout"]; // Dismiss alert.
}

@end
