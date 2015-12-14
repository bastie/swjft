//
//  Comparable.swift
//  swjft
//
//  Created by Sebastian Ritter on 14.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//

public protocol swjftComparable {
    func compareTo<T> (other:T) -> Int
}

extension lang {
    typealias Comparable = swjftComparable
}