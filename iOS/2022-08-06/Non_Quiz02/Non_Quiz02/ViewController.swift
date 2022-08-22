//
//  ViewController.swift
//  Non_Quiz02
//
//  Created by TJ on 2022/08/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfFirstNum: UITextField!
    @IBOutlet weak var tfSecondNum: UITextField!
    
    @IBOutlet weak var stateLabel: UILabel!
    
    @IBOutlet weak var tfSumResult: UITextField!
    @IBOutlet weak var tfSubResult: UITextField!
    @IBOutlet weak var tfMulResult: UITextField!
    @IBOutlet weak var tfQuoResult: UITextField!
    @IBOutlet weak var tfRemResult: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        stateLabel.text = ""
    }

    @IBAction func btnCalc(_ sender: Any) {
        if tfFirstNum.text!.isEmpty || tfSecondNum.text!.isEmpty{
            stateLabel.text = "숫자를 확인하세요!"
        }else{
            let fNum = Int(tfFirstNum.text!)!
            let sNum = Int(tfSecondNum.text!)!
            calculate(first: fNum, second: sNum)
        }
    }
    
    func calculate(first:Int,second:Int){
        tfSumResult.text = String(first+second)
        tfSubResult.text = String(first-second)
        tfMulResult.text = String(first*second)
        if second != 0{
            tfQuoResult.text = String(first/second)
            tfRemResult.text = String(first%second)
        }else{
            tfQuoResult.text = "Impossible"
            tfRemResult.text = "Impossible"
        }
        stateLabel.text = "계산이 되었습니다"
    }
    
}

