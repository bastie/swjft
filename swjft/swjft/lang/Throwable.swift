//
//  Throwable.swift
//  swjft
//
//  Created by Sebastian Ritter on 12.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//

extension lang {
    public class Throwable : Object, ErrorType {
      private var detailMessage : lang.String?
      private var cause : lang.Throwable?

      public override init (){}
      public init(message : lang.String) {
        self.detailMessage = message
      }
      
      public init(detailMessage : Swift.String) {
        self.detailMessage = lang.String(otherString: detailMessage)
      }
      
      public init (message : lang.String, cause : lang.Throwable) {
        self.detailMessage = message
        self.cause = cause
      }
      
      public init (detailMessage : Swift.String, cause : lang.Throwable) {
        self.detailMessage = lang.String(otherString: detailMessage)
        self.cause = cause
      }
      
      public init (cause : lang.Throwable) {
        self.detailMessage = cause.toStringJ()
        self.cause = cause
      }
      /* NOT YET IMPLEMENTED - JDK 7
      public init (message : lang.String, cause : lang.Throwable, enableSuppression : Bool, writableStackTrace: Bool) {
        self.detailMessage = message
        self.cause = cause
        self.suppressionEnable = enableSuppression
        self.stackTraceWritable = writableStackTrace
      }
      
      public init (detailMessage : Swift.String, cause : lang.Throwable, enableSuppression : Bool, writableStackTrace: Bool) {
        self.detailMessage = lang.String(otherString: detailMessage)
        self.cause = cause
        self.suppressionEnable = enableSuppression
        self.stackTraceWritable = writableStackTrace
      }*/
  }
}