//
//  ViewController.swift
//  Quiz32
//
//  Created by TJ on 2022/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    @IBOutlet weak var lblMessage: UILabel!
    
    var num1st: Int = 0
    var num2nd: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnCalc(_ sender: UIButton) {
        // 숫자 정렬
        orderNum()
        // 범위 계산
        lblMessage.text = "숫자의 합계는 \(sumRange()) 입니다"
    }
    
    // 숫자 입력 받아서 숫자 정렬
    func orderNum(){
        let numNum1 = Int(tfNum1.text!) ?? 0
        let numNum2 = Int(tfNum2.text!) ?? 0
        if numNum1 > numNum2 {
            num1st = numNum2
            num2nd = numNum1
        }else {
            num1st = numNum1
            num2nd = numNum2
        }
    }
    
    // 범위 합계
    func sumRange() -> Int{
        var total: Int = 0
        for i in num1st...num2nd{
            total += i
        }
        return total
    }
    
} //ViewController

