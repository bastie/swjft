//
//  IOException.swift
//  swjft
//
//  Created by Sebastian Ritter on 16.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//

import Foundation

extension io {
  public class IOException : lang.Exception {
    
    public override init(){super.init()}
    
    public override init(message : lang.String) {
      super.init(message: message)
    }
    // Helper method
    public override init(detailMessage : Swift.String) {
      super.init(message: lang.String(otherString: detailMessage))
    }
    
    public override init (message : lang.String, cause : lang.Throwable) {
      super.init (message : message, cause : cause)
    }
    // Helper method
    public override init (detailMessage : Swift.String, cause : lang.Throwable) {
      super.init(message: lang.String(otherString: detailMessage), cause : cause)
    }
    
    public override init (cause : lang.Throwable) {
      super.init(message: cause.toStringJ(), cause : cause)
    }
  }
}