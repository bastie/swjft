//
//  AutoCloseable.swift
//  swjft
//
//  Created by Sebastian Ritter on 13.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//

import Foundation
protocol swjftAutoCloseable {
    func close()
}

extension lang {
    typealias AutoCloseable = swjftAutoCloseable
}