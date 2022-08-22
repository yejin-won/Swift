//
//  ViewController.swift
//  Quiz32
//
//  Created by TJ on 2022/07/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var startNum: UITextField!
    @IBOutlet weak var endNum: UITextField!
    @IBOutlet weak var statetLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        statetLabel.text = ""
        startNum.text = nil
        endNum.text = nil
    }
    @IBAction func sumbtn(_ sender: UIButton) {
        let strNum1 = Int(startNum.text!) ?? 0
        let strNum2 = Int(endNum.text!) ?? 0
        // 입력 확인
        compareNums(intNum1: strNum1, intNum2: strNum2)
    }
        

// Functions
    func compareNums(intNum1:Int,intNum2:Int) {
        var endNew : Int
        var startNew : Int
        
        if intNum1 > intNum2 {
            startNew = intNum2
            endNew  = intNum1
        }else{
            startNew = intNum1
            endNew = intNum2
        }
        rangeCalc(intNum1: startNew, intNum2: endNew)
    }
    
    func rangeCalc(intNum1:Int,intNum2:Int){
        var sum : Int = 0
        for i in intNum1...intNum2{
            sum += i
        }
        statetLabel.text = "계산 결과는 \(sum)입니다."
    }
} // ViewController
