//
//  Flushable.swift
//  swjft
//
//  Created by Sebastian Ritter on 16.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//

public protocol swjftFlushable {
  func flush() throws // IOException
}

extension io {
  public typealias Flushable = swjftFlushable
}