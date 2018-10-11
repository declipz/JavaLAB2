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
        tester.testType(firstObject: "foo", secondObject: "bar")
    }
}


let app = Application()
app.start()
