//
//  CGPoint+Internal.swift
//  SwiftNoise
//
//  Created by Fredrik Sjöberg on 16/07/15.
//  Copyright (c) 2015 Fredrik Sjoberg. All rights reserved.
//

import Foundation

internal extension CGPoint {
    internal init(x: Float, y: Float) {
        self.init(x: CGFloat(x),y: CGFloat(y))
    }
}

internal extension CGPoint {
    internal var normalized: CGPoint {
        let s = 1/sqrt(self.x*self.x + self.y*self.y)
        return CGPoint(x: self.x*s, y: self.y*s)
    }
}

internal func * (point: CGPoint, value: Float) -> CGPoint {
    return CGPoint(x: point.x*CGFloat(value), y: point.y*CGFloat(value))
}