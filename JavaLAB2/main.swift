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
        tester.testBinaryArithmetic(firstObject: "foo", secondObject: "bar")
        //let tester = Tester()
        
        //tester.testInt()
        //tester.testDouble()
        //tester.testString()
        
        
    
    }
}


let app = Application()
app.start()
