//
//  TestableBool.swift
//  JavaLAB2
//
//  Created by Vladislav Kondrashkov on 10/11/18.
//  Copyright © 2018 Vladislav Kondrashkov. All rights reserved.
//

import Foundation

extension Bool: ThrowingTestableBinaryArithmetic {
    static func - (lhs: Bool, rhs: Bool) throws -> Bool {
        throw TestingError.arithmeticalError
    }
    
    static func + (lhs: Bool, rhs: Bool) throws -> Bool {
        throw TestingError.arithmeticalError
    }
    
    static func * (lhs: Bool, rhs: Bool) throws -> Bool {
        throw TestingError.arithmeticalError
    }
    
    static func / (lhs: Bool, rhs: Bool) throws -> Bool {
        throw TestingError.arithmeticalError
    }
    
    static func % (lhs: Bool, rhs: Bool) throws -> Bool {
        throw TestingError.arithmeticalError
    }
}

extension Bool: ThrowingTestableUnaryArithmetic {
    static prefix func + (operand: Bool) throws -> Bool {
        throw TestingError.arithmeticalError
    }
    
    static prefix func - (operand: Bool) throws -> Bool {
        throw TestingError.arithmeticalError
    }
}

extension Bool: ThrowingTestableBitwise {
    static func << <RHS>(lhs: Bool, rhs: RHS) throws -> Bool where RHS : BinaryInteger {
        throw TestingError.bitwiseError
    }
    
    static func >> <RHS>(lhs: Bool, rhs: RHS) throws -> Bool where RHS : BinaryInteger {
        throw TestingError.bitwiseError
    }
    
    static prefix func ~ (operand: Bool) throws -> Bool {
        throw TestingError.bitwiseError
    }
    
    static func ^ (lhs: Bool, rhs: Bool) throws -> Bool {
        throw TestingError.bitwiseError
    }
    
    static func | (lhs: Bool, rhs: Bool) throws -> Bool {
        throw TestingError.bitwiseError
    }
    
    static func & (lhs: Bool, rhs: Bool) throws -> Bool {
        throw TestingError.bitwiseError
    }
}

extension Bool: ThrowingTestableAssignment {
    static func <<= <RHS>(lhs: inout Bool, rhs: RHS) throws where RHS : BinaryInteger {
        throw TestingError.assignmentError
    }
    
    static func >>= <RHS>(lhs: inout Bool, rhs: RHS) throws where RHS : BinaryInteger {
        throw TestingError.assignmentError
    }
    
    static func ^= (lhs: inout Bool, rhs: Bool) throws {
        throw TestingError.assignmentError
    }
    
    static func |= (lhs: inout Bool, rhs: Bool) throws {
        throw TestingError.assignmentError
    }
    
    static func &= (lhs: inout Bool, rhs: Bool) throws {
        throw TestingError.assignmentError
    }
    
    static func -= (lhs: inout Bool, rhs: Bool) throws {
        throw TestingError.assignmentError
    }
    
    static func += (lhs: inout Bool, rhs: Bool) throws {
        throw TestingError.assignmentError
    }
    
    static func *= (lhs: inout Bool, rhs: Bool) throws {
        throw TestingError.assignmentError
    }
    
    static func /= (lhs: inout Bool, rhs: Bool) throws {
        throw TestingError.assignmentError
    }
    
    static func %= (lhs: inout Bool, rhs: Bool) throws {
        throw TestingError.assignmentError
    }
}

extension Bool: ThrowingTestableComparing {
    static func >= (lhs: Bool, rhs: Bool) throws -> Bool {
        throw TestingError.comparingError
    }
    
    static func > (lhs: Bool, rhs: Bool) throws -> Bool {
        throw TestingError.comparingError
    }
    
    static func <= (lhs: Bool, rhs: Bool) throws -> Bool {
        throw TestingError.comparingError
    }
    
    static func < (lhs: Bool, rhs: Bool) throws -> Bool {
        throw TestingError.comparingError
    }
}
