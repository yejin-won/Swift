//
//  ViewController.swift
//  EmojiTest
//
//  Created by TJ on 2022/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblNumber: UILabel!
    
    var arrNumber = ["10","20","25","35","40","51","61","71","81","91"]
    var indexState = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblNumber.text = arrNumber[indexState]
    }

    @IBAction func btnIncrease(_ sender: UIButton) {
        indexState += 1
        
        // 계속 증가를 하면 out of index 발생하므로 if-else로 방지
        if indexState >= arrNumber.count{
            lblNumber.text = "X"
        }else{
            lblNumber.text = arrNumber[indexState]
        }
    }
    
}

