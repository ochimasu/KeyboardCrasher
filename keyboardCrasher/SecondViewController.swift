//
//  SecondViewController.swift
//  keyboardCrasher
//
//  Created by masuda on 2015/11/09.
//  Copyright © 2015年 ignition. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet private weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let urlString = "https://www.google.co.jp"
        let request = NSURLRequest(URL: NSURL(string: urlString)!)
        webView.loadRequest(request)
    }
}
