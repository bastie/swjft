//
//  Object.swift
//  swjft
//
//  Created by Sebastian Ritter on 12.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//

import Foundation

extension lang {
    public class Object : NSObject {
        
        public override init() {
            super.init()
        }
        
        public func toString () -> Swift.String {
            /// getClass().getName() + '@' + Integer.toHexString(hashCode())
            return "\(getClass().getName())@\(Swift.String(hashValue,radix:16))"
        }
        
        public func toStringJ () -> String {
            return String(otherString: self.toString())
        }
        
        public func getClass () -> Class {
            var className: Swift.String {
                return NSStringFromClass(self.dynamicType).componentsSeparatedByString(".").last!
            }
            let clazz : Class = Class (newName: className)
            return clazz
        }
    }
    
}
