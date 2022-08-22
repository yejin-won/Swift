//
//  ViewController.swift
//  Quiz31
//
//  Created by TJ on 2022/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    @IBOutlet weak var tfresult: UITextField!
    
    @IBOutlet weak var stateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        stateLabel.text = ""
    }
    @IBAction func sumCalcbtn(_ sender: UIButton) {
        // Optional Unwrapping
        guard let strInputNumber = tfNum1.text else {return}
        // tfNum1.text에 숫자가 있을경우 tfNum1.text의 값을 strInputNumber에 할당함
        // tfNum1.text에 숫자가 없을경우 return 값을 반환 => optional 대신 해주는 것
        guard let strInputNumber1 = tfNum2.text else {return}
        
        
        // 입력 항목 Check
        // 1st) 빈칸인지 아닌지 먼저 확인
        if checkNil(str: strInputNumber) == false || checkNil(str: strInputNumber1) == false{
            stateLabel.text = "숫자를 입력하세요"
       
        // 짝수 홀수 판단하여 출력
        }else{
       //  2nd) 짝수인지 아닌지 확인
            // 2nd -1) 짝수일 경우, 덧셈을 진행
            if evenCheck(str: strInputNumber) == 0 && evenCheck(str: strInputNumber1) == 0{
                let returnValue = evenSum(str: strInputNumber, str1: strInputNumber1)
                tfresult.text = returnValue
                stateLabel.text = "계산이 완료되었습니다"
            // 2nd -2) 홀수일 경우, 덧셈을 진행하지 않고 메시지를 띄움
            }else{
                stateLabel.text = "숫자를 확인해주세요"
            }
        }
        // 강사님 코드
        // 입력항목체크
        // let checkResult = checkNilSpace(strNum1:strNum1, strNum2:strNum2)
        // if checkResult == false{
        //   stateLabel.text = "숫자를 확인해주세요"
        // }else{
        //   let numNum1 = Int(strNum1)!
        //   let numNum2 = Int(strNum2)!
        //   checkEvenOdd(num1: numNum1, num2:numNum2)
        // }
    }
    
// Functions
    
    // Nil 판단 func. => Nil : false, Nil X : true를 반환
    func checkNil(str:String) -> Bool{
        if str.isEmpty {
            return false //str이 isEmpty면 false 반환
        }else{
            return true
        }
    }
    
    // 짝수 판단 func. => 짝수 : 0, 홀수 : 1을 반환
    func evenCheck(str:String) -> Int{ // 다른 타입으로 넘겨 줄게 없으면 그냥 생략
        if Int(str)! % 2 == 0{
            return 0
        }else{
            return 1
        }
    }
    
    
    // 덧셈 func.
    func evenSum(str:String ,str1:String)-> String{
        
        return String(Int(str)! + Int(str1)!)
    }
    
    // 강사님 Functions
        
    // Nil 판단 func.
//    func checkNilSpace(strNum1:String,strNum2:String) -> Bool{
//        if strNum1.isEmpty || strNum2.isEmpty {
//            return false //str이 isEmpty면 false 반환
//        }else{
//            return true
//        }
//    }
        
    // 짝수 판단 func.
//    func checkEvenOdd(num1:Int, num2:Int){ // 다른 타입으로 넘겨 줄게 없으면 그냥 생략
//        if num1 % 2 == 0 && num2 % 2 == 0{
//            tfresult.text = String(num1 + num2)
//            stateLabel.text = "계산이 완료되었습니다."
//        }else{
//            stateLabel.text = "짝수를 입력하세요!"
//            }
//    }
        
}

