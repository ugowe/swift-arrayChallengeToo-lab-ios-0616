//
//  ArrayChallengeDeuceTests.swift
//  ArrayChallengeDeuceTests
//
//  Created by James Campagno on 6/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Quick
import Nimble
@testable import ArrayChallengeDeuce

class ArrayChallengeDeuceTests: QuickSpec {
    
    override func spec() {
        
        let testVC = ViewController()
        
        let numberList:[Int] = [23,36,84,123,834,12,5,9,92,274]
        let finalList:[Int] = [23, 123, 5, 9]

        
        describe("generateNumbers(_:)") {
            
            it("Returns a list of numbers with even numbers removed") {
                
                let oddList = testVC.generateNumbers(numberList)
                
                expect(oddList.count).to(equal(4))
                
                expect(oddList[0]).to(equal(23))
                
                expect(oddList[3]).to(equal(9))
                
                expect(oddList).to(equal(finalList))
                
            }
            
        }
        
        describe("viewDidLoad()") {
            
            it("Should call generateNumbers(_:) and assign the return value to the oddNumbers variable on the ViewController") {
                
                testVC.viewDidLoad()
                
                expect(testVC.generateNumbers).to(equal(finalList))
                
            }
            
        }
        
    }
    
}