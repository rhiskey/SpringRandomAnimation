//
//  SpringAnimation.swift
//  SpringRandomAnimation
//
//  Created by Владимир Киселев on 04.04.2022.
//

import Foundation

struct SpringAnimation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
}

extension SpringAnimation {
    static func getRandomAnimation() -> SpringAnimation {
        let dm = DataManager.shared
        
        let presets = dm.presets.shuffled()
        let curves = dm.curves.shuffled()
        
        return SpringAnimation(
            preset: presets.first ?? "fadeInRight",
            curve: curves.first ?? "linear",
            force: Double.random(in: 1.0 ..< 2.0),
            duration: Double.random(in: 1.0 ..< 2.0),
            delay: 0.30
        )
    }
}
