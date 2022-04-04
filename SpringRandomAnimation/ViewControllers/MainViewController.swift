//
//  ViewController.swift
//  SpringRandomAnimation
//
//  Created by Владимир Киселев on 04.04.2022.
//

import Spring

class MainViewController: UIViewController {
    
//    @IBOutlet var animPropertyLB: [UILabel]!
    
    @IBOutlet var viewToAnimate: SpringView!
    
    var animation = SpringAnimation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //showAnimationProperties()
    }
    
    @IBAction func runTouched(_ sender: SpringButton) {
        viewToAnimate.animation = animation.preset
        viewToAnimate.curve = animation.curve
        viewToAnimate.force = animation.force
        viewToAnimate.delay = animation.delay
        viewToAnimate.duration = animation.duration
        viewToAnimate.animate()
        
        let nextAnimationName = SpringAnimation.getRandomAnimation()
        animation = nextAnimationName
        //sender.setTitle("Run \(nextAnimationName.preset)", for: .normal)
        
        // Show next anim name on click

        // apply animation
        
        // randomize next
    }
    
    private func showAnimationProperties() {
        
//        for (label, anim) in zip(animPropertyLB, animation) {
//            label.text = anim
//        }
        
//        for index in 0..<4 {
//            switch index{
//            case 0:
//                animPropertyLB[index].text = animation.preset
//            case 1:
//                animPropertyLB[index].text = animation.curve
//            case 2:
//                animPropertyLB[index].text = "\(animation.force)" // Format to %0.2f
//            case 3:
//                animPropertyLB[index].text = "\(animation.duration)"
//            default:
//                animPropertyLB[index].text = "\(animation.delay)"
//            }
//        }
        
    }
}



