//
//  SelectViewController.swift
//  keyboardCrasher
//
//  Created by masuda on 2015/11/10.
//  Copyright © 2015年 ignition. All rights reserved.
//

import UIKit

class SelectViewController: UIViewController {

    @IBOutlet private weak var segment: UISegmentedControl!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var urlString = ""
        if segment.selectedSegmentIndex == 0 {
            urlString = "https://www.google.co.jp"
        } else {
            urlString = "http://www.amazon.co.jp/"
        }
        
        if segue.identifier == "ToSecondViewController" {
            let secondViewController = segue.destinationViewController as! SecondViewController
            secondViewController.urlString = urlString
        } else {
            let wkWebViewController = segue.destinationViewController as! WKWebViewController
            wkWebViewController.urlString = urlString
        }
    }
}
