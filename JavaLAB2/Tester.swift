//
//  Tester.swift
//  JavaLAB2
//
//  Created by Vladislav Kondrashkov on 10/9/18.
//  Copyright © 2018 Vladislav Kondrashkov. All rights reserved.
//

import Foundation

class Tester {
    func testBinaryArithmetic<T>(firstObject a:T, secondObject b: T) where T: ThrowingTestableBinaryArithmetic {
        do {
            print(try a + b)
            print(try a - b)
            print(try a * b)
            print(try a / b)
            print(try a % b)
        } catch {
            print(error)
        }
    }
    
}
