//
//  ThrowingTestable.swift
//  JavaLAB2
//
//  Created by Vladislav Kondrashkov on 10/10/18.
//  Copyright © 2018 Vladislav Kondrashkov. All rights reserved.
//

import Foundation

protocol ThrowingTestableBinaryArithmetic {
    static func + (lhs: Self, rhs: Self) throws -> Self
    static func - (lhs: Self, rhs: Self) throws -> Self
    static func * (lhs: Self, rhs: Self) throws -> Self
    static func / (lhs: Self, rhs: Self) throws -> Self
    static func % (lhs: Self, rhs: Self) throws -> Self
}

protocol ThrowingTestableUnaryArithmetics {
    static prefix func - (_ operand: Self) -> Self
    static prefix func + (_ operand: Self) -> Self
}

protocol ThrowingTestableBitwise {
    static func & (lhs: Self, rhs: Self) -> Self
    static func | (lhs: Self, rhs: Self) -> Self
    static func ^ (lhs: Self, rhs: Self) -> Self
    static prefix func ~(_ operand: Self) -> Self
    static func >> <RHS: BinaryInteger>(lhs: Self, rhs: RHS) -> Self
    static func << <RHS: BinaryInteger>(lhs: Self, rhs: RHS) -> Self
}

protocol ThrowingTestableAssignment {
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

protocol ThrowingTestableComparing {
    static func != (lhs: Self, rhs: Self) -> Bool
    static func <= (lhs: Self, rhs: Self) -> Bool
    static func >= (lhs: Self, rhs: Self) -> Bool
    static func > (lhs: Self, rhs: Self) -> Bool
}

extension ThrowingTestableBinaryArithmetic where Self: TestableBinaryArithmetic {
    static func + (lhs: Self, rhs: Self) throws -> Self { return lhs + rhs }
    static func - (lhs: Self, rhs: Self) throws -> Self { return lhs - rhs }
    static func * (lhs: Self, rhs: Self) throws -> Self { return lhs * rhs }
    static func / (lhs: Self, rhs: Self) throws -> Self { return lhs / rhs }
    static func % (lhs: Self, rhs: Self) throws -> Self { return lhs % rhs }
}
