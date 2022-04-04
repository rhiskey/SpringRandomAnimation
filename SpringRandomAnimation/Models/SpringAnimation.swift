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
    
    
    
    static func getAnimationList() -> [SpringAnimation] {
        let dm = DataManager.shared
        
        var animations: [SpringAnimation] = []
        
        let presets = dm.presets.shuffled()
        let curves = dm.curves.shuffled()
        let forces = dm.forces.shuffled()
        let durations = dm.durations.shuffled()
        let delays = dm.delays.shuffled()
        
        let iterationCount = min(presets.count, curves.count, forces.count,
                                 durations.count, delays.count)
        
        for index in 0..<iterationCount {
            let animation = SpringAnimation(
                preset: presets[index],
                curve: curves[index],
                force: forces[index],
                duration: durations[index],
                delay: delays[index]
            )
            animations.append(animation)
        }
        
        return animations
        
    }
}
