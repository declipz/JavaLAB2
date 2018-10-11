//
//  TestableString.swift
//  JavaLAB2
//
//  Created by Vladislav Kondrashkov on 10/11/18.
//  Copyright © 2018 Vladislav Kondrashkov. All rights reserved.
//

import Foundation

extension String: ThrowingTestableBinaryArithmetic {
    static func - (lhs: String, rhs: String) throws -> String {
        throw TestingError.arithmeticalError
    }
    
    static func * (lhs: String, rhs: String) throws -> String {
        throw TestingError.arithmeticalError
    }
    
    static func / (lhs: String, rhs: String) throws -> String {
        throw TestingError.arithmeticalError
    }
    
    static func % (lhs: String, rhs: String) throws -> String {
        throw TestingError.arithmeticalError
    }
}

extension String: ThrowingTestableUnaryArithmetic {
    static prefix func + (operand: String) throws -> String {
        throw TestingError.arithmeticalError
    }
    
    static prefix func - (operand: String) throws -> String {
        throw TestingError.arithmeticalError
    }
}

extension String: ThrowingTestableBitwise {
    static func << <RHS>(lhs: String, rhs: RHS) throws -> String where RHS : BinaryInteger {
        throw TestingError.bitwiseError
    }
    
    static func >> <RHS>(lhs: String, rhs: RHS) throws -> String where RHS : BinaryInteger {
        throw TestingError.bitwiseError
    }
    
    static prefix func ~ (operand: String) throws -> String {
        throw TestingError.bitwiseError
    }
    
    static func ^ (lhs: String, rhs: String) throws -> String {
        throw TestingError.bitwiseError
    }
    
    static func | (lhs: String, rhs: String) throws -> String {
        throw TestingError.bitwiseError
    }
    
    static func & (lhs: String, rhs: String) throws -> String {
        throw TestingError.bitwiseError
    }
    
    
}

extension String: ThrowingTestableAssignment {
    static func <<= <RHS>(lhs: inout String, rhs: RHS) throws where RHS : BinaryInteger {
        throw TestingError.assignmentError
    }
    
    static func >>= <RHS>(lhs: inout String, rhs: RHS) throws where RHS : BinaryInteger {
        throw TestingError.assignmentError
    }
    
    static func ^= (lhs: inout String, rhs: String) throws {
        throw TestingError.assignmentError
    }
    
    static func |= (lhs: inout String, rhs: String) throws {
        throw TestingError.assignmentError
    }
    
    static func &= (lhs: inout String, rhs: String) throws {
        throw TestingError.assignmentError
    }
    
    static func -= (lhs: inout String, rhs: String) throws {
        throw TestingError.assignmentError
    }
    
    static func *= (lhs: inout String, rhs: String) throws {
        throw TestingError.assignmentError
    }
    
    static func /= (lhs: inout String, rhs: String) throws {
        throw TestingError.assignmentError
    }
    
    static func %= (lhs: inout String, rhs: String) throws {
        throw TestingError.assignmentError
    }
}

extension String: ThrowingTestableComparing { }
