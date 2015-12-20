//
//  OutputStream.swift
//  swjft
//
//  Created by Sebastian Ritter on 16.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//

import Foundation

public protocol swjftOutputStream : swjftAutoCloseable, swjftCloseable, swjftFlushable {
  func close()
  func flush() throws
}
extension io {
    public typealias OutputStream = swjftOutputStream
}