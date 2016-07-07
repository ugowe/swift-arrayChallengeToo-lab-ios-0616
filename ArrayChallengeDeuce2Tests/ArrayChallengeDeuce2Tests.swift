//
//  ArrayChallengeDeuce2Tests.swift
//  ArrayChallengeDeuce2Tests
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import XCTest
@testable import ArrayChallengeDeuce2

class ArrayChallengeDeuce2Tests: XCTestCase {
    
    let testVC = ViewController()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testFirstPersonAddedToDeliLine() {
        
        let firstCustomerGreeting = testVC.addNameToDeliLine("Jon Snow")
        let countOfLine = testVC.deliLine.count
        
        let expectedFirstCustomerGreeting = "Welcome Jon Snow, you're first in line!"
        let expectedCountOfLine = 1
        
        XCTAssertEqual(expectedFirstCustomerGreeting, firstCustomerGreeting)
        XCTAssertEqual(expectedCountOfLine, countOfLine)
        
    }
    
    func testBillyCrystalAddedToDeliLine() {
        // Establishing a line with 3 people on it before Billy Crystal walks in.
        testVC.deliLine = ["Jess", "Jacob", "Amanda"]
        
        let billyCrystalGreeting = testVC.addNameToDeliLine("Billy Crystal")
        let countOfLine = testVC.deliLine.count
        let firstPersonInLine = testVC.deliLine[0]
        
        let expectedBillyCrystalGreeting = "Welcome Billy! You can sit wherever you like."
        let expectedCountOfLine = 4
        let expectedFirstPersonInLine = "Billy Crystal"
        
        XCTAssertEqual(expectedBillyCrystalGreeting, billyCrystalGreeting, "incorrect greeting for Billy Crystal")
        XCTAssertEqual(expectedCountOfLine, countOfLine, "incorrect number of people in line, should be 1")
        XCTAssertEqual(expectedFirstPersonInLine, firstPersonInLine, "expecting 'Billy Crystal' to be first in line")
    }
    
    func testNormalPersonAddedToLineWithPeopleAlreadyOnIt() {
        // Establishing a line with 5 people on it before Jim walks in.
        testVC.deliLine = ["Rob", "Catherine", "Paul", "Dom", "Tony"]
        
        let jimGreeting = testVC.addNameToDeliLine("Jim")
        let countOfLine = testVC.deliLine.count
        let lastPersonInLine = testVC.deliLine.last!
        
        
        let expectedJimGreeting = "Welcome Jim, you're number 6 in line."
        let expectedCountOfLine = 6
        let expectedLastPersonInLine = "Jim"
        
        XCTAssertEqual(expectedJimGreeting, jimGreeting, "incorrect greeting for Jim")
        XCTAssertEqual(expectedCountOfLine, countOfLine, "incorrect count of line, should be 6")
        XCTAssertEqual(expectedLastPersonInLine, lastPersonInLine, "incorrect last person in line")
    }
    
}


