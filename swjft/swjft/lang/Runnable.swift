//
//  Runnable.swift
//  swjft
//
//  Created by Sebastian Ritter on 16.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//

public protocol swjftRunnable {
    func run ()
}
extension lang {
    public typealias Runnable = swjftRunnable
}