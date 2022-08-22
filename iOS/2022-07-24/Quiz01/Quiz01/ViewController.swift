//
//  ViewController.swift
//  Quiz01
//
//  Created by TJ on 2022/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblWelcome: UILabel!
    
    // 전역변수
    //    var buttonCount : Int = 0
    var checkBool: Bool = false // 메모리 가장 적게 차지! 체크할때는 bool 사용 권장
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnName(_ sender: UIButton) {
        // count 사용
        //        if buttonCount % 2 == 0{
        //            lblWelcome.text = "Welcome, Jinyoung!"
        //        }else {
        //            lblWelcome.text = "Welcome!"
        //        }
        //        buttonCount += 1
        //    }
        // bool 사용
        if !checkBool {
            lblWelcome.text = "Welcome, Jinyoung!"
            checkBool = true
        }else {
            lblWelcome.text = "Welcome!"
            checkBool = false
        }
        
        // lblwelcome 사용
        //        if lblWelcome.text == "Welcome!" {
        //            lblWelcome.text == "Welcome, Jinyoung!"
        //        }else {
        //            lblWelcome.text == "Welcome!"
        //        }
    }
    
}// ViewController

