//
//  ViewController.swift
//  ButtonName
//
//  Created by TJ on 2022/07/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    //var cnt : Int = 0 // cnt 전역변수 지정
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func namebtn(_ sender: UIButton) {
        let name : String = "원예진"
        
//        // if문을 이용해 Name button을 누를 때, 이름이 붙고 사라짐 반복
//        if(cnt == 0){
            labelName.text! += name
//            cnt += 1
//        }else {
//            labelName.text = "Welcome!"
//            cnt = 0
//        }
    }
    
}

