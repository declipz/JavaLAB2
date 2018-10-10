//
//  ThrowingTestable.swift
//  JavaLAB2
//
//  Created by Vladislav Kondrashkov on 10/10/18.
//  Copyright © 2018 Vladislav Kondrashkov. All rights reserved.
//

import Foundation

protocol ThrowingTestable {
    // Binary arithmetical operators
    static func + (lhs: Self, rhs: Self) throws -> Self
    static func - (lhs: Self, rhs: Self) throws -> Self
    static func * (lhs: Self, rhs: Self) throws -> Self
    static func / (lhs: Self, rhs: Self) throws -> Self
    static func % (lhs: Self, rhs: Self) throws -> Self
    // Unary arithmetical operators
    static prefix func - (_ operand: Self) throws -> Self
    static prefix func + (_ operand: Self) throws -> Self
    // Bitwise operators
    static func & (lhs: Self, rhs: Self) throws -> Self
    static func | (lhs: Self, rhs: Self) throws -> Self
    static func ^ (lhs: Self, rhs: Self) throws -> Self
    static prefix func ~(_ operand: Self) throws -> Self
    static func >> <RHS: BinaryInteger>(lhs: Self, rhs: RHS) throws -> Self
    static func << <RHS: BinaryInteger>(lhs: Self, rhs: RHS) throws -> Self
    // Assignment operators
    static func += (lhs: inout Self, rhs: Self) throws
    static func -= (lhs: inout Self, rhs: Self) throws
    static func *= (lhs: inout Self, rhs: Self) throws
    static func /= (lhs: inout Self, rhs: Self) throws
    static func %= (lhs: inout Self, rhs: Self) throws
    static func &= (lhs: inout Self, rhs: Self) throws
    static func |= (lhs: inout Self, rhs: Self) throws
    static func ^= (lhs: inout Self, rhs: Self) throws
    static func >>= <RHS: BinaryInteger>(lhs: inout Self, rhs: RHS) throws
    static func <<= <RHS: BinaryInteger>(lhs: inout Self, rhs: RHS) throws
    // Comparing operators
    static func != (lhs: Self, rhs: Self) throws -> Bool
    static func <= (lhs: Self, rhs: Self) throws -> Bool
    static func >= (lhs: Self, rhs: Self) throws -> Bool
    static func > (lhs: Self, rhs: Self) throws  -> Bool
}

extension ThrowingTestable where Self: Testable {
    // Binary arithmetical operators
    static func + (lhs: Self, rhs: Self) throws -> Self { return lhs + rhs }
    static func - (lhs: Self, rhs: Self) throws -> Self { return lhs - rhs }
    static func * (lhs: Self, rhs: Self) throws -> Self { return lhs * rhs }
    static func / (lhs: Self, rhs: Self) throws -> Self { return lhs / rhs }
    static func % (lhs: Self, rhs: Self) throws -> Self { return lhs % rhs }
    // Unary arithmetical operators
    static prefix func - (_ operand: Self) throws -> Self { return -operand }
    static prefix func + (_ operand: Self) throws -> Self { return +operand }
    // Bitwise operators
    static func & (lhs: Self, rhs: Self) throws -> Self { return lhs & rhs }
    static func | (lhs: Self, rhs: Self) throws -> Self
    static func ^ (lhs: Self, rhs: Self) throws -> Self
    static prefix func ~(_ operand: Self) throws -> Self
    static func >> <RHS: BinaryInteger>(lhs: Self, rhs: RHS) throws -> Self
    static func << <RHS: BinaryInteger>(lhs: Self, rhs: RHS) throws -> Self
    // Assignment operators
    static func += (lhs: inout Self, rhs: Self) throws
    static func -= (lhs: inout Self, rhs: Self) throws
    static func *= (lhs: inout Self, rhs: Self) throws
    static func /= (lhs: inout Self, rhs: Self) throws
    static func %= (lhs: inout Self, rhs: Self) throws
    static func &= (lhs: inout Self, rhs: Self) throws
    static func |= (lhs: inout Self, rhs: Self) throws
    static func ^= (lhs: inout Self, rhs: Self) throws
    static func >>= <RHS: BinaryInteger>(lhs: inout Self, rhs: RHS) throws
    static func <<= <RHS: BinaryInteger>(lhs: inout Self, rhs: RHS) throws
    // Comparing operators
    static func != (lhs: Self, rhs: Self) throws -> Bool
    static func <= (lhs: Self, rhs: Self) throws -> Bool
    static func >= (lhs: Self, rhs: Self) throws -> Bool
    static func > (lhs: Self, rhs: Self) throws  -> Bool
}
