//
//  ViewController.swift
//  LearnViews
//
//  Created by Satya on 2/7/19.
//  Copyright © 2019 Satya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bottomContainerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        addview()
    }
    
    func addview() {
        let myClassNib = UINib(nibName: "AdjustingView", bundle: nil)
        let view = myClassNib.instantiate(withOwner: nil, options: nil)[0] as! AdjustingView
        bottomContainerView.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.leadingAnchor.constraint(equalTo: bottomContainerView.leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: bottomContainerView.trailingAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: bottomContainerView.bottomAnchor).isActive = true
        view.heightAnchor.constraint(equalTo: bottomContainerView.heightAnchor).isActive = true
    }
}

