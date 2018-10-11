//
//  TestableInt.swift
//  JavaLAB2
//
//  Created by Vladislav Kondrashkov on 10/11/18.
//  Copyright © 2018 Vladislav Kondrashkov. All rights reserved.
//

import Foundation

extension Int: ThrowingTestableBinaryArithmetic { }

extension Int: ThrowingTestableUnaryArithmetic { }

extension Int: ThrowingTestableBitwise { }

extension Int: ThrowingTestableAssignment { }

extension Int: ThrowingTestableComparing { }
