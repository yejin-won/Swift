//
//  ViewController.swift
//  Switch
//
//  Created by TJ on 2022/07/30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfkor: UITextField!
    @IBOutlet weak var tfmat: UITextField!
    @IBOutlet weak var tfeng: UITextField!

    @IBOutlet weak var stateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        stateLabel.text = ""
    }
    @IBAction func calcbtn(_ sender: UIButton) {
        if tfkor.text!.isEmpty || tfmat.text!.isEmpty || tfeng.text!.isEmpty{
            stateLabel.text = "숫자를 입력하세요"
        }else{
            calc(str1: tfkor.text!, str2: tfmat.text!, str3: tfeng.text!)
        }
        
        
        // 강사님 코드
        
//        guard let strKorean = tfkor.text else {return}
//        guard let strMath = tfmat.text else {return}
//        guard let strEng = tfeng.text else {return}
//        빈 값이 아닐 경우 textfield입력된 값을 할당하고 그렇지 않으면 return(=0) 값 할당
//
//        if strKorean.isEmpty || strMath.isEmpty || strEng.isEmpty{
//            stateLabel.text = "숫자를 확인하세요!"
//        }else{
//            let avg = (Double(strKorean)! + Double(strMath)! + Double(strEng)!) / 3.0
//            var grade : String = ""
//            grade = avg >= 90 ? "수" :
//                    avg >= 80 ? "우" :
//                    avg >= 70 ? "미" :
//                    avg >= 60 ? "양" : "가"
//        stateLabel.text = "평균은 \(String(format: "%.2f", avg))이고 등급은 \(grade) 입니다."
//        }
        
        
    }
    func calc(str1:String,str2:String,str3:String){
        var tot : Int = 0
        var avg : Double = 0.0
        tot = Int(str1)! + Int(str2)! + Int(str3)!
        avg = Double(tot) / 3.0
        
        var grade : String
        grade = avg >= 90 ? "수" :
                avg >= 80 ? "우" :
                avg >= 70 ? "미" :
                avg >= 60 ? "양" : "가"
        
        stateLabel.text = "평균은 \(String(format: "%.2f", avg))이고 등급은 \(grade) 입니다."
        // format 예시 %5.2f(소수점을포함해 5자리이며 소수점은 2번째까지)
    }
    // 아무곳이나 눌러 softkeyboard 지우기
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

