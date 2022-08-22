//
//  ViewController.swift
//  DatePicker
//
//  Created by TJ on 2022/08/06.
//

import UIKit

class DateViewController: UIViewController {

    
    @IBOutlet weak var lblCurrentTime: UILabel!
    @IBOutlet weak var lblPickerTime: UILabel!
    
    let interval = 1.0
    let timeSelector: Selector = #selector(DateViewController.updateTime)
    // ViewController의 updateTime라는 함수를 사용
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Multi-tasking cpu1->현재 시간, cpu2-> 선택된 시간
        // 현재 시간을 받기 위해서는 ios를 만든 object-c로 작성해야함
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true) // static으로 현재시간 가져옴
        // timeInterval=> 지정해준 숫자만큼 기다렸다고 지정숫자가되면 다시 반응
        lblPickerTime.text = ""
    }

    @IBAction func chageDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let fomatter = DateFormatter()
        
        fomatter.locale = Locale(identifier: "ko")
        fomatter.dateFormat = "yyyy-MM-dd EEE a hh:mm:ss"
        // 24시간 HH
        lblPickerTime.text = "선택시간 : \(fomatter.string(from: datePickerView.date))"
    }
    
    // Async Task로 1초당 1번씩 구동
    @objc func updateTime(){
        let date = NSDate() // NS = Next Step
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm:ss"
        // EEE = 요일, a = AM, PM
        lblCurrentTime.text = "현재시간 : \(formatter.string(from: date as Date))"
    }
    
}

