//
//  ViewController.swift
//  Quiz09
//
//  Created by TJ on 2022/08/07.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblGugudan: UILabel!
    @IBOutlet weak var pickerViewGugudan: UIPickerView!
    @IBOutlet weak var tvGugudan: UITextView!
    
    var dan = [Int](2...9)
    let picker_view_colum = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerViewGugudan.dataSource = self
        pickerViewGugudan.delegate = self
        tvGugudan.isEditable = false
        lblGugudan.text = "\(dan[0]) 단"
        calcDan(dan: dan[0])
    }
    
    func calcDan(dan:Int){
        tvGugudan.text = ""
        for i in 1...9{
            tvGugudan.text += "\(dan) x \(i) = \(dan*i)\n"
        }
    }
    
} // ViewController

extension ViewController:UIPickerViewDataSource{
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dan.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return picker_view_colum
    }
}

extension ViewController:UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(dan[row]) 단"
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if tvGugudan.text.isEmpty{
        }else{
            tvGugudan.text = ""
        }
        calcDan(dan: row+2)
    }
}
