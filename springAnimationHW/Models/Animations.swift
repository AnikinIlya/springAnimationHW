//
//  Animations.swift
//  springAnimationHW
//
//  Created by Anikin Ilya on 14.09.2022.
//

import SpringAnimation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var animationInfo: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
        """
    }
}

extension Animation {
    static func getAnimationList() -> [Animation] {
        
        var animations: [Animation] = []
        
        let presets = DataManager.shared.preset.shuffled()
        let curves = DataManager.shared.curve.shuffled()
        
        let iterationCount = min(presets.count, curves.count)
        
        for index in 0..<iterationCount {
            let animation = Animation(
                preset: "\(presets[index])",
                curve: "\(curves[index])",
                force: DataManager.shared.force,
                duration: DataManager.shared.duration,
                delay: DataManager.shared.delay
            )
            
            animations.append(animation)
        }
        
        return animations
    }
}
