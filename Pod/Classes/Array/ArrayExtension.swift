//
// Created by hayatan on 2016/01/22.
// Copyright (c) 2016 hayatan. All rights reserved.
//

import Foundation

public extension Array {
  public func circulerShift(number: Int = 1) -> [Element] {
    let n = self.count
    var shift = number % n

    if shift == 0 {
      return Array(self)
    }

    if shift < 0 {
      shift += n
    }

    let splitIndex = n - shift

    let firstHarf = Array(self[splitIndex..<n])
    let secondHarf = Array(self[0..<splitIndex])

    return firstHarf + secondHarf
  }
  
  public mutating func circulerShiftInPlace(number: Int = 1) {
    self = circulerShift(number)
  }
}