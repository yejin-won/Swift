//
//  ViewController.swift
//  Quiz08
//
//  Created by TJ on 2022/08/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var flowerName = ["flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png"]
    
    var numImage = 0
    
    let interval = 3.0
    let timeSelector:Selector = #selector(ViewController.updateTime)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblName.text = flowerName[numImage]
        imageView.image = UIImage(named: flowerName[numImage])
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        // repeates:false이면 한 번 구동되고 작동하지 않음
        // 여러cpu가 동시에 처리 => asnyc <-> sync
    }
    
    @objc func updateTime(){ // Timer에 의해 3초마다 반응함
        numImage += 1
        
        if numImage >= flowerName.count{
            numImage = 0
        }
        
        lblName.text = flowerName[numImage]
        imageView.image = UIImage(named: flowerName[numImage])
    }

}

