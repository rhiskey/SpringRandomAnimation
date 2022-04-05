//
//  DataManager.swift
//  SpringRandomAnimation
//
//  Created by Владимир Киселев on 04.04.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let presets = [
        "fadeInRight", "fadeInLeft", "flipX", "pop",
        "fall", "squeezeRight", "fadeInDown", "shake",
        "morph", "squeeze", "wobble", "swing",
        "slideLeft", "zoomIn", "flash"
    ]
    
    let curves = [
        "easeInOut", "easeOut", "easeInCubic", "easeInExpo",
        "easeInOutQuad", "easeIn", "linear", "easeOutCirc",
        "spring", "linear", "easeIn"
    ]
    
    private init() {}
}
