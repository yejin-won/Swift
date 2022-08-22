//
//  ViewController.swift
//  Quiz03
//
//  Created by TJ on 2022/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNum: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        stateLabel.text = ""
    }

    @IBAction func decibtn(_ sender: UIButton) {
        
//      sol 1 ) if-else문으로 홀짝수 판별하기
        if tfNum.text!.isEmpty == false{
            if tfNum.text == "0"{
                stateLabel.text = "입력하신 숫자는 \(tfNum.text!)입니다."
                tfNum.text?.removeAll()
            }else if Int(tfNum.text!)! % 2 == 0{
                stateLabel.text = "입력하신 숫자는 \(tfNum.text!)(으)로 짝수입니다."
                tfNum.text?.removeAll()
            }else{
                stateLabel.text = "입력하신 숫자는 \(tfNum.text!)(으)로 홀수입니다."
                tfNum.text?.removeAll()
            }
        }else{
            stateLabel.text = "숫자를 입력하세요!"
        }
        
//      sol 2 ) guard let 사용하여 홀짝수 판별하기 => 소스 가독성을 높힘, 중복기능 줄임(함수)
//        guard let strInputNumber = tfNum.text else {return}
//
//        // 입력여부 확인 함수 만들기
//        let numCheck = checkNil(str: strInputNumber)
//        if numCheck == 1{ // 데이터 존재
//            // 홀짝수 판별하기
//            let returnValue = numberDecision(str: strInputNumber)
//            stateLabel.text = "입력하신 숫자는 \(returnValue) 입니다."
//        }else{ // 데이터 없음
//            stateLabel.text = " 숫자를 확인 하세요!"
//        }
//    }
//
//    func numberDecision(str:String) -> String{ 매개변수를 thin arrow를 이용해 반환타입 지정함 , =>(fat arrow)
//        if Int(str)! % 2 == 0{
//            return "짝수"
//        }else{
//            return "홀수"
//        }
//    }
//
//    func checkNil(str:String) -> Int{ // Int로 retrun 값으로 넘겨줌
//        if str.isEmpty{
//            return 0
//        }else{
//            return 1
//        }
    }
    
}// ViewController

