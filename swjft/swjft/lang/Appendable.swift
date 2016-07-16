//
//  Appendable.swift
//  swjft
//
//  Created by Sebastian Ritter on 13.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//

import Foundation

public protocol swjftAppendable{
    func append (newChar : Character)
    func append (newCharSequence : lang.CharSequence)
    func append (newCharSequence : lang.CharSequence, start : Int, end : Int)
}

extension lang {
    public typealias Appendable = swjftAppendable
}
