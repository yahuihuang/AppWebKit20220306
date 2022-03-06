//
//  ViewController.swift
//  AppWebKit20220306
//
//  Created by grace on 2022/3/6.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: "https://tw.yahoo.com") {
            let request = URLRequest(url: url)
            myWebView.load(request)
        }
    }


}

