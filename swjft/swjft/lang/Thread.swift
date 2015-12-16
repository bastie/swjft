//
//  Thread.swift
//  swjft
//
//  Created by Sebastian Ritter on 16.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//

import Foundation

public protocol swjftUncaughtExceptionHandler {
    func uncaughtException(t : lang.Thread, e : lang.Exception)

}

extension lang {
    public class Thread {
    
        public typealias UncaughtExceptionHandler = swjftUncaughtExceptionHandler

    }
    
}
