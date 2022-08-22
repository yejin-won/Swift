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
    
    // 계산 결과값을 저장한다.
    var storeAdd: String = ""
    var storeSub: String = ""
    var storeMul: String = ""
    var storeDiv: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnCalc(_ sender: UIButton) {
        let firstNum = Int(tfInput1.text!) ?? 0
        let secondNum = Int(tfInput2.text!) ?? 0
        calculate(first: firstNum, second: secondNum)
    }
    
        // 강사님 코드
    func calculate(first:Int,second:Int){
        storeAdd = String(first + second)
        storeSub = String(first - second)
        storeMul = String(first * second)

        if second == 0{
            storeDiv = "Impossible"
        }else{
            storeDiv = String(Double(first) / Double(second))
        }
        addResult.text = storeAdd
        subResult.text = storeSub
        mulResult.text = storeMul
        divResult.text = storeDiv
    }

    func displayResult(){
        addResult.text = storeAdd
        subResult.text = storeSub
        mulResult.text = storeMul
        divResult.text = storeDiv
    }
    
    func swEnable(){
        btnAdd.isOn = true
        btnSub.isOn = true
        btnMul.isOn = true
        btnDiv.isOn = true
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
 
        tfInput1.text?.removeAll()
        tfInput2.text?.removeAll()

        storeAdd = ""
        storeSub = ""
        storeMul = ""
        storeDiv = ""
        
        displayResult()
        swEnable()
        tfInput1.becomeFirstResponder()
    }
    
    @IBAction func switchAdd(_ sender: UISwitch) {
        if sender.isOn{
            addResult.text = storeAdd
        }else{
            addResult.text = ""
        }
    }
    
    @IBAction func switchSub(_ sender: UISwitch) {
        if sender.isOn{
            subResult.text = storeAdd
        }else{
            subResult.text = ""
        }
    }
    
    @IBAction func switchMul(_ sender: UISwitch) {
        if sender.isOn{
            mulResult.text = storeMul
        }else{
            mulResult.text = ""
        }
    }
    
    @IBAction func switchDiv(_ sender: UISwitch) {
        if sender.isOn{
            divResult.text = storeDiv
        }else{
            divResult.text = ""
        }
    }
}// ViewController

