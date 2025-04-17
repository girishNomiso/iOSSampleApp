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
    @discardableResult
    func enterEmail(_ text: String) -> XULoginRobot {
        let emailTextField = app.textFields["Email"]
        enterText(emailTextField, text: text)
//        waitForElementExist(emailTextField)
//        emailTextField.tap()
//        emailTextField.clearAndEnterText(text)
        return self
    }
    
    @discardableResult
    func enterPassword(_ text: String) -> XULoginRobot {
        let passwordSecureField = app.secureTextFields["Password"]
        enterText(passwordSecureField, text: text)
//        waitForElementExist(passwordSecureField)
//        passwordSecureField.tap()
//        passwordSecureField.clearAndEnterText(text)
        return self
    }
    
    @discardableResult
    func tapSignIn() -> XULoginRobot {
        let signInButton = app.buttons["Sign In"]
        tap(signInButton)
//        waitForElementExist(signInButton)
//        signInButton.tap()
        return self
    }
    
    @discardableResult
    func verifyInvalidInputErrorMessage() -> XULoginRobot {
        let alert = app.staticTexts["Please enter email and password"]
        waitForElementExist(alert)
        return self
    }
    
    @discardableResult
    func tapOkInAlert() -> XULoginRobot {
        let okButton = app.buttons["OK"]
        tap(okButton)
//        waitForElementExist(okButton)
//        okButton.tap()
        return self
    }
}

extension XUBaseTest {
    var loginRobot: XULoginRobot {
        return XULoginRobot(app: self.app)
    }
}
