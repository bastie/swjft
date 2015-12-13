//
//  Class.swift
//  swjft
//
//  Created by Sebastian Ritter on 12.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//

import Foundation

extension lang {
    public class Class : Object {
        private let name : Swift.String
        init (newName : Swift.String)  {
            name = newName
        }
        
        public func getName () -> Swift.String {
            return name
        }
    }
}