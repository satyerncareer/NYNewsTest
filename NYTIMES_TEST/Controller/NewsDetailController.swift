//
//  NewsDetailController.swift
//  NYTIMES_TEST
//
//  Created by Satyen on 10/05/18.
//  Copyright © 2018 NYTIMES_TEST. All rights reserved.
//

import UIKit
import MBProgressHUD

class NewsDetailController: BaseController {
    var newsDetailUrl:String?
    @IBOutlet weak var webView:UIWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWebView(newsUrl: newsDetailUrl!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadWebView(newsUrl:String){
        let request = URLRequest(url: URL(string: newsUrl)!)
        webView?.loadRequest(request)
    }
    
}
