//
//  String.swift
//  swjft
//
//  Created by Sebastian Ritter on 12.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//

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
            let location = delegate.startIndex.advancedBy(index)
            return delegate[location]
        }
    }
}