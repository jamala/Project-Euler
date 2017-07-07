//
//  p001.swift
//  
//
//  Created by Jamal Rogers on 7/7/17.
//

import Foundation

extension Int {
    func isMultiple(of factor: Int) -> Bool {
        return self % factor == 0
    }
}



print((1..<1000).filter( { $0.isMultiple(of: 3) || $0.isMultiple(of: 5) }).reduce(0, +))
