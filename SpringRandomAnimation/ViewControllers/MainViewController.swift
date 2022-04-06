//
//  ViewController.swift
//  SpringRandomAnimation
//
//  Created by Владимир Киселев on 04.04.2022.
//

import Spring


class MainViewController: UIViewController {
    
    
    @IBOutlet var animParamsDescriptionLB: UILabel!
    @IBOutlet var viewToAnimate: SpringView!

    var animation = SpringAnimation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showAnimationProperties(for: animation)
    }
    
    @IBAction func runTouched(_ sender: SpringButton) {
        showAnimationProperties(for: animation)
        
        viewToAnimate.animation = animation.preset
        viewToAnimate.curve = animation.curve
        viewToAnimate.force = animation.force
        viewToAnimate.delay = animation.delay
        viewToAnimate.duration = animation.duration
        viewToAnimate.animate()
        
        let nextAnimationName = SpringAnimation.getRandomAnimation()
        animation = nextAnimationName
        sender.setTitle("Run \(nextAnimationName.preset)", for: .normal)
    }
    
}

// MARK: - Animation Properties Labels
extension MainViewController {
    func showAnimationProperties(for animation: SpringAnimation) {
        animParamsDescriptionLB.text =
        """
            Preset: \(animation.preset)
            Curve: \(animation.curve)
            Force: \(string(value: animation.force))
            Delay: \(string(value: animation.delay))
            Duration: \(string(value: animation.duration))
        """
    }
    
    func string(value: Double) -> String {
        String(format: "%.2f", value)
    }
}

