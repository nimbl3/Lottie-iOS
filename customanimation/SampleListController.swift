//
//  SampleListController.swift
//  customanimation
//
//  Created by Amorn Apichattanakul on 3/6/2560 BE.
//  Copyright © 2560 Nimbl3. All rights reserved.
//

import UIKit

class SampleListController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    var tableView: UITableView?
    var dataSource = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = ["customLoading", "button", "intro", "indicator", "santa", "jumponboard"]
        tableView = UITableView(frame: CGRect(x: 0, y: 60, width: self.view.frame.size.width, height: self.view.frame.size.height))
        tableView?.delegate = self
        tableView?.dataSource = self
       
        let dismissButton = UIButton()
        dismissButton.backgroundColor = .red
        dismissButton.setTitle("Back", for: .normal)
        dismissButton.setTitleColor(.white, for: .normal)
        dismissButton.translatesAutoresizingMaskIntoConstraints = false
        dismissButton.addTarget(self, action: #selector(backNavigation(_:)), for: .touchUpInside)
        dismissButton.translatesAutoresizingMaskIntoConstraints = false

        
        self.view.addSubview(tableView!)
        self.view.addSubview(dismissButton)
        self.view.backgroundColor = .white
        
        let views = ["dismissButton": dismissButton]
        
        var allConstraints = [NSLayoutConstraint]()
        
        let verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat:
            "V:|-20-[dismissButton(30)]", options: .alignAllCenterX, metrics: nil, views: views)
        allConstraints += verticalConstraints
        
        let horizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat:
            "|-20-[dismissButton(70)]", options: .alignAllCenterX, metrics: nil, views: views)
        allConstraints += horizontalConstraints
        
        NSLayoutConstraint.activate(allConstraints)
    }
    
    func backNavigation(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextView = DetailController()
        nextView.animationName = dataSource[indexPath.row]
        
        self.present(nextView, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cellId")
        cell.textLabel?.text = self.dataSource[indexPath.row]
        cell.selectionStyle = .none
        
        return cell
    }
}

