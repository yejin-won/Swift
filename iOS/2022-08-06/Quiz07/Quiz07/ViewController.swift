//
//  ViewController.swift
//  Quiz07
//
//  Created by TJ on 2022/08/06.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblCurrentTime: UILabel!
    @IBOutlet weak var lblPickerTime: UILabel!
    
    let interval = 1.0
    let timeSelector: Selector = #selector(ViewController.updateTime)
    var count = 0 // 파란색, 빨간색
    var alarmTime:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblPickerTime.text = ""
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) { // 사용자의 조작이 없을 경우 멈춰있는 함수
        let datePickerView = sender
        let fomatter = DateFormatter()
        
        fomatter.locale = Locale(identifier: "ko")
        fomatter.dateFormat = "yyyy-MM-dd EEE a hh:mm:ss"
        lblPickerTime.text = "선택시간 : \(fomatter.string(from: datePickerView.date))"
        
        // 새로 포맷한 시간을 alarmTime 변수에 저장
        fomatter.dateFormat = "a hh:mm" // 오전,오후 시 분
        alarmTime = fomatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime(){ // 계속 움직이는 함수
        count += 1
        let date = NSDate()
        let fomatter = DateFormatter()
        
        fomatter.locale = Locale(identifier: "ko")
        fomatter.dateFormat = "yyyy-MM-dd EEE a hh:mm:ss"
        lblCurrentTime.text = "현재시간 : \(fomatter.string(from: date as Date))"
        
        // 새로 포맷한 시간을 currentTime 변수에 저장
        fomatter.dateFormat = "a hh:mm"
        let currentTime = fomatter.string(from: date as Date)
        
        if alarmTime == currentTime{
            if count % 2 == 0{ // count가 짝수일 경우
                view.backgroundColor = UIColor.red
            }else{ // count가 홀수일 경우
                view.backgroundColor = UIColor.blue
            }
        }else{ //alarmTime != currentTime
            view.backgroundColor = UIColor.white
        }
        
    }
    
}

