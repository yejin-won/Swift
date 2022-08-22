//
//  ViewController.swift
//  Quiz081
//
//  Created by TJ on 2022/08/07.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblflowerName1: UILabel!
    @IBOutlet weak var lblflowerName2: UILabel!
    
    @IBOutlet weak var imgView1: UIImageView!
    @IBOutlet weak var imgView2: UIImageView!
    
    var flowerName = ["flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png"]
    var imgIndex = 0
    var imgIndex1  = 0
    
    let interval = 1.0 // 1초
    
    var count = 0 // 3초인 경우 사용
    
    let timeSelector1: Selector = #selector(ViewController.updateTime)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView1.image = UIImage(named: flowerName[imgIndex])
        imgView2.image = UIImage(named: flowerName[imgIndex])
        
        lblflowerName1.text = flowerName[imgIndex]
        lblflowerName2.text = flowerName[imgIndex]
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector1, userInfo: nil, repeats: true)
        // Timer를 두 개를 사용할 경우, cpu사용 많아지고 제대로 동작되지 않음
    }
    
    // functions
    @objc func updateTime(){
        imgIndex += 1
        imgIndex1 += 1 // index를 따로 만들지 않을경우 사진이 0,1에 해당되는 사진만 출력됨
        
        if imgIndex >= flowerName.count{
            imgIndex = 0
        }
        imgView1.image = UIImage(named: flowerName[imgIndex])
        lblflowerName1.text = flowerName[imgIndex]
        
        // 012345 / 012345 .....
        // (초기에 설정한대로 1초마다 이미지 바뀌는 거처럼 동작)
        
        if imgIndex1 == flowerName.count * 3{
            imgIndex1 = 0
        }
        
        imgView2.image = UIImage(named: flowerName[imgIndex1/3])
        lblflowerName2.text = flowerName[imgIndex1/3]
        // 000111222333444555 / 000111222333444555 .....
        // (3초마다 이미지 바뀌는 거처럼 동작)
        
        // 강사님 코드
//        upImageTitle()
//        downImageTitle()
        }
        
        // 강사님 코드
        func upImageTitle(){
            imgIndex += 1
        if imgIndex >= flowerName.count{
            imgIndex = 0
        }
        imgView1.image = UIImage(named: flowerName[imgIndex])
        lblflowerName1.text = flowerName[imgIndex]
    }
    
    func downImageTitle(){
        count += 1
        if count % 3 == 0{
            imgIndex1 += 1
            if imgIndex >= flowerName.count{
                imgIndex = 0
            }
            imgView2.image = UIImage(named: flowerName[imgIndex1])
            lblflowerName2.text = flowerName[imgIndex1]
        }
    }
}

