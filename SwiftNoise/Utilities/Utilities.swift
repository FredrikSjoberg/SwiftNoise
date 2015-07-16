//
//  Utilities.swift
//  SwiftNoise
//
//  Created by Fredrik Sjöberg on 16/07/15.
//  Copyright (c) 2015 Fredrik Sjoberg. All rights reserved.
//

import Foundation

internal let perlinSampleSize = 1024

internal let B = perlinSampleSize
internal let BM = perlinSampleSize-1

internal let N = 0x1000
internal let NP = 12 // 2^N
internal let NM = 0xfff

internal let doubleBplus2 = perlinSampleSize + perlinSampleSize + 2


internal struct Table {
    internal let b0: Int
    internal let b1: Int
    internal let r0: Float
    internal let r1: Float
    
    init(value: Float) {
        let t = value + Float(N)
        b0 = Int(t) & BM
        b1 = (b0+1) & BM
        r0 = t - Float(Int(t))
        r1 = r0 - 1
    }
}


internal struct Matrix {
    internal let m00: Int
    internal let m10: Int
    internal let m01: Int
    internal let m11: Int
}

internal var generateRandom: Float {
    return Float( ((Int(rand()) % (B + B)) - B) / B )
}