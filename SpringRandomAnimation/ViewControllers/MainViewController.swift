//
//  ViewController.swift
//  SpringRandomAnimation
//
//  Created by Владимир Киселев on 04.04.2022.
//

import Spring

class MainViewController: UIViewController {
    
    @IBOutlet var animPropertyLB: [UILabel]!
    
    @IBOutlet var runBT: SpringButton!
    
    let animation = SpringAnimation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func runTouched(_ sender: SpringButton) {
    }
    
}



