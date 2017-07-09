//
//  p002.swift
//
//
//  Created by Jamal Rogers on 7/8/17.
//

import Foundation

func fibboniacis(under bound:Int) -> [Int] {
    var result: [Int] = [1,2]
    
    var next = result[0] + result[1]
    while next <= bound {
        result.append(next)
        next = result[result.count - 1] + result[result.count - 2]
    }
    return result
}

print(fibboniacis(under: 4000000).filter { $0 % 2 == 0 }.reduce(0, +))
