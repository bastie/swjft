//
//  Readable.swift
//  swjft
//
//  Created by Sebastian Ritter on 16.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//

public protocol swjftReadable {
    func read (cb : nio.CharBuffer) -> Int
}
extension lang {
    public typealias Readable = swjftReadable
}
