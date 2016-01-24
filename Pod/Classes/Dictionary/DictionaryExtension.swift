//
// Created by hayatan on 2016/01/22.
// Copyright (c) 2016 hayatan. All rights reserved.
//

import Foundation

public func += <Key: Hashable, Value> (inout left: Dictionary<Key, Value>, right: Dictionary<Key, Value>) {
  for (key, value) in right {
    left[key] = value
  }
}

public func + <Key: Hashable, Value> (left: Dictionary<Key, Value>, right: Dictionary<Key, Value>) -> Dictionary<Key, Value> {
  var result = left
  for (key, value) in right {
    result[key] = value
  }
  return result
}