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
    
    private let animations = Animation.getAnimationList()
    private var animationCounter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationInfoLabel.text = animations[animationCounter].animationInfo
    }
    
    @IBAction func runAnimationButtonPressed() {
        
        springView.animation = animations[animationCounter].preset
        springView.curve = animations[animationCounter].curve
        springView.force = CGFloat(animations[animationCounter].force)
        springView.duration = CGFloat(animations[animationCounter].duration)
        springView.delay = CGFloat(animations[animationCounter].delay)
        springView.animate()
        
        animationInfoLabel.text = animations[animationCounter].animationInfo
        
        animationCounter += 1
        
        if animationCounter > animations.count - 1 {
            animationCounter = 0
        }
        
        runAnimationButton.setTitle("Run \(animations[animationCounter].preset)", for: .normal)
    }
}

