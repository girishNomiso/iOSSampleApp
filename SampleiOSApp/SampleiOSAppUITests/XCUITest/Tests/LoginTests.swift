//
//  LoginTests.swift
//  SampleiOSAppUITests
//
//  Created by Girish Chauhan on 16/04/25.
//  Copyright © 2025 Girish. All rights reserved.
//

import XCTest

final class LoginTests: XCTestCase {
    
    private let app = XCUIApplication()
    private var loginRobot: XULoginRobot!
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
        loginRobot = XULoginRobot(app: app)
    }
    
    func testEmptyLoginShowsError() {
        // Assert: Invalid Input Error
        loginRobot
            .tapSignIn()
            .verifyInvalidInputErrorMessage()
            .tapOkInAlert()
    }
}
