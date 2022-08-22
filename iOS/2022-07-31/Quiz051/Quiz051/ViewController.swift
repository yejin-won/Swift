//
//  ViewController.swift
//  Quiz051
//
//  Created by TJ on 2022/07/31.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    var imgOn : UIImage?
    var imgOff : UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        
        imgView.image = imgOn
//        imgView.frame.
    }
    @IBAction func btnResize(_ sender: UISwitch) {
        var scale : CGFloat = 2.0
        var newWidth : CGFloat = 0
        var newHeight : CGFloat = 0
        
        switch sender.isOn{
        case true:
            newWidth = imgView.frame.width * 2
            newHeight = imgView.frame.height * 2
        default:
            newWidth = imgView.frame.width / 2
            newHeight = imgView.frame.height / 2
        }
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
    }
    
    @IBAction func btnOnOff(_ sender: UISwitch) {
        switch sender.isOn{
        case true:
            imgView.image = imgOn
        default:
            imgView.image = imgOff
        }
    }
}

