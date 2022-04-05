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

    private init() {}
}
