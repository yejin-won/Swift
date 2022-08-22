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
    var numNext = 1
    var numPrev : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        imgTitle.text = imageName[numImage]
//        imgView.image = UIImage(named: imageName[numImage])
        imgNext.image = UIImage(named: imageName[numNext])
        displayImage()
    }

    @IBAction func btnPrev(_ sender: UIButton) {
        numImage -= 1
        if numImage < 0{
            numImage = imageName.count - 1
        }
//        imgView.image = UIImage(named: imageName[numImage])
//        imgTitle.text = imageName[numImage]
//        displayPrev()
        displayNext()
        displayImage()
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        numImage += 1
        if numImage >= imageName.count{
            numImage = 0
        }
//        imgView.image = UIImage(named: imageName[numImage])
//        imgTitle.text = imageName[numImage]
        displayImage()
        displayNext()
    }
    
    // 이미지 출력
    func displayImage(){
        imgTitle.text = imageName[numImage]
        imgView.image = UIImage(named: imageName[numImage])
    }
    
    func displayNext(){
        numNext += 1
        if numNext >= imageName.count{
            numNext = 0
        }
        imgNext.image = UIImage(named: imageName[numNext])
    }
    
    func displayPrev(){
        numPrev = imageName.count - 1
        numPrev! -= 1
        
        imgPrev.image = UIImage(named: imageName[numPrev!])
    }
}

