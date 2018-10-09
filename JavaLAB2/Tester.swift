//
//  Tester.swift
//  JavaLAB2
//
//  Created by Vladislav Kondrashkov on 10/9/18.
//  Copyright © 2018 Vladislav Kondrashkov. All rights reserved.
//

import Foundation

class Tester {
    func testInt() {
        var firstObject: Int = 7
        let secondObject: Int = 2
        
        print("#### Binary Arithmetical Operators ####")
        print("\(firstObject) + \(secondObject) = \(firstObject + secondObject)")
        print("\(firstObject) - \(secondObject) = \(firstObject - secondObject)")
        print("\(firstObject) * \(secondObject) = \(firstObject * secondObject)")
        print("\(firstObject) / \(secondObject) = \(firstObject / secondObject)")
        print("\(firstObject) % \(secondObject) = \(firstObject % secondObject)")

        print("#### Unary Arithmetical Operators ####")
        print("-\(firstObject) = \(-firstObject)")
        print("+\(firstObject) = \(+firstObject)")
        print("++\(firstObject) -> Compile error!")
        print("\(firstObject)++ -> Compile error!")
        print("--\(firstObject) -> Compile error!")
        print("\(firstObject)-- -> Compile error!")
        
        print("#### Bitwise Operators ####")
        print("\(firstObject) & \(secondObject) = \(firstObject & secondObject)")
        print("\(firstObject) | \(secondObject) = \(firstObject | secondObject)")
        print("\(firstObject) ^ \(secondObject) = \(firstObject ^ secondObject)")
        print("~\(firstObject) = \(~firstObject)")
        print("\(firstObject) >> \(secondObject) = \(firstObject >> secondObject)")
        print("\(firstObject) << \(secondObject) = \(firstObject << secondObject)")
        print("\(firstObject) >>> \(secondObject) -> Compile error!")
        
        print("#### Assignment Operators ####")
        print("\(firstObject) += \(secondObject) // \(firstObject += secondObject)")
        print("\(firstObject) -= \(secondObject) // \(firstObject -= secondObject)")
        print("\(firstObject) *= \(secondObject) // \(firstObject *= secondObject)")
        print("\(firstObject) /= \(secondObject) // \(firstObject /= secondObject)")
        print("\(firstObject) %= \(secondObject) // \(firstObject %= secondObject)")
        firstObject = 7
        print("\(firstObject) &= \(secondObject) // \(firstObject &= secondObject)")
        print("\(firstObject) |= \(secondObject) // \(firstObject |= secondObject)")
        print("\(firstObject) ^= \(secondObject) // \(firstObject ^= secondObject)")
        print("\(firstObject) >>= \(secondObject) // \(firstObject >>= secondObject)")
        print("\(firstObject) <<= \(secondObject) // \(firstObject <<= secondObject)")
        firstObject = 7
        
        print("#### Comparing Operators ####")
        print("\(firstObject) > \(secondObject) // \(firstObject > secondObject)")
        print("\(firstObject) >= \(secondObject) // \(firstObject >= secondObject)")
        print("\(firstObject) < \(secondObject) // \(firstObject < secondObject)")
        print("\(firstObject) <= \(secondObject) // \(firstObject <= secondObject)")
        print("\(firstObject) == \(secondObject) // \(firstObject == secondObject)")
        print("\(firstObject) != \(secondObject) // \(firstObject != secondObject)")
        print("\(firstObject) === \(secondObject) // Compile error!")
        
        print("#### Typecast ####")
        let int: Int = 7
        let float: Float = 2.7
        let double: Double = 3.14
        let string: String = "Foo27"
        let character: Character = "d"
        let bool: Bool = true
        print("Int(\(int)) = \(Int(int))")
        print("Int(\(float)) = \(Int(float))")
        print("Int(\(double)) = \(Int(double))")
        print("Int(\(string)) = \(Int(string))")
        print("Int(\(character)) -> Compile error!")
        print("Int(\(bool)) -> Compile error!")
    }
    
    func testDouble() {
        var firstObject: Double = 3.14
        let secondObject: Double = 2.7
        
        print("#### Binary Arithmetical Operators ####")
        print("\(firstObject) + \(secondObject) = \(firstObject + secondObject)")
        print("\(firstObject) - \(secondObject) = \(firstObject - secondObject)")
        print("\(firstObject) * \(secondObject) = \(firstObject * secondObject)")
        print("\(firstObject) / \(secondObject) = \(firstObject / secondObject)")
        print("\(firstObject) % \(secondObject) -> Compile error!")
        
        print("#### Unary Arithmetical Operators ####")
        print("-\(firstObject) = \(-firstObject)")
        print("+\(firstObject) = \(+firstObject)")
        print("++\(firstObject) -> Compile error!")
        print("\(firstObject)++ -> Compile error!")
        print("--\(firstObject) -> Compile error!")
        print("\(firstObject)-- -> Compile error!")
        
        print("#### Bitwise Operators ####")
        print("\(firstObject) & \(secondObject) -> Compile error!")
        print("\(firstObject) | \(secondObject) -> Compile error!")
        print("\(firstObject) ^ \(secondObject) -> Compile error!")
        print("~\(firstObject) -> Compile error!")
        print("\(firstObject) >> \(secondObject) -> Compile error!")
        print("\(firstObject) << \(secondObject) -> Compile error!")
        print("\(firstObject) >>> \(secondObject) -> Compile error!")
        
        print("#### Assignment Operators ####")
        print("\(firstObject) += \(secondObject) // \(firstObject += secondObject)")
        print("\(firstObject) -= \(secondObject) // \(firstObject -= secondObject)")
        print("\(firstObject) *= \(secondObject) // \(firstObject *= secondObject)")
        print("\(firstObject) /= \(secondObject) // \(firstObject /= secondObject)")
        print("\(firstObject) %= \(secondObject) // Compile error!")
        firstObject = 3.14
        print("\(firstObject) &= \(secondObject) // Compile error!")
        print("\(firstObject) |= \(secondObject) // Compile error!")
        print("\(firstObject) ^= \(secondObject) // Compile error!")
        print("\(firstObject) >>= \(secondObject) // Compile error!")
        print("\(firstObject) <<= \(secondObject) // Compile error!")
        firstObject = 3.14
        
        print("#### Comparing Operators ####")
        print("\(firstObject) > \(secondObject) // \(firstObject > secondObject)")
        print("\(firstObject) >= \(secondObject) // \(firstObject >= secondObject)")
        print("\(firstObject) < \(secondObject) // \(firstObject < secondObject)")
        print("\(firstObject) <= \(secondObject) // \(firstObject <= secondObject)")
        print("\(firstObject) == \(secondObject) // \(firstObject == secondObject)")
        print("\(firstObject) != \(secondObject) // \(firstObject != secondObject)")
        print("\(firstObject) === \(secondObject) // Compile error!")
        
        print("#### Typecast ####")
        let int: Int = 7
        let float: Float = 2.7
        let double: Double = 3.14
        let string: String = "Foo27"
        let character: Character = "d"
        let bool: Bool = true
        print("Double(\(int)) = \(Double(int))")
        print("Double(\(float)) = \(Double(float))")
        print("Double(\(double)) = \(Double(double))")
        print("Double(\(string)) = \(Double(string))")
        print("Double(\(character)) -> Compile error!")
        print("Double(\(bool)) -> Compile error!")
    }
    
    func testString() {
        var firstObject: String = "Foo"
        let secondObject: String = "Bar"
        
        print("#### Binary Arithmetical Operators ####")
        print("\(firstObject) + \(secondObject) = \(firstObject + secondObject)")
        print("\(firstObject) - \(secondObject) -> Compile error!")
        print("\(firstObject) * \(secondObject) -> Compile error!")
        print("\(firstObject) / \(secondObject) -> Compile error!")
        print("\(firstObject) % \(secondObject) -> Compile error!")
        
        print("#### Unary Arithmetical Operators ####")
        print("-\(firstObject) -> Compile error!")
        print("+\(firstObject) -> Compile error!")
        print("++\(firstObject) -> Compile error!")
        print("\(firstObject)++ -> Compile error!")
        print("--\(firstObject) -> Compile error!")
        print("\(firstObject)-- -> Compile error!")
        
        print("#### Bitwise Operators ####")
        print("\(firstObject) & \(secondObject) -> Compile error!")
        print("\(firstObject) | \(secondObject) -> Compile error!")
        print("\(firstObject) ^ \(secondObject) -> Compile error!")
        print("~\(firstObject) -> Compile error!")
        print("\(firstObject) >> \(secondObject) -> Compile error!")
        print("\(firstObject) << \(secondObject) -> Compile error!")
        print("\(firstObject) >>> \(secondObject) -> Compile error!")
        
        print("#### Assignment Operators ####")
        print("\(firstObject) += \(secondObject) // \(firstObject += secondObject)")
        print("\(firstObject) -= \(secondObject) // Compile error!")
        print("\(firstObject) *= \(secondObject) // Compile error!")
        print("\(firstObject) /= \(secondObject) // Compile error!")
        print("\(firstObject) %= \(secondObject) // Compile error!")
        firstObject = "Foo"
        print("\(firstObject) &= \(secondObject) // Compile error!")
        print("\(firstObject) |= \(secondObject) // Compile error!")
        print("\(firstObject) ^= \(secondObject) // Compile error!")
        print("\(firstObject) >>= \(secondObject) // Compile error!")
        print("\(firstObject) <<= \(secondObject) // Compile error!")
        firstObject = "Foo"
        
        print("#### Comparing Operators ####")
        print("\(firstObject) > \(secondObject) // \(firstObject > secondObject)")
        print("\(firstObject) >= \(secondObject) // \(firstObject >= secondObject)")
        print("\(firstObject) < \(secondObject) // \(firstObject < secondObject)")
        print("\(firstObject) <= \(secondObject) // \(firstObject <= secondObject)")
        print("\(firstObject) == \(secondObject) // \(firstObject == secondObject)")
        print("\(firstObject) != \(secondObject) // \(firstObject != secondObject)")
        print("\(firstObject) === \(secondObject) // Compile error!")
        
        print("#### Typecast ####")
        let int: Int = 7
        let float: Float = 2.7
        let double: Double = 3.14
        let string: String = "Foo27"
        let character: Character = "d"
        let bool: Bool = true
        print("String(\(int)) = \(String(int))")
        print("String(\(float)) = \(String(float))")
        print("String(\(double)) = \(String(double))")
        print("String(\(string)) = \(String(string))")
        print("String(\(character)) = \(String(character))")
        print("String(\(bool)) = \(String(bool))")
    }
}
