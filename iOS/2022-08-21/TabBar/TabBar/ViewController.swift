//
//  ViewController.swift
//  TabBar
//
//  Created by TJ on 2022/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnGoDatePicker(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
    
    @IBAction func btnGoImageView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 2
    }
}

