//
//  IntroViewController.swift
//  customanimation
//
//  Created by Amorn Apichattanakul on 3/6/2560 BE.
//  Copyright © 2560 Nimbl3. All rights reserved.
//

import UIKit
import Lottie

class IntroViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let animationView = LOTAnimationView.animationNamed("intro")
        animationView?.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        animationView?.contentMode = .scaleAspectFill
        self.view.addSubview(animationView!)
        self.view.backgroundColor = .white
        animationView?.play(completion: { (finished) in
            self.present(OnboardViewController(), animated: true, completion: nil)
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
