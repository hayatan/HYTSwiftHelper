//
//  DictionaryTests.swift
//  HYTSwiftHelper
//
//  Created by hayatan on 2016/01/24.
//  Copyright © 2016年 hayatan. All rights reserved.
//

import XCTest
import HYTSwiftHelper

class DictionaryTests: XCTestCase {
  
  let key1 = "key1"
  let key2 = "key2"
  let key3 = "key3"
  let key4 = "key4"
  
  let obj1 = "obj1"
  let obj2 = "obj2"
  let obj3 = "obj3"
  let obj4 = "obj4"
  
  func testPlusEqualOperator() {
    
    var left1 = [key1: obj1, key2: obj2]
    let right1 = [key3: obj3, key4: obj4]
    let expected1 = [key1: obj1, key2: obj2, key3: obj3, key4: obj4]
    
    left1 += right1
    XCTAssertEqual(left1, expected1)
    
    var left2 = [key1: obj1, key2: obj2]
    let right2 = [key2: obj3, key4: obj4]
    let expected2 = [key1: obj1, key2: obj3, key4: obj4]
    
    left2 += right2
    XCTAssertEqual(left2, expected2)
    
    var left3 = [String: String]()
    let right3 = [key3: obj3, key4: obj4]
    let expected3 = [key3: obj3, key4: obj4]
    
    left3 += right3
    XCTAssertEqual(left3, expected3)
    
    var left4 = [key1: obj1, key2: obj2]
    let right4 = [String: String]()
    let expected4 = [key1: obj1, key2: obj2]
    
    left4 += right4
    XCTAssertEqual(left4, expected4)
    
  }
  
  func testPlusOperator() {
    
    let left1 = [key1: obj1, key2: obj2]
    let right1 = [key3: obj3, key4: obj4]
    let expected1 = [key1: obj1, key2: obj2, key3: obj3, key4: obj4]
    
    let result1 = left1 + right1
    XCTAssertEqual(result1, expected1)
    
    let left2 = [key1: obj1, key2: obj2]
    let right2 = [key2: obj3, key4: obj4]
    let expected2 = [key1: obj1, key2: obj3, key4: obj4]
    
    let result2 = left2 + right2
    XCTAssertEqual(result2, expected2)
    
    let left3 = [String: String]()
    let right3 = [key3: obj3, key4: obj4]
    let expected3 = [key3: obj3, key4: obj4]
    
    let result3 = left3 + right3
    XCTAssertEqual(result3, expected3)
    
    let left4 = [key1: obj1, key2: obj2]
    let right4 = [String: String]()
    let expected4 = [key1: obj1, key2: obj2]
    
    let result4 = left4 + right4
    XCTAssertEqual(result4, expected4)
    
  }
  
}