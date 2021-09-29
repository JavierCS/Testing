//
//  Pattern Matching.swift
//  
//
//  Created by jcruzsa on 28/09/21.
//

//public func ~= (patter: KeyPath<Character, Bool>, value: Character) -> Bool {
//    value[keyPath: patter]
//}
//
//public func ~= (patter: KeyPath<Double, Bool>, value: Double) -> Bool {
//    value[keyPath: patter]
//}

public func ~= <Value> (pattern: KeyPath<Value, Bool>, value: Value) -> Bool {
    value[keyPath: pattern]
}

public func ~= <Value> (pattern: (Value) -> Bool, value: Value) -> Bool {
    false
}
