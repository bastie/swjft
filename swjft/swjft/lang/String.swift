//
//  String.swift
//  swjft
//
//  Created by Sebastian Ritter on 12.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//
import Foundation;

extension lang {
    
    public class String : Object, CharSequence {
        private var delegate : Swift.String
        
        public override init () {
            delegate = ""
        }
        public init (other : String) {
            delegate = other.delegate
        }
        public init (otherString : Swift.String) {
            delegate = otherString
        }
      
        public override func toString() -> Swift.String {
            return delegate
        }
        
        public func charAt(index: Int) -> Character {
          return delegate[delegate.startIndex.advancedBy(index)]
        }
        
        public func length() -> Int {
            return delegate.characters.count
        }
        
        public func subSequence(start: Int, end: Int) -> swjftCharSequence {
          
          let result = delegate.substringWithRange(Range(delegate.startIndex.advancedBy(start) ..< delegate.startIndex.advancedBy(end)))
            return lang.String (otherString: result)
        }
    }
}
