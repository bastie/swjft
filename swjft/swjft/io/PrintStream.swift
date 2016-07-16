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
    
    public func print (s : Swift.String) {
      // NOT YET IMPLEMENTED
    }
    public func println () {
      // NOT YET IMPLEMENTED
    }
    public func println (s : Swift.String) {
      // NOT YET IMPLEMENTED
      debugPrint("I am in println (s)")
    }
    
    
    public func print (sl : lang.String) {
      print(sl.toString())
    }
    public func println (sl : lang.String) {
      println(sl.toString())
    }
  }

  //  Swift BUG (?) workaround - Bug id 23967855
  ///
  /// Implement Console output with fully delegate the work
  ///
  class ConsolePrintStream : io.PrintStream {
    
    let console = InternalDummySwiftPrinter ()
    
    init() {
      super.init(oStream: NullOutputStream())
    }
    
    override func print(s: Swift.String) {
      console.printDummy(s)
    }
    override func println() {
      console.printlnDummy()
    }
    override func println(s: Swift.String) {
      console.printlnDummy(s)
    }
  }
  /// Implement OutputStream protocol but do nothing
  class NullOutputStream : OutputStream {
    func close(){}
    func flush() throws{}
  }
  
  
  class InternalDummySwiftPrinter {
    func printDummy(s: Swift.String) {
			print(s, separator: "", terminator: "")
    }
    func printlnDummy() {
      print("")
    }
    func printlnDummy(s: Swift.String) {
      print(s)
    }
  }
}
