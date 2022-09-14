//
//  ViewController.swift
//  springAnimationHW
//
//  Created by Anikin Ilya on 14.09.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet var springView: SpringView!
    @IBOutlet var animationInfoLabel: UILabel!
    @IBOutlet var runAnimationButton: SpringButton!
    
    
    @IBAction func runAnimationButtonPressed() {
        springView.animation = "pop"
        springView.curve = "easeInQuint"
        springView.force = CGFloat.random(in: 0...2)
        springView.duration = CGFloat.random(in: 0...1)
        springView.delay = CGFloat.random(in: 0...1)
        springView.animate()
        
        animationInfoLabel.text =
"""
preset: \(springView.animation)
curve: \(springView.curve)
force: \(String(format: "%.2f", springView.force))
duration: \(String(format: "%.2f", springView.duration))
delay: \(String(format: "%.2f", springView.delay))
"""

        runAnimationButton.titleLabel?.text = "Run \(springView.animation)"
    }
}

