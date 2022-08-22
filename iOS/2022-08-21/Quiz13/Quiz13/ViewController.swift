//
//  ViewController.swift
//  Quiz13
//
//  Created by TJ on 2022/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelNum: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 변수 없이 pageControl 설정
        pageControl.numberOfPages = 10
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red
        
        // 변수 없이 pageControl 이용하여 초기 라벨 값 설정
        labelNum.text = String(pageControl.currentPage + 1)
        lblColor()
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        labelNum.text = String(pageControl.currentPage + 1)
        lblColor()
    }
    
    func lblColor(){
        if Int(labelNum.text!)! % 2 == 0 {
            labelNum.textColor = UIColor.blue
        }else{
            labelNum.textColor = UIColor.red
        }
    }
} // ViewController

