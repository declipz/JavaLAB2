//
//  TestableBinaryArithmetic.swift
//  JavaLAB2
//
//  Created by Vladislav Kondrashkov on 10/11/18.
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

protocol ThrowingTestableBinaryArithmetic {
    static func + (lhs: Self, rhs: Self) throws -> Self
    static func - (lhs: Self, rhs: Self) throws -> Self
    static func * (lhs: Self, rhs: Self) throws -> Self
    static func / (lhs: Self, rhs: Self) throws -> Self
    static func % (lhs: Self, rhs: Self) throws -> Self
}

extension ThrowingTestableBinaryArithmetic where Self: TestableBinaryArithmetic {
    static func + (lhs: Self, rhs: Self) throws -> Self { return lhs + rhs }
    static func - (lhs: Self, rhs: Self) throws -> Self { return lhs - rhs }
    static func * (lhs: Self, rhs: Self) throws -> Self { return lhs * rhs }
    static func / (lhs: Self, rhs: Self) throws -> Self { return lhs / rhs }
    static func % (lhs: Self, rhs: Self) throws -> Self { return lhs % rhs }
}
