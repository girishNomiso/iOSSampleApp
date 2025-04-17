//
//  XUHomeRobot.swift
//  SampleiOSAppUITests
//
//  Created by Girish Chauhan on 17/04/25.
//  Copyright © 2025 Girish. All rights reserved.
//

import Foundation
import XCTest

public final class XUHomeRobot: XUBaseRobot {
    func verifyHomeScreen() {
        let welcomeMessage = app.staticTexts["Welcome to the Buy Smart Shop!"]
        XCTAssertTrue(welcomeMessage.waitForExistence(timeout: waitTimeout))
    }
}

extension XUBaseTest {
    var homeRobot: XUHomeRobot {
        return XUHomeRobot(app: self.app)
    }
}
