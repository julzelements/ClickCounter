//
//  ViewController.swift
//  ClickCounter
//
//  Created by Julian Scharf on 2/03/2016.
//  Copyright © 2016 Julian Scharf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var count = 0
  var label: UILabel?

  override func viewDidLoad() {
    super.viewDidLoad()
    
    //label
    var label = UILabel()
    label.frame = CGRectMake(150, 150, 60, 60)
    label.text = "0"
    self.label = label
    self.view.addSubview(label)
    
    //button
    var button = UIButton()
    button.frame = CGRectMake(150, 250, 60, 60)
    button.setTitle("Click", forState: .Normal)
    button.setTitleColor(UIColor.blueColor(), forState: .Normal)
    self.view.addSubview(button)
    
    //target/action
    button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
    
  }
  func incrementCount() {
    self.count++
    self.label?.text = "\(count)"
  }

}

