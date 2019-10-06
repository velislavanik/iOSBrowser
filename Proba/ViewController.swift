//
//  ViewController.swift
//  Proba
//
//  Created by Velis on 6.10.19.
//  Copyright © 2019 Go Easy. All rights reserved.
//
import WebKit
import UIKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    var webView:WKWebView!
    
    override func loadView(){
        webView=WKWebView()
        webView.navigationDelegate=self
        view=webView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = URL(string:"https://demo1.easy.bg")!
        webView.load(URLRequest(url:url))
        webView.allowsBackForwardNavigationGestures=true
    }


}

