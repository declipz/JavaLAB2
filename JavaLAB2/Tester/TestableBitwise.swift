//
//  TestableBitwise.swift
//  JavaLAB2
//
//  Created by Vladislav Kondrashkov on 10/11/18.
//  Copyright © 2018 Vladislav Kondrashkov. All rights reserved.
//

import Foundation

protocol TestableBitwise {
    static func & (lhs: Self, rhs: Self) -> Self
    static func | (lhs: Self, rhs: Self) -> Self
    static func ^ (lhs: Self, rhs: Self) -> Self
    static prefix func ~(_ operand: Self) -> Self
    static func >> <RHS: BinaryInteger>(lhs: Self, rhs: RHS) -> Self
    static func << <RHS: BinaryInteger>(lhs: Self, rhs: RHS) -> Self
}

protocol ThrowingTestableBitwise {
    static func & (lhs: Self, rhs: Self) throws -> Self
    static func | (lhs: Self, rhs: Self) throws -> Self
    static func ^ (lhs: Self, rhs: Self) throws -> Self
    static prefix func ~(_ operand: Self) throws -> Self
    static func >> <RHS: BinaryInteger>(lhs: Self, rhs: RHS) throws -> Self
    static func << <RHS: BinaryInteger>(lhs: Self, rhs: RHS) throws -> Self
}

extension ThrowingTestableBitwise where Self: TestableBitwise {
    static func & (lhs: Self, rhs: Self) throws -> Self { return lhs & rhs }
    static func | (lhs: Self, rhs: Self) throws -> Self { return lhs | rhs }
    static func ^ (lhs: Self, rhs: Self) throws -> Self { return lhs ^ rhs }
    static prefix func ~(_ operand: Self) throws -> Self { return ~operand }
    static func >> <RHS: BinaryInteger>(lhs: Self, rhs: RHS) throws -> Self { return lhs >> rhs }
    static func << <RHS: BinaryInteger>(lhs: Self, rhs: RHS) throws -> Self { return lhs << rhs }
}
