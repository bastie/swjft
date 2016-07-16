//
//  InputStream.swift
//  swjft
//
//  Created by Sebastian Ritter on 16.07.16.
//  Copyright © 2016 Sebastian Ritter. All rights reserved.
//

import Foundation

public protocol swjftInputStream {
  func read () throws -> Int
  
  func read (inout b : [Int8]) throws -> Int
  func read (inout b : [Int8], off : Int, len : Int) throws -> Int
  func skip(n : Int64) throws -> Int64
  func available() throws -> Int
  func close()
  func mark()
  func reset () throws -> Void
  func markSupported () -> Bool
}
extension io {
  public typealias InputStream = swjftInputStream
}
extension swjftInputStream {
  public func read (inout b : [Int8]) throws -> Int {
    return try self.read(&b, off: 0, len: b.count)
  }
  public func read (inout b : [Int8], off: Int, len : Int) throws -> Int {
    var toRead = 0
    var endOfStream = false
    while (toRead < len && !endOfStream) {
      let result = try self.read()
      if result > -1 {
      	b[toRead+off] = (Int8) (result - 128)
      	toRead = toRead+1
      }
      else {
        endOfStream = true
      }
    }
    return toRead
  }
  public func skip(n : Int64) throws -> Int64{
    return 0
  }
  public func available() throws -> Int {
    return 0
  }
  public func close (){}
  public func mark(){}
  public func reset () throws {
  	throw io.IOException()
  }
  public func markSupported () -> Bool {
    return false
  }
}
