//
//  DataManager.swift
//  SpringRandomAnimation
//
//  Created by Владимир Киселев on 04.04.2022.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animations: [Spring.AnimationPreset] = [
        .fadeIn,
        .fadeInDown,
        .fadeInLeft,
        .fadeInRight,
        .fadeInUp,
        .fadeOut,
        .fadeOutIn,
        .fall,
        .flash,
        .flipX,
        .flipY,
        .morph,
        .pop,
        .shake,
        .slideDown,
        .slideLeft,
        .slideRight,
        .slideUp,
        .squeeze,
        .squeezeDown,
        .squeezeLeft,
        .squeezeRight,
        .squeezeUp,
        .swing,
        .zoomIn,
        .wobble,
        .zoomOut
    ]
    
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
