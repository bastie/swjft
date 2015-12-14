//
//  CharSequence.swift
//  swjft
//
//  Created by Sebastian Ritter on 12.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//

public protocol swjftCharSequence{
    func charAt (index : Int) -> Character
    func length () -> Int
    func subSequence (start: Int, end : Int) -> swjftCharSequence
    func toString() -> Swift.String 
    /* Java 8 methods:
	func default chars () -> IntStream
    func default codePoints() -> IntStream
	*/
}

extension lang {
    public typealias CharSequence = swjftCharSequence
}