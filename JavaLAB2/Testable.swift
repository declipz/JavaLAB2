//
//  Testable.swift
//  JavaLAB2
//
//  Created by Vladislav Kondrashkov on 10/10/18.
//  Copyright © 2018 Vladislav Kondrashkov. All rights reserved.
//

import Foundation

protocol TestableBinaryArithmetic {
    static func + (lhs: Self, rhs: Self) -> Self
    static func - (lhs: Self, rhs: Self) -> Self
    static func * (lhs: Self, rhs: Self) -> Self
    static func / (lhs: Self, rhs: Self) -> Self
    static func % (lhs: Self, rhs: Self) -> Self
}

protocol TestableUnaryArithmetics {
    static prefix func - (_ operand: Self) -> Self
    static prefix func + (_ operand: Self) -> Self
}

protocol TestableBitwise {
    static func & (lhs: Self, rhs: Self) -> Self
    static func | (lhs: Self, rhs: Self) -> Self
    static func ^ (lhs: Self, rhs: Self) -> Self
    static prefix func ~(_ operand: Self) -> Self
    static func >> <RHS: BinaryInteger>(lhs: Self, rhs: RHS) -> Self
    static func << <RHS: BinaryInteger>(lhs: Self, rhs: RHS) -> Self
}

protocol TestableAssignment {
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
}

protocol TestableComparing {
    static func != (lhs: Self, rhs: Self) -> Bool
    static func <= (lhs: Self, rhs: Self) -> Bool
    static func >= (lhs: Self, rhs: Self) -> Bool
    static func > (lhs: Self, rhs: Self) -> Bool
}

protocol Testable {
    // Binary arithmetical operators
    // Unary arithmetical operators
    // Bitwise operators
    // Assignment operators
    // Comparing operators
    
}
