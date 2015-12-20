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
    public override init() {}
  }
}


/// Swift BUG (?) workaround
extension io {
  ///
  /// Implement Console output with fully delegate the work
  ///
  class ConsolePrintStream : io.PrintStream {
    
  }
}