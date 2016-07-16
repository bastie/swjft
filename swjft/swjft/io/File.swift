//
//  File.swift
//  swjft
//
//  Created by Sebastian Ritter on 22.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//

import Foundation

extension io {
  public class File : lang.Object {
    
    private var pathname : String
    
    public init (aPathname : lang.String) {
      self.pathname = aPathname.toString()
    }
    public init (newPathname : Swift.String) {
      self.pathname = newPathname
    }
    
    public func exists() -> Bool {
			return NSFileManager.defaultManager().fileExistsAtPath(self.pathname)
    }
  }
}
