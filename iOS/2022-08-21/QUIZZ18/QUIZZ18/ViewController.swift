//
//  ViewController.swift
//  QUIZZ18
//
//  Created by TJ on 2022/08/21.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    
    var sites: [String] = ["www.naver.com","www.google.com","www.nate.com","www.cnn.com","www.cbs.com"]
    var siteNames: [String] = ["네이버","구글","네이트","CNN","CBS"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerView.dataSource = self
        pickerView.delegate = self
        myWebView.navigationDelegate = self
        
        loadWebPage(url: sites[0])
    }

    // functions
    func loadWebPage(url: String){
        let siteContents = "http://" + url
        let myUrl = URL(string: siteContents)
        let myRequest = URLRequest(url: myUrl!)
        myWebView.load(myRequest)
    }

} // ViewController

// -- Picker View --
extension ViewController:UIPickerViewDataSource{
    // Column 갯수
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // Row 갯수
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sites.count
    }
    
}

extension ViewController: UIPickerViewDelegate{
    // 등록 이름
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(siteNames[row])"
    }
    
    // 선택 시
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        loadWebPage(url: sites[row])
    }
}

// Indicator
extension ViewController: WKNavigationDelegate{
    // Indicator 시작
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        myActivityIndicator.startAnimating()
        myActivityIndicator.isHidden = false
    }
    
    // Indicator 종료
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
    
    // Error 발생
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
}
