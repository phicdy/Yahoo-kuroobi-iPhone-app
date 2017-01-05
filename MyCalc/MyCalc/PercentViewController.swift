//
//  PercentViewController.swift
//  MyCalc
//
//  Created by phicdy on 2017/01/01.
//  Copyright © 2017年 phicdy. All rights reserved.
//

import UIKit

class PercentViewController: UIViewController {

    var price: Int = 0
    @IBOutlet weak var percentField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tap1Button(_ sender: Any) {
        appendPercent(value: "1")
    }

    @IBAction func tap2Button(_ sender: Any) {
        appendPercent(value: "2")
    }

    @IBAction func tap3Button(_ sender: Any) {
        appendPercent(value: "3")
    }
    
    @IBAction func tap4Button(_ sender: Any) {
        appendPercent(value: "4")
    }
    
    @IBAction func tap5Button(_ sender: Any) {
        appendPercent(value: "5")
    }
    
    @IBAction func tap6Button(_ sender: Any) {
        appendPercent(value: "6")
    }
    
    @IBAction func tap7Button(_ sender: Any) {
        appendPercent(value: "7")
    }
    
    @IBAction func tap8Button(_ sender: Any) {
        appendPercent(value: "8")
    }
    
    @IBAction func tap9Button(_ sender: Any) {
        appendPercent(value: "9")
    }
    
    @IBAction func tap0Button(_ sender: Any) {
        appendPercent(value: "0")
    }
    
    @IBAction func tapClearButton(_ sender: Any) {
        percentField.text = "0"
    }
    
    func appendPercent(value :String) {
        let value = percentField.text! + value
        if let percent = Int(value) {
            percentField.text = "\(percent)"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! ResultViewController
        viewController.price = price
        if let percent = Int(percentField.text!) {
            viewController.percent = percent
        }
    }
}
