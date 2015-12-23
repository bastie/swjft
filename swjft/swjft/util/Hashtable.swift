//
//  Hashtable.swift
//  swjft
//
//  Created by Sebastian Ritter on 21.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//


public class swiftHashtable : swjftDictionary {
  public typealias key = lang.Object
  public typealias value = lang.Object
  
  private var delegate : [key:value] = [:]
  
  public init(){}
  
  public func put(k: key, v: value) {
    delegate[k] = v
  }
}


extension util {
  typealias Hashtable = swiftHashtable
}
