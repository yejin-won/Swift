//
//  ViewController.swift
//  ButtonNames3
//
//  Created by TJ on 2022/07/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tEmoji: UILabel!
    var emojis : String = "" // !을 안하면 nil을 수용안하는 변수이므로 무조건 값을 주어야 함
    var fontSize : CGFloat = 10
    /*
     - 강사님 코드
     let smile1 : String = "😀"
     let smile2 : String = "😛"
     let smile3 = "😡"
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tEmoji.text = "Input Emoji in here"
        /*
         tEmoji.text = smile1
         */
    }

    @IBAction func smilebtn(_ sender: UIButton) {
        tEmoji.text = ""
        emojis += "😀"
        tEmoji.text = emojis
        /*
         tEmoji.text?.append(smile1)
         */
    }
    
    @IBAction func teasebtn(_ sender: UIButton) {
        tEmoji.text = ""
        emojis += "😛"
        tEmoji.text = emojis
        /*
         tEmoji.text?.append(smile1)
         */
    }
    
    @IBAction func angrybtn(_ sender: UIButton) {
        tEmoji.text = ""
        emojis += "😡"
        tEmoji.text = emojis
        /*
         tEmoji.text?.append(smile1)
         */
    }
    
    @IBAction func btnInc(_ sender: UIButton) {
        fontSize += 10
        tEmoji.font = UIFont.systemFont(ofSize: fontSize)
        //tEmoji.font = UIFont.systemFont(ofSize: 50)
        // 다른 옵션들도 .color = ~ 하면 바꿀 수 있음
        // P(property) , M(Method), C(Class), S(Structure)
    }
    
    @IBAction func btnDec(_ sender: UIButton) {
        fontSize -= 10
        tEmoji.font = UIFont.systemFont(ofSize: fontSize)
        //tEmoji.font = UIFont.systemFont(ofSize: 10)
    }
} // ViewController

