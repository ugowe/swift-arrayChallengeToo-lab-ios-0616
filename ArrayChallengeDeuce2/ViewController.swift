//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String?] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Create your methods here
    
    func addNameToDeliLine(name: String) -> String {
        var welcomeStatement: String = ""
        
        if name == "Billy Crystal" {
            deliLine.insert(name, atIndex: 0)
            welcomeStatement = "Welcome Billy! You can sit wherever you like."
        } else if name == "Meg Ryan" {
            deliLine.insert(name, atIndex: 0)
            welcomeStatement = "Welcome Meg! You can sit wherever you like."
        } else {
            deliLine.append(name)
            if deliLine.count == 1 {
                return "Welcome \(name), you're first in line!"
            } else {
                return "Welcome \(name), you're number \(deliLine.count) in line."
            }
        }
        
        return welcomeStatement
    }
    
    func nowServing() -> String {
        let name : String = ""
        var nowServingStatement: String = ""
        
        if deliLine.isEmpty {
            nowServingStatement = "There is no-one to be served."
        } else {
            nowServingStatement = "Now serving, \(name)."
        }
        
        deliLine.removeFirst()
        return nowServingStatement
    }
    
    func deliLineDescription() -> String {
        
        var deliLineStatement: String
        var listOfNames: [String] = []
        if deliLine.isEmpty {
            deliLineStatement = "The line is currently empty."
        } else {
            for (index, person) in deliLine.enumerate() {
                listOfNames.append("\n \(index + 1) \(person)")
            }
        }
        deliLineStatement = "The line is: \(listOfNames)"
        return deliLineStatement
    }

}
