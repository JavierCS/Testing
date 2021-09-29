//
//  File.swift
//  
//
//  Created by jcruzsa on 28/09/21.
//

extension Sequence {
    var first: Element? {
        first { _ in true }
    }
}

//extension Sequence where Element == Int {
//    var sum: Element {
//        reduce(0, +)
//    }
//}
//
//extension Sequence where Element == Double {
//    var sum: Element {
//        reduce(0, +)
//    }
//}

public extension Sequence where Element: AdditiveArithmetic {
    var sum: Element? {
        guard let first = first else { return nil }
        return dropFirst().reduce(first, +)
    }
}
