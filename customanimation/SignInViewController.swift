//
//  SignInViewController.swift
//  customanimation
//
//  Created by Amorn Apichattanakul on 3/6/2560 BE.
//  Copyright © 2560 Nimbl3. All rights reserved.
//

import UIKit
import Lottie

class SignInViewController: UIViewController {
    let animationView = LOTAnimationView.animationNamed("button")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let username = UITextField()
        let password = UITextField()
        username.translatesAutoresizingMaskIntoConstraints = false
        password.translatesAutoresizingMaskIntoConstraints = false
        animationView?.translatesAutoresizingMaskIntoConstraints = false
        
        username.placeholder = "Username"
        password.placeholder = "Password"
        password.isSecureTextEntry = true
        
        self.view.addSubview(username)
        self.view.addSubview(password)
        self.view.addSubview(animationView!)

        let views = ["username": username,
                     "password" : password,
                     "animationView" : animationView]
        
        var allConstraints = [NSLayoutConstraint]()
        username.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true

        let verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat:
            "V:|-60-[username(50)]-20-[password(50)]-50-[animationView]", options: .alignAllCenterX, metrics: nil, views: views)
         allConstraints += verticalConstraints
        
        NSLayoutConstraint.activate(allConstraints)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(signin(_:)))
        animationView?.addGestureRecognizer(tap)
        
        self.view.backgroundColor = .white
    }
    
    func signin(_ sender: UITapGestureRecognizer) {
        animationView?.play(completion: { (finished) in
            self.present(SampleListController(), animated: true, completion: nil)
        })
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
