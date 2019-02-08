//
//  AdjustingView.swift
//  LearnViews
//
//  Created by Satya on 2/7/19.
//  Copyright © 2019 Satya. All rights reserved.
//

import UIKit

class AdjustingView: UIView {
    @IBOutlet weak var slider1: UISlider!
    @IBOutlet weak var slider1height: NSLayoutConstraint!
    
    @IBOutlet weak var slider2: UISlider!
    @IBOutlet weak var slider2height: NSLayoutConstraint!
    
    @IBAction func Hide2(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            //self.layoutIfNeeded()
            self.slider1.isHidden = true
            self.slider2.isHidden = true
//            self.slider1height.constant = 0
//            self.slider2height.constant = 0
        }
    }
    @IBAction func show2(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            //self.layoutIfNeeded()
            self.slider1.isHidden = false
            self.slider2.isHidden = false
            //self.slider1height.constant = 30
            //self.slider2height.constant = 30
        }
    }
    @IBAction func show1(_ sender: Any) {
        self.layoutIfNeeded()
        UIView.animate(withDuration: 0.5) {
            //self.slider1height.constant = 30
            self.slider1.isHidden = false
            //self.slider2.isHidden = true
        }
    }
    
}
