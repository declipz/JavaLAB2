//
//  TestingTypesExtension.swift
//  JavaLAB2
//
//  Created by Vladislav Kondrashkov on 10/10/18.
//  Copyright © 2018 Vladislav Kondrashkov. All rights reserved.
//

import Foundation

extension Int: ThrowingTestable { }
extension Float: ThrowingTestable { }
extension Double: ThrowingTestable { }
extension String: ThrowingTestable {
    static func - (lhs: String, rhs: String) -> String {
        throw TestingError.arithmeticalError
    }
    
    static func * (lhs: String, rhs: String) -> String {
        throw TestingError.arithmeticalError
    }
    
    static func / (lhs: String, rhs: String) -> String {
        throw TestingError.arithmeticalError
    }
}
extension Bool: Testable { }
