//
//  ViewController.swift
//  SpringRandomAnimation
//
//  Created by Владимир Киселев on 04.04.2022.
//

import Spring


class MainViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var animParamsDescriptionLB: UILabel!
    @IBOutlet var viewToAnimate: SpringView!

    // MARK: - Private properties
    private var animation = SpringAnimation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animParamsDescriptionLB.text = animation.description
    }
    
    // MARK: - IB Actions
    @IBAction func runTouched(_ sender: SpringButton) {
        animParamsDescriptionLB.text = animation.description
        
        viewToAnimate.animation = animation.preset
        viewToAnimate.curve = animation.curve
        viewToAnimate.force = CGFloat(animation.force)
        viewToAnimate.delay = CGFloat(animation.delay)
        viewToAnimate.duration = CGFloat(animation.duration)
        viewToAnimate.animate()
        
        animation = SpringAnimation.getRandomAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
    
}
