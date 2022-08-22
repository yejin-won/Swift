//
//  ViewController.swift
//  Quiz05
//
//  Created by TJ on 2022/07/31.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNum: UITextField!
    @IBOutlet weak var tvResult: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tvResult.isEditable = false
    }
    @IBAction func btnCalc(_ sender: UIButton) {
        // tfNum nil여부 체크
        let numCheck = checkNil()
        if numCheck == 1{
            tvResult.text = ""
            gugudan()
        }
        tfNum.text!.removeAll()
    }
    func checkNil() -> Int{
        let check = tfNum.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        if check.isEmpty{
            return 0
        }else{
            return 1
        }
    }
    
    func gugudan(){
        for i in 1...9{
            tvResult.text += "\(tfNum.text!) X \(i) = \(Int(tfNum.text!)! * i)\n"
        }
        tvResult.text += "\n"
    }
}

