//
//  ViewController.swift
//  Alert
//
//  Created by TJ on 2022/08/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    var countOn = 0
    var countOFF = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView.image = UIImage(named: "lamp_off.png")
    }

    @IBAction func btnON(_ sender: UIButton) {
        countOn += 1
        imgView.image = UIImage(named: "lamp_on.png")
        if countOn > 1{
            let onAlert = UIAlertController(title: "경고", message: "현재 On 상태입니다.", preferredStyle: .alert)
            let onActionDefault = UIAlertAction(title: "네.알겠습니다", style: .default, handler: nil)
            
            onAlert.addAction(onActionDefault)
            
            present(onAlert, animated: true, completion: nil)
        }
    }
    
    @IBAction func btnOFF(_ sender: UIButton) {
        countOFF = 0
        let offAlert = UIAlertController(title: "램프 끄기", message: "램프를 끄겠습니까?", preferredStyle: .alert)
        let offActionDefault_Y = UIAlertAction(title: "네", style: .default, handler: {ACTION in
                self.imgView.image = UIImage(named: "lamp_off.png")
                self.countOn = 0
            })
        let offActionDefault_N = UIAlertAction(title: "아니오", style: .default, handler: nil)
    
        offAlert.addAction(offActionDefault_Y)
        offAlert.addAction(offActionDefault_N)
        
        present(offAlert, animated: true, completion: nil)
    }
    
    @IBAction func btnRemove(_ sender: UIButton) {
        let removeAlert = UIAlertController(title: "램프 제거?", message: "램프를 제거 할까요?", preferredStyle: .alert)
        let removeActionDefault_N = UIAlertAction(title: "아니요. 끕니다!", style: .default, handler: {ACTION in
            self.imgView.image = UIImage(named: "lamp_off.png")
        })
        let removeActionDefault_Y = UIAlertAction(title: "아니요. 켭니다!", style: .default, handler: {ACTION in
            self.imgView.image = UIImage(named: "lamp_on.png")
            self.countOn += 1
        })
        let removeActionDefault = UIAlertAction(title: "네. 제거 합니다!", style: .default, handler: {ACTION in
            self.imgView.image = UIImage(named: "lamp_remove.png")
        })
        
        removeAlert.addAction(removeActionDefault_N)
        removeAlert.addAction(removeActionDefault_Y)
        removeAlert.addAction(removeActionDefault)
        
        present(removeAlert, animated: true, completion: nil)
    }
    
} // ViewController

