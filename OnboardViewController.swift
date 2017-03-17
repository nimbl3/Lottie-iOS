//
//  OnboardViewController.swift
//  customanimation
//
//  Created by Amorn Apichattanakul on 3/8/2560 BE.
//  Copyright © 2560 Nimbl3. All rights reserved.
//

import UIKit
import Lottie

class OnboardViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let animationView = LOTAnimationView.animationNamed("jumponboard")
        animationView?.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        animationView?.contentMode = .scaleAspectFit
        
        let indicatorView = LOTAnimationView.animationNamed("indicator")
        indicatorView?.translatesAutoresizingMaskIntoConstraints = false
        
        let signInPageButton = UIButton()
        signInPageButton.backgroundColor = .red
        signInPageButton.setTitle("Skip", for: .normal)
        signInPageButton.setTitleColor(.white, for: .normal)
        signInPageButton.translatesAutoresizingMaskIntoConstraints = false
        signInPageButton.addTarget(self, action: #selector(skip(_:)), for: .touchUpInside)

        self.view.addSubview(animationView!)
        self.view.addSubview(signInPageButton)
        self.view.addSubview(indicatorView!)
        self.view.backgroundColor = .white
        
        let views = ["signInPageButton": signInPageButton,
                     "indicatorView": indicatorView]
        
        var allConstraints = [NSLayoutConstraint]()
        
        let signInConstraint = NSLayoutConstraint.constraints(withVisualFormat:
            "V:[signInPageButton(40)]-20-|", options: [], metrics: nil, views: views)
        allConstraints += signInConstraint
        
        let signInHorizontalConstraint = NSLayoutConstraint.constraints(withVisualFormat:
            "[signInPageButton(100)]-20-|", options: [], metrics: nil, views: views)
        allConstraints += signInHorizontalConstraint
        
        let indicatorConstraint = NSLayoutConstraint.constraints(withVisualFormat:
            "|-(>=20)-[indicatorView(300)]-(>=20)-|", options: [], metrics: nil, views: views)
        allConstraints += indicatorConstraint
        
        let verticalindicatorConstraint = NSLayoutConstraint.constraints(withVisualFormat:
            "V:[indicatorView(50)]-(50)-|", options: [], metrics: nil, views: views)
        allConstraints += verticalindicatorConstraint
        NSLayoutConstraint.activate(allConstraints)
    }
    
    func skip(_ sender: UIButton) {
        self.present(SignInViewController(), animated: false, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
