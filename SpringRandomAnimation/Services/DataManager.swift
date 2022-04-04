//
//  DataManager.swift
//  SpringRandomAnimation
//
//  Created by Владимир Киселев on 04.04.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let presets = ["fadeInRight", "fadeInLeft", "flipX", "pop", "fall", "squeezeRight", "fadeInDown"]

    let curves = ["easeInQuad", "easeInOutSine", "easeInCubic", "easeInExpo", "easeInOutQuad", "easeIn", "linear", "easeOutCirc"]

    let forces = [1.98, 1.44, 1.24, 1.15] // random from 1.00 to 2.00

    let durations = [1.04, 1.98, 1.76, 1.57, 1.97] // random from 1.00 to 2.00

    let delays = [0.30]
    
    private init() {}
}
