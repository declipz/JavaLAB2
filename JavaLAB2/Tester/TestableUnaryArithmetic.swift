//
//  TestableUnaryArithmetic.swift
//  JavaLAB2
//
//  Created by Vladislav Kondrashkov on 10/11/18.
//  Copyright © 2018 Vladislav Kondrashkov. All rights reserved.
//

import Foundation

protocol TestableUnaryArithmetic {
    static prefix func - (_ operand: Self) -> Self
    static prefix func + (_ operand: Self) -> Self
}

protocol ThrowingTestableUnaryArithmetic {
    static prefix func - (_ operand: Self) throws -> Self
    static prefix func + (_ operand: Self) throws -> Self
}

extension ThrowingTestableUnaryArithmetic where Self: TestableUnaryArithmetic {
    static prefix func - (_ operand: Self) throws -> Self { return -operand }
    static prefix func + (_ operand: Self) throws -> Self { return +operand }
}
