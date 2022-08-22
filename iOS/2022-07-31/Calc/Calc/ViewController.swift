//
//  ViewController.swift
//  Calc
//
//  Created by TJ on 2022/07/31.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tfInput1: UITextField!
    @IBOutlet weak var tfInput2: UITextField!
    
    @IBOutlet weak var btnAdd: UISwitch!
    @IBOutlet weak var btnSub: UISwitch!
    @IBOutlet weak var btnMul: UISwitch!
    @IBOutlet weak var btnDiv: UISwitch!
    
    @IBOutlet weak var addResult: UITextField!
    @IBOutlet weak var subResult: UITextField!
    @IBOutlet weak var mulResult: UITextField!
    @IBOutlet weak var divResult: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnCalc(_ sender: UIButton) {
        var checkNum = checkNil()
        if checkNum == 0{
            tfInput1.text = "0"
            tfInput2.text = "0"
        }
        calc()
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        tfInput1.text = ""
        tfInput2.text = ""
        addResult.text = ""
        subResult.text = ""
        mulResult.text = ""
        divResult.text = ""
    }
    
    @IBAction func switchAdd(_ sender: UISwitch) {
        switch sender.isOn{
        case true:
            btnAdd.isOn == true
            addResult.text = calc().addResult
        default:
            btnAdd.isOn == false
            addResult.text = ""
        }
    }
    
    @IBAction func switchSub(_ sender: UISwitch) {
        switch sender.isOn{
        case true:
            btnAdd.isOn == true
            subResult.text = calc().subResult
        default:
            btnAdd.isOn == false
            subResult.text = ""
        }
    }
    
    @IBAction func switchMul(_ sender: UISwitch) {
        switch sender.isOn{
        case true:
            btnAdd.isOn == true
            mulResult.text = calc().mulResult
        default:
            btnAdd.isOn == false
            mulResult.text = ""
        }
    }
    
    @IBAction func switchDiv(_ sender: UISwitch) {
        switch sender.isOn{
        case true:
            btnAdd.isOn == true
            divResult.text = calc().divResult
        default:
            btnAdd.isOn == false
            divResult.text = ""
        }
    }
    

 // Functions
    func checkNil() -> Int{
        if tfInput1.text!.isEmpty || tfInput2.text!.isEmpty{
            return 0
        }else{
            return 1
        }
    }
    
    func calc() -> (addResult:String,subResult:String,mulResult:String,divResult:String){
        addResult.text = String(Int(tfInput1.text!)! + Int(tfInput2.text!)!)
        subResult.text = String(Int(tfInput1.text!)! - Int(tfInput2.text!)!)
        mulResult.text = String(Int(tfInput1.text!)! * Int(tfInput2.text!)!)
        if tfInput2.text != "0"{
            divResult.text = String(Int(tfInput1.text!)! / Int(tfInput2.text!)!)
        }else{
            divResult.text = "불가"
        }
        let result = (addResult:"\(addResult.text)",subResult:"\(subResult.text)",mulResult:"\(mulResult.text)",divResult:"\(divResult.text)")
        return result
    }
}

