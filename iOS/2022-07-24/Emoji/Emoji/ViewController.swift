//
//  ViewController.swift
//  Emoji
//
//  Created by TJ on 2022/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
   
    var emojiArr = ["😀","😁","😒","😖","😳","😅"]
    var countPlay = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        emojiLabel.text = emojiArr[countPlay]
    }

    @IBAction func playbtn(_ sender: UIButton) {
    
        countPlay += 1
        
        if countPlay >= emojiArr.count{
            countPlay = 0
        }
        emojiLabel.text = emojiArr[countPlay]
    }
    
    @IBAction func prebtn(_ sender: UIButton) {
    
        countPlay -= 1
        
        if countPlay < 0{
            countPlay = emojiArr.count-1
        }
        emojiLabel.text = emojiArr[countPlay]
    }
}

