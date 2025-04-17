//
//  SWHomeRobot.swift
//  SampleiOSAppTests
//
//  Created by Girish Chauhan on 16/04/25.
//  Copyright © 2025 Girish. All rights reserved.
//

import Foundation

public final class KIFHomeRobot: KIFRobot {
    func verifyHomeScreen() {
        viewTester()
            .usingLabel("Welcome to the Buy Smart Shop!")
            .waitForView()
    }
}

extension XCTestCase {
    public var homeRobot: KIFHomeRobot {
        return KIFHomeRobot(testCase: self)
    }
}
