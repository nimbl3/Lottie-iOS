//
//  DetailController.swift
//  customanimation
//
//  Created by Amorn Apichattanakul on 3/7/2560 BE.
//  Copyright © 2560 Nimbl3. All rights reserved.
//

import UIKit
import Lottie

class  DetailController: UIViewController {
    
    var animationName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let closeBtn = UIButton(frame: CGRect(x: 20, y: 20, width: 50, height: 50))
        closeBtn.setTitle("Close", for: .normal)
        closeBtn.setTitleColor(.black, for: .normal)
        closeBtn.addTarget(self, action: #selector(dismissController), for: .touchUpInside)
        
        let animationView = LOTAnimationView.animationNamed(animationName)
        animationView?.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        animationView?.contentMode = .scaleAspectFit
        
        if animationName == "indicator" {
            self.view.backgroundColor = .blue
        } else {
            self.view.backgroundColor = .white
        }
        
        self.view.addSubview(animationView!)
        self.view.addSubview(closeBtn)
        
        if self.animationName == "vcTransition1" {
            animationView?.loopAnimation = false
        } else {
            animationView?.loopAnimation = true
        }
        animationView?.play(completion: { (finished) in
            if self.animationName == "vcTransition1" {
                self.present(DetailController(), animated: false, completion: nil)
            }
        })
    }
    
    func dismissController() {
        self.dismiss(animated: true, completion: nil)
    }
}

