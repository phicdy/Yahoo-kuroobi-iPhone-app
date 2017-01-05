//
//  ViewController.swift
//  Sample
//
//  Created by phicdy on 2016/12/31.
//  Copyright © 2016年 phicdy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let value :Int = 10 - 1
        label.text = "10 - 1 = \(value)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

