//
//  ViewController.swift
//  MyCalc
//
//  Created by phicdy on 2017/01/01.
//  Copyright © 2017年 phicdy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tap1Button(_ sender: Any) {
        appendPrice(value: "1")
    }
    
    @IBAction func tap2Button(_ sender: Any) {
        appendPrice(value: "2")
    }
    
    @IBAction func tap3Button(_ sender: Any) {
        appendPrice(value: "3")
    }
    
    @IBAction func tap4Button(_ sender: Any) {
        appendPrice(value: "4")
    }
    
    @IBAction func tap5Button(_ sender: Any) {
        appendPrice(value: "5")
    }
    
    @IBAction func tap6Button(_ sender: Any) {
        appendPrice(value: "6")
    }
    
    @IBAction func tap7Button(_ sender: Any) {
        appendPrice(value: "7")
    }
    
    @IBAction func tap8Button(_ sender: Any) {
        appendPrice(value: "8")
    }
    
    @IBAction func tap9Button(_ sender: Any) {
        appendPrice(value: "9")
    }
    
    @IBAction func tap0Button(_ sender: Any) {
        appendPrice(value: "0")
    }
    
    @IBAction func tap00Button(_ sender: Any) {
        appendPrice(value: "00")
    }
    
    @IBAction func tapClearButton(_ sender: Any) {
        priceField.text = "0"
    }
    
    func appendPrice(value :String) {
        let value = priceField.text! + value
        if let price = Int(value) {
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func restart(segue :UIStoryboardSegue) {
        priceField.text = "0"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! PercentViewController
        if let price = Int(priceField.text!) {
            viewController.price = price
        }
    }
}

