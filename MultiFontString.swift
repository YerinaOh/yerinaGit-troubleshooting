//
//  Util.swift
//  Architecture
//
//  Created by ohyesrina on 2021/05/16.
//

import Foundation
import UIKit

extension String {
    
    func getAttributedString() -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString(string: "")
        
        let list = self.map { String($0) }

        for i in list {
            var attrs = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12.0)]
            var gString = NSMutableAttributedString(string:i, attributes:attrs)
            
            if isAlphaNumeric(item: i) {
                attrs = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 19.0)]
                gString = NSMutableAttributedString(string:i, attributes:attrs)
            }
            attributedString.append(gString)
        }

        return attributedString
    }
   
    func isAlphaNumeric(item: String) -> Bool {
        let set = CharacterSet(charactersIn: "0123456789")
        if item.rangeOfCharacter(from: set.inverted) != nil {
            print("false - \(item)")
            return false
        }
        return true
    }
}
