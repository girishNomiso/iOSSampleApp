//
//  LoginTests.swift
//  SampleiOSAppUITests
//
//  Created by Girish Chauhan on 16/04/25.
//  Copyright © 2025 Girish. All rights reserved.
//

import XCTest

final class XULoginTests: XUBaseTest {
   
    func testLoginInputError() {
        // ASSERT: Invalid Input Error
        loginRobot
            .tapSignIn()
            .verifyInvalidInputErrorMessage()
            .tapOkInAlert()
        // ACT: Enter only email
            .enterEmail("abc@xyz.com")
            .tapSignIn()
        // ASSERT: Alert appear with error message
            .verifyInvalidInputErrorMessage()
            .tapOkInAlert()
    }
    
    func testSuccessfulLogin() {
        loginRobot
            .enterEmail("girish.nomiso@gmail.com")
            .enterPassword("ABC123")
            .tapSignIn()
        
        // ASSERT: Home screen appears
        homeRobot.verifyHomeScreen()
    }
}
