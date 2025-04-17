//
//  SWLoginRobot.swift
//  SampleiOSAppTests
//
//  Created by Girish Chauhan on 16/04/25.
//  Copyright © 2025 Girish. All rights reserved.
//

import Foundation

public final class KIFLoginRobot: KIFRobot {
    
    func enterEmail(text: String) {
        self.viewTester()
            .usingLabel("Email").tap()
        self.viewTester().usingFirstResponder().clearAndEnterText(text)
    }
    
    func enterPassword(text: String) {
        self.viewTester().usingLabel("Password").tap()
        self.viewTester().usingFirstResponder().clearAndEnterText(text)
    }
    
    func tapSignIn() {
        self.viewTester()
            .usingLabel("Sign In")
            .tap()
    }
    
    func verifyInvalidInputErrorMessage() {
        self.viewTester()
            .usingLabel("Please enter email and password")
            .waitForView()
    }
    
    func tapOkInAlert() {
        self.viewTester()
            .usingLabel("OK")
            .tap()
    }
}

extension XCTestCase {
    public var loginRobot: KIFLoginRobot {
        KIFLoginRobot(testCase: self)
    }
}
