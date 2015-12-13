//
//  CharSequence.swift
//  swjft
//
//  Created by Sebastian Ritter on 12.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//

public protocol swjftCharSequence{
    func charAt (index : Int) -> Character
}

extension lang {
    public typealias CharSequence = swjftCharSequence
}