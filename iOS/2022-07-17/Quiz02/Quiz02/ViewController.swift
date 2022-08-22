//
//  ViewController.swift
//  Quiz02
//
//  Created by TJ on 2022/07/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNum: UITextField!
    @IBOutlet weak var secondeNum: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    
    @IBOutlet weak var sumResult: UITextField!
    @IBOutlet weak var subResult: UITextField!
    @IBOutlet weak var mulResult: UITextField!
    @IBOutlet weak var quoResult: UITextField!
    @IBOutlet weak var remResult: UITextField!
    
    @IBOutlet weak var divLabel: UILabel!
    @IBOutlet weak var quoLabel: UILabel!
    @IBOutlet weak var remLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calcNums(_ sender: UIButton) {
        if ((firstNum.text?.count == 0) || (secondeNum.text?.count == 0)){
            stateLabel.text = "숫자를 확인하세요"
        }else{
            
//            sol 1) 첫번째,두번째 숫자를 각각 형변환하여 계산한 결과를 다시 String으로 넘겨 출력하기
            
//            let first : Int!
//            let second : Int!
//            first = Int(firstNum.text!)
//            second = Int(secondeNum.text!)
//            sumResult.text = String(Int(first+second))
//            subResult.text = String(Int(first-second))
//            mulResult.text = String(Int(first*second))
//            quoResult.text = String(Int(first/second))
//            remResult.text = String(Int(first%second))

//          sol 2) 첫번째,두번째 숫자를 형변환 후 바로 계산한 결과를 다시 String으로 넘겨 출력하기
            sumResult.text = String(Int(firstNum.text!)! + Int(secondeNum.text!)!)
            subResult.text = String(Int(firstNum.text!)! - Int(secondeNum.text!)!)
            mulResult.text = String(Int(firstNum.text!)! * Int(secondeNum.text!)!)
            if (secondeNum.text == "0"){
                // sol 1) 원하는 부분을 리스트로 만들어 해당부분을 사라지게 하기
                let divList = [divLabel,quoLabel,remLabel,quoResult,remResult]
                for i in divList{
                    i?.isHidden = true
                }
                //(quoResult.text,remResult.text) = ("불가","불가")
                // sol 2) Tuple로 사라지는 거 bool값으로 넘기기
                //(divLabel.isHidden,quoLabel.isHidden,remLabel.isHidden,quoResult.isHidden, remResult.isHidden) = (true,true,true,true,true)
            }else{
                quoResult.text = String(Int(firstNum.text!)! / Int(secondeNum.text!)!)
                remResult.text = String(Int(firstNum.text!)! % Int(secondeNum.text!)!)
                let divList = [divLabel,quoLabel,remLabel,quoResult,remResult]
                for i in divList{
                    i?.isHidden = false
                }
            }
            stateLabel.text = "계산이 되었습니다"
        }
    }
    
    @IBAction func resetbtn(_ sender: UIButton) {
        firstNum.text = ""
        secondeNum.text = ""
        sumResult.text = ""
        subResult.text = ""
        mulResult.text = ""
        quoResult.text = ""
        remResult.text = ""
        
        stateLabel.text = ""
    }
    
    // 아무곳이나 눌러 softkeyboard 지우기
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

