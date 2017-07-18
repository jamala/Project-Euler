//
//  p003.swift
//  
//
//  Created by Jamal Rogers on 7/18/17.
//

import Foundation

func primes (upTo bound: Int) -> [Int] {
    
    guard bound > 1 else { return [] }
    var sieve: [Bool] = Array(repeating: true, count: bound + 1)
    sieve[0] = false
    sieve[1] = false
    for number in 2...Int(sqrt(Double(bound))) {
        if sieve[number] {
            for multiple in stride(from: number * 2, through: bound, by: number) {
                sieve[multiple] = false
            }
        }
    }
    return sieve.enumerated().flatMap { ( $1 ? $0 : nil ) }
}

func largestPrimeFactor(of product: Int) -> Int? {

    let allPrimes = primes(upTo: product)

    let primeFactors = allPrimes.filter { product % $0 == 0}
    let largestPrimeFactor =  primeFactors.last

    return largestPrimeFactor

}

func largestPrimeFactor2(of product: Int) -> Int? {
    var temp = product
    var primeList = primes(upTo: 10000)
    var prime: Int = 0
    
    while primeList.count > 0 {
        prime = primeList.removeFirst()
        while temp % prime == 0 {
            temp = temp / prime
        }
        
        if temp == 1 {
            return prime
        }
    }
    
    return nil
}

print(largestPrimeFactor2(of: 600851475143))

