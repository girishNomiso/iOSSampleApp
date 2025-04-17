//
//  LoginTests.swift
//  SampleiOSAppTests
//
//  Created by Girish Chauhan on 07/04/25.
//  Copyright © 2025 Girish. All rights reserved.
//

import XCTest

final class LoginTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func testExample() throws {
        super.setUp()
        
    }
}

final class KIFLoginTests: KIFTestCase {
    /**
     * Test case: Invalid Input in Login Flow
     */
    func testLoginInputError() {
        // ACT: Tap Sign In button with empty Email & Password
        loginRobot.tapSignIn()
        
        // ASSERT: Verify Invalid Input Error
        loginRobot.verifyInvalidInputErrorMessage()
        loginRobot.tapOkInAlert()
        
        // ACT: Keep Only Password Empty
        loginRobot.enterEmail(text: "abc@test.com")
        
        // ACT: Tap Sign In button
        loginRobot.tapSignIn()
        
        // ASSERT: Verify Invalid Input Error
        loginRobot.verifyInvalidInputErrorMessage()
        loginRobot.tapOkInAlert()
        
    }
    
    /**
     * Test case: Success Login Flow
     */
    func testSuccessfulLogin() {
        loginRobot.enterEmail(text: "girish.nomiso@gmail.com")
        loginRobot.enterPassword(text: "ABC123")
        loginRobot.tapSignIn()
        
        // ASSERT: Home screen appears
        homeRobot.verifyHomeScreen()
    }
}
    
