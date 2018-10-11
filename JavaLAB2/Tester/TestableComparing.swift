//
//  TestableComparin.swift
//  JavaLAB2
//
//  Created by Vladislav Kondrashkov on 10/11/18.
//  Copyright © 2018 Vladislav Kondrashkov. All rights reserved.
//

import Foundation

protocol TestableComparing {
    static func != (lhs: Self, rhs: Self) -> Bool
    static func < (lhs: Self, rhs: Self) -> Bool
    static func <= (lhs: Self, rhs: Self) -> Bool
    static func > (lhs: Self, rhs: Self) -> Bool
    static func >= (lhs: Self, rhs: Self) -> Bool
}

protocol ThrowingTestableComparing {
    static func != (lhs: Self, rhs: Self) throws -> Bool
    static func < (lhs: Self, rhs: Self) throws -> Bool
    static func <= (lhs: Self, rhs: Self) throws -> Bool
    static func > (lhs: Self, rhs: Self) throws -> Bool
    static func >= (lhs: Self, rhs: Self) throws -> Bool
}

extension ThrowingTestableComparing where Self: TestableComparing {
    static func != (lhs: Self, rhs: Self) throws -> Bool { return lhs != rhs }
    static func < (lhs: Self, rhs: Self) throws -> Bool { return lhs < rhs }
    static func <= (lhs: Self, rhs: Self) throws -> Bool { return lhs <= rhs }
    static func > (lhs: Self, rhs: Self) throws -> Bool { return lhs > lhs }
    static func >= (lhs: Self, rhs: Self) throws -> Bool { return lhs >= rhs }
}
