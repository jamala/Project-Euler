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

func sumOfMultiples(of factor: Int, bound: Int) -> Int {
    let countOfMultiples = (bound - 1)/factor
    let sum = (countOfMultiples * (countOfMultiples + 1))/2
    return sum * factor
}

let answer = sumOfMultiples(of: 3, bound: 100) + sumOfMultiples(of: 5, bound: 100) - sumOfMultiples(of: 15, bound: 100)
print(answer)
