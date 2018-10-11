//
//  TestableFloat.swift
//  JavaLAB2
//
//  Created by Vladislav Kondrashkov on 10/11/18.
//  Copyright © 2018 Vladislav Kondrashkov. All rights reserved.
//

import Foundation

extension Float: ThrowingTestableBinaryArithmetic {
    static func % (lhs: Float, rhs: Float) throws -> Float {
        throw TestingError.arithmeticalError
    }
}

extension Float: ThrowingTestableUnaryArithmetic { }

extension Float: ThrowingTestableBitwise {
    static func << <RHS>(lhs: Float, rhs: RHS) throws -> Float where RHS : BinaryInteger {
        throw TestingError.bitwiseError
    }
    
    static func >> <RHS>(lhs: Float, rhs: RHS) throws -> Float where RHS : BinaryInteger {
        throw TestingError.bitwiseError
    }
    
    static prefix func ~ (operand: Float) throws -> Float {
        throw TestingError.bitwiseError
    }
    
    static func ^ (lhs: Float, rhs: Float) throws -> Float {
        throw TestingError.bitwiseError
    }
    
    static func | (lhs: Float, rhs: Float) throws -> Float {
        throw TestingError.bitwiseError
    }
    
    static func & (lhs: Float, rhs: Float) throws -> Float {
        throw TestingError.bitwiseError
    }
}

extension Float: ThrowingTestableAssignment {
    static func <<= <RHS>(lhs: inout Float, rhs: RHS) throws where RHS : BinaryInteger {
        throw TestingError.assignmentError
    }
    
    static func >>= <RHS>(lhs: inout Float, rhs: RHS) throws where RHS : BinaryInteger {
        throw TestingError.assignmentError
    }
    
    static func ^= (lhs: inout Float, rhs: Float) throws {
        throw TestingError.assignmentError
    }
    
    static func |= (lhs: inout Float, rhs: Float) throws {
        throw TestingError.assignmentError
    }
    
    static func &= (lhs: inout Float, rhs: Float) throws {
        throw TestingError.assignmentError
    }
    
    static func %= (lhs: inout Float, rhs: Float) throws {
        throw TestingError.assignmentError
    }
}

extension Float: ThrowingTestableComparing { }
