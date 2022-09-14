//
//  DataManager.swift
//  springAnimationHW
//
//  Created by Anikin Ilya on 14.09.2022.
//

import SpringAnimation

class DataManager {
    static let shared = DataManager()
    
    let preset = AnimationPreset.allCases
    let curve = AnimationCurve.allCases
    
    var force: Double {
        Double.random(in: 0...2)
    }
    var duration: Double {
        Double.random(in: 0...1)
    }
    var delay: Double {
        Double.random(in: 0...1)
    }
    
    private init() {}
}
