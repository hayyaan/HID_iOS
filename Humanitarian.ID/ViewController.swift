//
//  ViewController.swift
//  Humanitarian.ID
//
//  Created by Hayyaan Ahmad on 11/7/15.
//  Copyright © 2015 UN OCHA. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    @IBOutlet var containerView : UIView?
    var webView : WKWebView!
    
    let url = NSURL(string: "https://humanitarian.id")
    
    override func loadView() {
        super.loadView()
        self.webView = WKWebView(
            frame: CGRectOffset(self.view.frame, 0, 20)
        )
//        self.view.frame = CGRectOffset(self.view.frame, 0, 20)
        self.view = self.webView

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let request = NSURLRequest(URL: url!)
        
        
        self.webView.loadRequest(request)
        self.webView.allowsBackForwardNavigationGestures = true
        
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.Default
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.Default
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }


}

