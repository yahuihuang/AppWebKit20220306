//
//  ViewController.swift
//  AppWebKit20220306
//
//  Created by grace on 2022/3/6.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var goButton: UIButton!
    @IBOutlet weak var urlInput: UITextField!
    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: "https://warrant.tssco.com.tw") {
            let request = URLRequest(url: url)
            myWebView.load(request)
        }
    }

    @IBAction func goAction(_ sender: Any) {
        var urlString = urlInput.text ?? ""
        urlString = "https://" + urlString
        
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            myWebView.load(request)
        }
    }
    
}

