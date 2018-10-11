//
//  TestableAssignment.swift
//  JavaLAB2
//
//  Created by Vladislav Kondrashkov on 10/11/18.
//  Copyright © 2018 Vladislav Kondrashkov. All rights reserved.
//

import Foundation

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

protocol ThrowingTestableAssignment {
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
}

extension ThrowingTestableAssignment where Self: TestableAssignment {
    static func += (lhs: inout Self, rhs: Self) throws { lhs += rhs }
    static func -= (lhs: inout Self, rhs: Self) throws { lhs -= rhs }
    static func *= (lhs: inout Self, rhs: Self) throws { lhs *= rhs }
    static func /= (lhs: inout Self, rhs: Self) throws { lhs /= rhs }
    static func %= (lhs: inout Self, rhs: Self) throws { lhs %= rhs }
    static func &= (lhs: inout Self, rhs: Self) throws { lhs &= rhs }
    static func |= (lhs: inout Self, rhs: Self) throws { lhs |= rhs }
    static func ^= (lhs: inout Self, rhs: Self) throws { lhs ^= rhs }
    static func >>= <RHS: BinaryInteger>(lhs: inout Self, rhs: RHS) throws { lhs >>= rhs }
    static func <<= <RHS: BinaryInteger>(lhs: inout Self, rhs: RHS) throws { lhs <<= rhs }
}
