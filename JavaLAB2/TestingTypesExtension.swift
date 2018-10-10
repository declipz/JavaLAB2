//
//  TestingTypesExtension.swift
//  JavaLAB2
//
//  Created by Vladislav Kondrashkov on 10/10/18.
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
