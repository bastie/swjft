//
//  FilterOutputStream.swift
//  swjft
//
//  Created by Sebastian Ritter on 19.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//

import Foundation
extension io {
  public class FilterOutputStream : OutputStream {
    
    var out : OutputStream
    
    init (oStream : OutputStream) {
      self.out = oStream
    }
    
    // NOT YET IMPLEMENTED
    public func flush() throws {
      // NOP
    }
    public func close() {
	    // NOP
    }
  }
}