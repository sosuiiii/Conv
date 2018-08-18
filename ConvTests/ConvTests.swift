//
//  ConvTests.swift
//  ConvTests
//
//  Created by Yudai.Hirose on 2018/04/25.
//  Copyright © 2018年 廣瀬雄大. All rights reserved.
//

import XCTest
@testable import Conv

class ConvTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCreateSection() {
        XCTContext.runActivity(named: "create section") { (activity) in
            let conv = Conv()
            XCTAssert(conv.sections.count == 0)
            conv.create { (section) in return }
            XCTAssert(conv.sections.count == 1)
        }
        XCTContext.runActivity(named: "create two sections") { (activity) in
            let conv = Conv()
            XCTAssert(conv.sections.count == 0)
            conv.create(for: [make(0), make(1)], sections: { (element, section) in return })
            XCTAssert(conv.sections.count == 2)
        }
    }
}
