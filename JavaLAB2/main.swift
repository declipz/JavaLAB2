//
//  main.swift
//  JavaLAB2
//
//  Created by Vladislav Kondrashkov on 10/9/18.
//  Copyright © 2018 Vladislav Kondrashkov. All rights reserved.
//

import Foundation



func test<T>(a: T, b: T) where T: Testable {
    var typeName: String {
        return String(describing: T.self)
    }
    print("#### Testing for \(typeName) ####")
    print(a + b)
    print(a - b)
    print(a * b)
    print(a / b)
}

class Application {
    func start() {
        test(a: 5, b: 7)
        test(a: 3.14, b: 2.71)
        test(a: "foo", b: "bar")
        
        //let tester = Tester()
        
        //tester.testInt()
        //tester.testDouble()
        //tester.testString()
        
        
    
    }
}


let app = Application()
app.start()
