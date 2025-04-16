//
//  XULoginRobot.swift
//  SampleiOSAppUITests
//
//  Created by Girish Chauhan on 16/04/25.
//  Copyright © 2025 Girish. All rights reserved.
//

import Foundation
import XCTest

public final class XULoginRobot: XUBaseRobot {
    private let app: XCUIApplication
    
    init(app: XCUIApplication = XCUIApplication()) {
        self.app = app
    }
    
    @discardableResult
    func enterEmail(_ text: String) -> XULoginRobot {
        let emailTextField = app.textFields["Email"]
        XCTAssertTrue(emailTextField.waitForExistence(timeout: 5))
        emailTextField.tap()
        emailTextField.clearAndEnterText(text)
        return self
    }
    
    @discardableResult
    func enterPassword(_ text: String) -> XULoginRobot {
        let passwordSecureField = app.secureTextFields["Password"]
        XCTAssertTrue(passwordSecureField.waitForExistence(timeout: 5))
        passwordSecureField.tap()
        passwordSecureField.clearAndEnterText(text)
        return self
    }
    
    @discardableResult
    func tapSignIn() -> XULoginRobot {
        let signInButton = app.buttons["Sign In"]
        XCTAssertTrue(signInButton.waitForExistence(timeout: 5))
        signInButton.tap()
        return self
    }
    
    @discardableResult
    func verifyInvalidInputErrorMessage() -> XULoginRobot {
        let alert = app.staticTexts["Please enter email and password"]
        XCTAssertTrue(alert.waitForExistence(timeout: 5))
        return self
    }
    
    @discardableResult
    func tapOkInAlert() -> XULoginRobot {
        let okButton = app.buttons["OK"]
        XCTAssertTrue(okButton.waitForExistence(timeout: 5))
        okButton.tap()
        return self
    }
}
