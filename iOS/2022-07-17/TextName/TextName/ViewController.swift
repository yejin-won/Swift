//
//  ViewController.swift
//  TextName
//
//  Created by TJ on 2022/07/17.
//

import UIKit

class ViewController: UIViewController {

    // 전역 변수
    @IBOutlet weak var welLabel: UILabel!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var errLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        errLabel.text = "환영합니다"
    }

    @IBAction func sendbtn(_ sender: UIButton) {
        //welLabel.text! += tfName.text!
        // Forced Unwrapping
        // ()를 없애고 그 안의 데이터만 출력되게 함
        //tfName.text = "" // 이름이 반복적으로 출력되지 않도록 방지
        if tfName.text?.count == 0{
        // if tfName.text!.isEmpty -> 단점: 공백 체크 못함
        //if tfName.text?.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
            errLabel.text = "이름을 입력하세요"
            errLabel.textColor = UIColor.red
        }else{
            errLabel.text = ""
            welLabel.text! += tfName.text!
            tfName.text = ""
        }
    }
    
    @IBAction func clearbtn(_ sender: UIButton) {
        welLabel.text = "Welcome!"
        tfName.text?.removeAll()
    }
}

