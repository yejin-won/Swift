//
//  ViewController.swift
//  SendMessage
//
//  Created by TJ on 2022/07/31.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tvResult: UITextView!
    @IBOutlet weak var tfMessage: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tvResult.isEditable = false
    }
    @IBAction func btnSend(_ sender: UIButton) {
        let numCheck = checkNil()
        if numCheck == 1{
            tvResult.text += tfMessage.text! + "\n"
            stateLabel.text = ""
        }else{
            stateLabel.text = "내용을 입력하세요"
        }
        tfMessage.text = ""
    }
    
    @IBAction func btnEmoji(_ sender: UIButton) {
        tfMessage.text! += "😆"
    }
    
    func checkNil() -> Int{
        let check = tfMessage.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        if check!.isEmpty{
            return 0
        }else{
            return 1
        }
    }
    
    // 아무곳이나 눌러 softkeyboard 지우기
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
}// ViewController

