//
//  PrintStream.swift
//  swjft
//
//  Created by Sebastian Ritter on 19.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//

import Foundation
extension io {
  public class PrintStream : FilterOutputStream {
    
    func print (s : Swift.String) {
      // NOT YET IMPLEMENTED
    }
    func println () {
      // NOT YET IMPLEMENTED
    }
    func println (s : Swift.String) {
      // NOT YET IMPLEMENTED
    }
    
    
    func print (sl : lang.String) {
      self.print(sl.toString())
    }
    func println (sl : lang.String) {
      self.println(sl)
    }
  }
}


/// Swift BUG (?) workaround - Bug id 23967855
extension io {
  ///
  /// Implement Console output with fully delegate the work
  ///
  class ConsolePrintStream : io.PrintStream {
    init() {
      super.init(oStream: NullOutputStream())
    }
    
    override func print(s: Swift.String) {
      Swift.print(s, terminator: "")
    }
    override func println() {
      Swift.print("")
    }
    override func println(s: Swift.String) {
      Swift.print(s)
    }
  }
  /// Implement OutputStream protocol but do nothing
  class NullOutputStream : OutputStream {
    func close(){}
    func flush() throws{}
  }
}
