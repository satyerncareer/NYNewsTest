//
//  ViewController.swift
//  NYTIMES_TEST
//
//  Created by Satyen on 10/05/18.
//  Copyright © 2018 NYTIMES_TEST. All rights reserved.
//

import UIKit
import MBProgressHUD

class BaseController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func showProgressHud() -> Void {
        MBProgressHUD.showAdded(to: self.view, animated: true)
    }
    func hideProgressHud() -> Void {
        MBProgressHUD.hide(for: self.view, animated: true)
    }

}

