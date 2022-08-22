//
//  ViewController.swift
//  Delegate_01
//
//  Created by TJ on 2022/08/07.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tfInput.delegate = self //
    }

    @IBAction func btnAction(_ sender: UIButton) {
        lblResult.text = tfInput.text
    }
    
}// ViewController (Class)

extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        lblResult.text = tfInput.text
        return true
    }
}// extenstion
