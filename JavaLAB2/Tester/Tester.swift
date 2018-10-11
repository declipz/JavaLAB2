//
//  Tester.swift
//  JavaLAB2
//
//  Created by Vladislav Kondrashkov on 10/9/18.
//  Copyright © 2018 Vladislav Kondrashkov. All rights reserved.
//

import Foundation

class Tester {
    func run<T>(_ closure: @autoclosure () throws -> T) -> T?  {
        return try? closure()
    }

    func testType<T>(firstObject a: T, secondObject b: T) where
                            T: ThrowingTestableBinaryArithmetic,
                            T: ThrowingTestableUnaryArithmetic,
                            T: ThrowingTestableBitwise,
                            T: ThrowingTestableAssignment,
                            T: ThrowingTestableComparing {
        testBinaryArithmetic(firstObject: a, secondObject: b)
        testUnaryArithmetic(firstObject: a, secondObject: b)
        testBitwise(firstObject: a, secondObject: b)
        testAssignment(firstObject: a, secondObject: b)
        testComparing(firstObject: a, secondObject: b)
    }
    
    func testBinaryArithmetic<T>(firstObject a:T, secondObject b: T) where T: ThrowingTestableBinaryArithmetic {
        var typeName: String {
            return String(describing: T.self)
        }
        print("#### Testing binary arithmetic for \(typeName)")
        run(try a + b).map { print("\(a) + \(b) = \($0)") }
        run(try a - b).map { print("\(a) - \(b) = \($0)") }
        run(try a * b).map { print("\(a) * \(b) = \($0)") }
        run(try a / b).map { print("\(a) / \(b) = \($0)") }
        run(try a % b).map { print("\(a) % \(b) = \($0)") }
    }
    
    func testUnaryArithmetic<T>(firstObject a: T, secondObject b: T) where T: ThrowingTestableUnaryArithmetic {
        var typeName: String {
            return String(describing: T.self)
        }
        print("#### Testing unary arithmetic for \(typeName)")
        run(try -a).map { print("-\(a) = \($0)") }
        run(try +b).map { print("+\(b) = \($0)") }
        
    }
    
    func testBitwise<T>(firstObject a: T, secondObject b: T) where T: ThrowingTestableBitwise {
        var typeName: String {
            return String(describing: T.self)
        }
        print("#### Testing bitwise for \(typeName)")
        run(try a & b).map { print("\(a) & \(b) = \($0)") }
        run(try a | b).map { print("\(a) | \(b) = \($0)") }
        run(try a ^ b).map { print("\(a) ^ \(b) = \($0)") }
        run(try ~a).map { print("~\(a) = \($0)") }
        //run(try a >> b).map { print("\(a) >> \(b) = \($0)") }
        //run(try a << b).map { print("\(a) << \(b) = \($0)") }
    }
    
    func testAssignment<T>(firstObject a: T, secondObject b: T) where T: ThrowingTestableAssignment {
        var typeName: String {
            return String(describing: T.self)
        }
        var mutableA: T = a
        print("#### Testing assignment for \(typeName)")
        run(try mutableA += b).map { print("\(mutableA) += \(b) // \(mutableA)") }
        run(try mutableA -= b).map { print("\(mutableA) -= \(b) // \(mutableA)") }
        run(try mutableA *= b).map { print("\(mutableA) *= \(b) // \(mutableA)") }
        run(try mutableA /= b).map { print("\(mutableA) /= \(b) // \(mutableA)") }
        run(try mutableA %= b).map { print("\(mutableA) %= \(b) // \(mutableA)") }
        run(try mutableA &= b).map { print("\(mutableA) &= \(b) // \(mutableA)") }
        run(try mutableA ^= b).map { print("\(mutableA) ^= \(b) // \(mutableA)") }
    }
    
    func testComparing<T>(firstObject a: T, secondObject b: T) where T: ThrowingTestableComparing {
        var typeName: String {
            return String(describing: T.self)
        }
        print("#### Testing comparing for \(typeName)")
        run(try a != b).map { print("\(a) != \(b) = \($0)") }
        run(try a < b).map { print("\(a) < \(b) = \($0)") }
        run(try a <= b).map { print("\(a) <= \(b) = \($0)") }
        run(try a > b).map { print("\(a) > \(b) = \($0)") }
        run(try a >= b).map { print("\(a) >= \(b) = \($0)") }
    }
}
