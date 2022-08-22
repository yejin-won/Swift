//
//  ViewController.swift
//  Computer
//
//  Created by TJ on 2022/07/16.
//

import UIKit

class ViewController: UIViewController {

    // 내가 값 줄거면 여기에 코딩
    @IBOutlet weak var tfName: UITextField! // 전역변수
    // ! : optional(null이란값을 해결하기위해 쓰임)
    // weak와 strong 차이 => 데이터가 남아있고 말고 차이
    
    @IBOutlet weak var tfName1: UITextField!
    @IBOutlet weak var tfName2: UITextField!
    @IBOutlet weak var tfName3: UITextField!
    @IBOutlet weak var tfName4: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad() // 지역변수
        // Do any additional setup after loading the view.
        //viewDidLoad는 화면이 뜨기 전 실행하는데 한 번 실행하고 끝
        //tfName.text = "안녕하세요"
    }
    // 내가 값 받을거면 여기에 코딩
    @IBAction func btnOK(_ sender: UIButton) {
        // 함수 함수이름(parameter=> 버튼이름 : 버튼타입)
        let pcName : String = "맥북프로"
        let pcSize : Int = 16
        let pcWeight : Double = 2.56
        let pcBag : Bool = false
        let pcColor : Character = "백"
        
        tfName.text = pcName
        tfName1.text = String(pcSize)
        tfName2.text = String(pcWeight)
        tfName3.text = String(pcBag)
        tfName4.text = String(pcColor)
    }
    @IBAction func btnClear(_ sender: UIButton) {
        tfName.text = ""
        tfName1.text = ""
        tfName2.text = ""
        tfName3.text = ""
        tfName4.text = ""
        //tfName.text.removeAll()
    }
    // 아무곳이나 눌러 softkeyboard 지우기
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

} // 화면 하나가 클라스 하나...

