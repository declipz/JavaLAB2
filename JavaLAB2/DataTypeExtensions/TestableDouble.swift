//
//  TestableDouble.swift
//  JavaLAB2
//
//  Created by Vladislav Kondrashkov on 10/11/18.
//  Copyright © 2018 Vladislav Kondrashkov. All rights reserved.
//

extension Double: ThrowingTestableBinaryArithmetic {
    static func % (lhs: Double, rhs: Double) throws -> Double {
        throw TestingError.arithmeticalError
    }
}

extension Double: ThrowingTestableUnaryArithmetic { }

extension Double: ThrowingTestableBitwise {
    static func << <RHS>(lhs: Double, rhs: RHS) throws -> Double where RHS : BinaryInteger {
        throw TestingError.bitwiseError
    }
    
    static func >> <RHS>(lhs: Double, rhs: RHS) throws -> Double where RHS : BinaryInteger {
        throw TestingError.bitwiseError
    }
    
    static prefix func ~ (operand: Double) throws -> Double {
        throw TestingError.bitwiseError
    }
    
    static func ^ (lhs: Double, rhs: Double) throws -> Double {
        throw TestingError.bitwiseError
    }
    
    static func | (lhs: Double, rhs: Double) throws -> Double {
        throw TestingError.bitwiseError
    }
    
    static func & (lhs: Double, rhs: Double) throws -> Double {
        throw TestingError.bitwiseError
    }
}

extension Double: ThrowingTestableAssignment {
    static func <<= <RHS>(lhs: inout Double, rhs: RHS) throws where RHS : BinaryInteger {
        throw TestingError.assignmentError
    }
    
    static func >>= <RHS>(lhs: inout Double, rhs: RHS) throws where RHS : BinaryInteger {
        throw TestingError.assignmentError
    }
    
    static func ^= (lhs: inout Double, rhs: Double) throws {
        throw TestingError.assignmentError
    }
    
    static func |= (lhs: inout Double, rhs: Double) throws {
        throw TestingError.assignmentError
    }
    
    static func &= (lhs: inout Double, rhs: Double) throws {
        throw TestingError.assignmentError
    }
    
    static func %= (lhs: inout Double, rhs: Double) throws {
        throw TestingError.assignmentError
    }
}

extension Double: ThrowingTestableComparing { }
