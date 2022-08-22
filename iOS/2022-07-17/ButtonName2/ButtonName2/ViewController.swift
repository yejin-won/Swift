//
//  ViewController.swift
//  ButtonName2
//
//  Created by TJ on 2022/07/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tSmile: UILabel!
    var smile : String = "" // 기존의 안내말을 지우고 스마일을 누적시키기 위한 전역변수 필요(화면에 출력할 글자의 저장소)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tSmile.text = "이 곳에 Emoji가 출력됩니다."
    }
        
    @IBAction func smilebtn(_ sender: UIButton) {
        tSmile.text = ""
        smile += "🙂"
        tSmile.text = smile // 화면 출력용이므로 optional 필요없음
        // 기존 코드
        // tSmile.text! += "🙂" // 누적하면서 출력되어야 하므로  optional 필요
    }
    
    @IBAction func delbtn(_ sender: UIButton) {
        tSmile.text?.removeLast()
        smile = tSmile.text!
    }
}

