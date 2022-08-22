//
//  ViewController.swift
//  Quiz06
//
//  Created by TJ on 2022/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgTitle: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var imgFrame: UIImageView!
    @IBOutlet weak var imgNext: UIImageView!
    @IBOutlet weak var imgPrev: UIImageView!
    
    var imageName = ["flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png"]
    var numImage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayImage()
    }

    @IBAction func btnPrev(_ sender: UIButton) {
        numImage -= 1
        displayImage()
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        numImage += 1
        displayImage()
    }
    
    // 이미지 출력
    func displayImage(){
        if numImage == imageName.count{
            numImage = 0
        }
        if numImage < 0 {
            numImage = imageName.count - 1
        }
        imgTitle.text = imageName[numImage]
        imgPrev.image = UIImage(named: imageName[(numImage+(imageName.count-1))%imageName.count]) // First Image
        imgView.image = UIImage(named: imageName[numImage]) // Second Image
        imgNext.image = UIImage(named: imageName[(numImage+1)%imageName.count])
    }
    
}

