//
//  String.swift
//  swjft
//
//  Created by Sebastian Ritter on 12.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//

import Foundation

extension lang {
    
    public class String : CharSequence {
        
        private var delegate : Swift.String
        
        public init () {
            delegate = ""
        }
        init (other : Swift.String) {
            delegate = other
        }
        init (other : String) {
            delegate = other.delegate
        }
        
        
        
    }
    
}