//
//  KIFRobot-SwiftAddition.swift
//  SampleiOSAppTests
//
//  Created by Girish Chauhan on 16/04/25.
//  Copyright © 2025 Girish. All rights reserved.
//

import Foundation

public extension KIFTestActor {
    @nonobjc func viewTester(_ file: StaticString = #file, _ line: UInt = #line) -> KIFUIViewTestActor {
        KIFUIViewTestActor(inFile: "\(file)", atLine: Int(line), delegate: self)
    }

    @nonobjc func system(_ file: StaticString = #file, _ line: UInt = #line) -> KIFSystemTestActor {
        KIFSystemTestActor(inFile: "\(file)", atLine: Int(line), delegate: self)
    }
}

public extension KIFRobot {
    @nonobjc func viewTester(_ file: StaticString = #file, _ line: UInt = #line) -> KIFUIViewTestActor {
        KIFUIViewTestActor(inFile: "\(file)", atLine: Int(line), delegate: self)
    }
}
