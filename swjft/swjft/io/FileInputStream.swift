//
//  FileInputStream.swift
//  swjft
//
//  Created by Sebastian Ritter on 16.07.16.
//  Copyright © 2016 Sebastian Ritter. All rights reserved.
//

import Foundation

extension io {
  // TODO override all read methods for better performance
  public class FileInputStream : InputStream, Closeable, lang.AutoCloseable {
    
    private var delegate : NSInputStream
    private var delegateOpening = false
    
    public init (_ name: String) {
      self.delegate = NSInputStream(fileAtPath: name)!
      self.delegate.open()
      self.delegateOpening = true
    }
    
    public func close () throws {
      if (delegateOpening) {
        self.delegate.close()
      }
    }
    
    public func available() throws -> Int {
      if (self.delegate.hasBytesAvailable) {
        return 1
      }
      else {
        return 0
      }
    }
  
    public func read() throws -> Int {
      var oneByte : [UInt8] = [1]
      let allOK = self.delegate.read(&oneByte, maxLength: oneByte.count)
      switch (allOK) {
      case -1 : throw IOException(detailMessage: (self.delegate.streamError?.localizedDescription)!)
      case 0 : throw IOException(detailMessage: "end of stream")
      default: // all OK
        break
      }
      return (Int)(oneByte[0])
    }
    
    deinit {
      try! self.close()
    }
  }
}