//
//  WKWebViewController.swift
//  keyboardCrasher
//
//  Created by masuda on 2015/11/10.
//  Copyright © 2015年 ignition. All rights reserved.
//

import UIKit
import WebKit

class WKWebViewController: UIViewController {

    var urlString = ""
    
    @IBOutlet private weak var webViewBaseView: UIView!
    private weak var webView: WKWebView!
    
    override func loadView() {
        super.loadView()
        
        let webView = WKWebView()
        webView.frame = webViewBaseView.bounds
        webView.autoresizingMask = [.FlexibleHeight, .FlexibleWidth]
        webViewBaseView.addSubview(webView)
        self.webView = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let request = NSURLRequest(URL: NSURL(string: urlString)!)
        webView.loadRequest(request)
    }
}
