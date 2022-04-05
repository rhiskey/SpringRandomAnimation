//
//  ViewController.swift
//  SpringRandomAnimation
//
//  Created by Владимир Киселев on 04.04.2022.
//

import Spring

protocol AnimationProtocol {
    var animation: SpringAnimation { get set }
    func showAnimationProperties(for animation: SpringAnimation)
}

class MainViewController: UIViewController, AnimationProtocol {
    @IBOutlet var presetLB: UILabel!
    @IBOutlet var curveLB: UILabel!
    @IBOutlet var forceLB: UILabel!
    @IBOutlet var delayLB: UILabel!
    @IBOutlet var durationLB: UILabel!
    
    @IBOutlet var viewToAnimate: SpringView!
    
    var animation: SpringAnimation = SpringAnimation.getRandomAnimation()
    
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

extension MainViewController {
    func showAnimationProperties(for animation: SpringAnimation) {
        presetLB.text = "Preset: \(animation.preset)"
        curveLB.text = "Curve: \(animation.curve)"
        forceLB.text = "Force: \(string(value: animation.force))"
        delayLB.text = "Delay: \(string(value: animation.delay))"
        durationLB.text = "Duration: \(string(value: animation.duration))"
    }
    
    func string(value: Double) -> String
    {
        return String(format: "%.2f", value)
    }
}

