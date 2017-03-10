//
//  SwiftLoggerTests.swift
//  SwiftLoggerTests
//
//  Created by user on 10.03.2017.
//  Copyright © 2017 javidp. All rights reserved.
//

import XCTest
@testable import SwiftLogger

class SwiftLoggerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    
        SwiftLogger.initialize(showTime: true, showLevel: true, showTag: true, tags: "test", "login", "HMM")
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLogs() {
        print("----------------------")
        Log.i("test", "test message")
        Log.w("HMM", "hmm message")
        Log.e("login", "login message")
        print("----------------------")
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
