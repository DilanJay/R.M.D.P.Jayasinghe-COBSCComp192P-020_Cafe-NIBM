//
//  Validation.swift
//  Cafe-Nibm
//
//  Created by Dilan Pramodya on 2021-03-07.
//

import Foundation
import UIKit

class Validation {
    
    static func passwordValid(_ password : String) -> Bool {
        
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
}
