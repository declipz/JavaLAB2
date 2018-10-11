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
        var typeName: String {
            return String(describing: T.self)
        }
        print("\t#### Testing \(typeName) ####")
        testBinaryArithmetic(firstObject: a, secondObject: b)
        testUnaryArithmetic(firstObject: a, secondObject: b)
        testBitwise(firstObject: a, secondObject: b)
        testAssignment(firstObject: a, secondObject: b)
        testComparing(firstObject: a, secondObject: b)
    }
    
    func testBinaryArithmetic<T>(firstObject a:T, secondObject b: T) where T: ThrowingTestableBinaryArithmetic {
        print(" Binary arithmetic:")
        run(try a + b).map { print("\(a) + \(b) = \($0)") }
        run(try a - b).map { print("\(a) - \(b) = \($0)") }
        run(try a * b).map { print("\(a) * \(b) = \($0)") }
        run(try a / b).map { print("\(a) / \(b) = \($0)") }
        run(try a % b).map { print("\(a) % \(b) = \($0)") }
    }
    
    func testUnaryArithmetic<T>(firstObject a: T, secondObject b: T) where T: ThrowingTestableUnaryArithmetic {
        print(" Unary arithmetic:")
        run(try -a).map { print("-\(a) = \($0)") }
        run(try +b).map { print("+\(b) = \($0)") }
        
    }
    
    func testBitwise<T>(firstObject a: T, secondObject b: T) where T: ThrowingTestableBitwise {
        print(" Bitwise:")
        run(try a & b).map { print("\(a) & \(b) = \($0)") }
        run(try a | b).map { print("\(a) | \(b) = \($0)") }
        run(try a ^ b).map { print("\(a) ^ \(b) = \($0)") }
        run(try ~a).map { print("~\(a) = \($0)") }
        //run(try a >> b).map { print("\(a) >> \(b) = \($0)") }
        //run(try a << b).map { print("\(a) << \(b) = \($0)") }
    }
    
    func testAssignment<T>(firstObject a: T, secondObject b: T) where T: ThrowingTestableAssignment {
        print(" Assignment:")
        var mutableA: T = a
        run(try mutableA += b).map { print("\(a) += \(b) // \(mutableA)") }
        mutableA = a
        run(try mutableA -= b).map { print("\(a) -= \(b) // \(mutableA)") }
        mutableA = a
        run(try mutableA *= b).map { print("\(a) *= \(b) // \(mutableA)") }
        mutableA = a
        run(try mutableA /= b).map { print("\(a) /= \(b) // \(mutableA)") }
        mutableA = a
        run(try mutableA %= b).map { print("\(a) %= \(b) // \(mutableA)") }
        mutableA = a
        run(try mutableA &= b).map { print("\(a) &= \(b) // \(mutableA)") }
        mutableA = a
        run(try mutableA ^= b).map { print("\(a) ^= \(b) // \(mutableA)") }
    }
    
    func testComparing<T>(firstObject a: T, secondObject b: T) where T: ThrowingTestableComparing {
        print(" Comparing:")
        run(try a != b).map { print("\(a) != \(b) = \($0)") }
        run(try a < b).map { print("\(a) < \(b) = \($0)") }
        run(try a <= b).map { print("\(a) <= \(b) = \($0)") }
        run(try a > b).map { print("\(a) > \(b) = \($0)") }
        run(try a >= b).map { print("\(a) >= \(b) = \($0)") }
    }
}
