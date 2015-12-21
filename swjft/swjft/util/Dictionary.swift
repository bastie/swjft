//
//  Dictionary.swift
//  swjft
//
//  Created by Sebastian Ritter on 21.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//

import Foundation

protocol swjftDictionary {
  typealias key : Hashable
  typealias value
  
  mutating func put (k : key, v : value)
}

