//
//  main.swift
//  JavaLAB2
//
//  Created by Vladislav Kondrashkov on 10/9/18.
//  Copyright © 2018 Vladislav Kondrashkov. All rights reserved.
//

import Foundation

class Application {
    func start() {
        let tester = Tester()
        
        let string1: String = "foo"
        let string2: String = "bar"
        let int1: Int = 27
        let int2: Int = 3
        let float1: Float = 2.7
        let float2: Float = 3.14
        let double1: Double = 2.71
        let double2: Double = 3.1415
        let bool1: Bool = true
        let bool2: Bool = false
        
        tester.testType(firstObject: string1, secondObject: string2)
        tester.testType(firstObject: int1, secondObject: int2)
        tester.testType(firstObject: float1, secondObject: float2)
        tester.testType(firstObject: double1, secondObject: double2)
        tester.testType(firstObject: bool1, secondObject: bool2)
    }
}


let app = Application()
app.start()
