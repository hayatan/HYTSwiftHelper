//
//  HYTSwiftHelperTests.swift
//  HYTSwiftHelperTests
//
//  Created by hayatan on 2016/01/21.
//  Copyright © 2016年 hayatan. All rights reserved.
//

import XCTest
import HYTSwiftHelper

class ArrayTests: XCTestCase {
  
  let obj1 = "1"
  let obj2 = "2"
  let obj3 = "3"
  let obj4 = "4"
  let obj5 = "5"
  
  func testCirculerShift() {
    
    // 要素数4の配列
    let arr4 = [obj1, obj2, obj3, obj4]
    let expectedArr4S0 = [obj1, obj2, obj3, obj4]
    let expectedArr4S1 = [obj4, obj1, obj2, obj3]
    let expectedArr4S2 = [obj3, obj4, obj1, obj2]
    let expectedArr4S3 = [obj2, obj3, obj4, obj1]
    let expectedArr4S4 = [obj1, obj2, obj3, obj4]
    
    // 要素数5の配列
    let arr5 = [obj1, obj2, obj3, obj4, obj5]
    let expectedArr5S0 = [obj1, obj2, obj3, obj4, obj5]
    let expectedArr5S1 = [obj5, obj1, obj2, obj3, obj4]
    let expectedArr5S2 = [obj4, obj5, obj1, obj2, obj3]
    let expectedArr5S3 = [obj3, obj4, obj5, obj1, obj2]
    let expectedArr5S4 = [obj2, obj3, obj4, obj5, obj1]
    let expectedArr5S5 = [obj1, obj2, obj3, obj4, obj5]
    
    // 要素数4の配列を0シフトしたとき
    let arr4S0 = arr4.circulerShift(0)
    XCTAssertEqual(arr4S0, expectedArr4S0)
    
    // 要素数4の配列を1シフトしたとき
    let arr4S1 = arr4.circulerShift(1)
    XCTAssertEqual(arr4S1, expectedArr4S1)
    
    // 要素数4の配列を2シフトしたとき
    let arr4S2 = arr4.circulerShift(2)
    XCTAssertEqual(arr4S2, expectedArr4S2)
    
    // 要素数4の配列を3シフトしたとき
    let arr4S3 = arr4.circulerShift(3)
    XCTAssertEqual(arr4S3, expectedArr4S3)
    
    // 要素数4の配列を4シフトしたとき
    let arr4S4 = arr4.circulerShift(4)
    XCTAssertEqual(arr4S4, expectedArr4S4)
    
    // 要素数5の配列を0シフトしたとき
    let arr5S0 = arr5.circulerShift(0)
    XCTAssertEqual(arr5S0, expectedArr5S0)
    
    // 要素数5の配列を1シフトしたとき
    let arr5S1 = arr5.circulerShift(1)
    XCTAssertEqual(arr5S1, expectedArr5S1)
    
    // 要素数5の配列を2シフトしたとき
    let arr5S2 = arr5.circulerShift(2)
    XCTAssertEqual(arr5S2, expectedArr5S2)
    
    // 要素数5の配列を3シフトしたとき
    let arr5S3 = arr5.circulerShift(3)
    XCTAssertEqual(arr5S3, expectedArr5S3)
    
    // 要素数5の配列を4シフトしたとき
    let arr5S4 = arr5.circulerShift(4)
    XCTAssertEqual(arr5S4, expectedArr5S4)
    
    // 要素数5の配列を5シフトしたとき
    let arr5S5 = arr5.circulerShift(5)
    XCTAssertEqual(arr5S5, expectedArr5S5)

  }
  
}
