//
//  String+Formatting.swift
//  UnitTestsUdemy
//
//  Created by José Henrique Fernandes Silva on 22/08/22.
//

import Foundation

extension String {
    func removewhitespace() -> String {
        return self.replace(string: " ", replacement: "")
    }
    
    func replace(string: String, replacement: String) -> String {
        return self.replacingOccurrences(of: string,
                                         with: replacement,
                                         options: .literal,
                                         range: nil)
    }
    
    func isValidEmailAddress() -> Bool {
        let emailRegEx = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    func isBigText() -> Bool? {
        if self.split(separator: " ").count >= 5 {
            return true
        } else if self.split(separator: " ").count < 5 &&
                    self.split(separator: " ").count > 0 {
            return false
        }
        return nil
    }
}
