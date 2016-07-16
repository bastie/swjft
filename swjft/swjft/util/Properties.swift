//
//  Properties.swift
//  swjft
//
//  Created by Sebastian Ritter on 20.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//

import Foundation

extension util {

  public class Properties : swiftHashtable {
    public typealias key = lang.String
    public typealias value = lang.String
  
    
    /// Helpermethod
    func put (k : Swift.String, v : Swift.String) {
      self.put(lang.String(otherString: k), v: lang.String(otherString: v))
    }
	}

}
