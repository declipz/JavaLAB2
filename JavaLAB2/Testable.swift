//
//  Testable.swift
//  JavaLAB2
//
//  Created by Vladislav Kondrashkov on 10/10/18.
//  Copyright © 2018 Vladislav Kondrashkov. All rights reserved.
//

import Foundation

protocol Testable {
    // Binary arithmetical operators
    static func + (lhs: Self, rhs: Self) -> Self
    static func - (lhs: Self, rhs: Self) -> Self
    static func * (lhs: Self, rhs: Self) -> Self
    static func / (lhs: Self, rhs: Self) -> Self
    static func % (lhs: Self, rhs: Self) -> Self
    // Unary arithmetical operators
    static prefix func - (_ operand: Self) -> Self
    static prefix func + (_ operand: Self) -> Self
    // Bitwise operators
    static func & (lhs: Self, rhs: Self) -> Self
    static func | (lhs: Self, rhs: Self) -> Self
    static func ^ (lhs: Self, rhs: Self) -> Self
    static prefix func ~(_ operand: Self) -> Self
    static func >> <RHS: BinaryInteger>(lhs: Self, rhs: RHS) -> Self
    static func << <RHS: BinaryInteger>(lhs: Self, rhs: RHS) -> Self
    // Assignment operators
    static func += (lhs: inout Self, rhs: Self)
    static func -= (lhs: inout Self, rhs: Self)
    static func *= (lhs: inout Self, rhs: Self)
    static func /= (lhs: inout Self, rhs: Self)
    static func %= (lhs: inout Self, rhs: Self)
    static func &= (lhs: inout Self, rhs: Self)
    static func |= (lhs: inout Self, rhs: Self)
    static func ^= (lhs: inout Self, rhs: Self)
    static func >>= <RHS: BinaryInteger>(lhs: inout Self, rhs: RHS)
    static func <<= <RHS: BinaryInteger>(lhs: inout Self, rhs: RHS)
    // Comparing operators
    static func != (lhs: Self, rhs: Self) -> Bool
    static func <= (lhs: Self, rhs: Self) -> Bool
    static func >= (lhs: Self, rhs: Self) -> Bool
    static func > (lhs: Self, rhs: Self) -> Bool
    
}
