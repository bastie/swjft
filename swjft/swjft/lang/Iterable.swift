//
//  Iterable.swift
//  swjft
//
//  Created by Sebastian Ritter on 14.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//

public protocol swjftIterable {
    func iterator() -> util.Iterator
}

extension lang {
    public typealias Iterable = swjftIterable
}