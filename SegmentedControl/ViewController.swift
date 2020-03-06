//
//  ViewController.swift
//  SegmentedControl
//
//  Created by Darius Ngo on 3/5/20.
//  Copyright © 2020 Darius Ngo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var textfield: UITextField!
  @IBOutlet weak var stack: UIStackView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.

  }

  @IBAction func itChanged(_ sender: Any) {
    animate()
  }
  
  private func animate() {
    self.textfield.text = self.textfield.isHidden ? "asdads" : ""
    UIView.animate(
      withDuration: 0.25,
      delay: 0,
      options: .curveEaseInOut,
      animations: {
        
        self.textfield.isHidden.toggle()
        self.stack.layoutIfNeeded()
    },
      completion: nil)
  }
}

