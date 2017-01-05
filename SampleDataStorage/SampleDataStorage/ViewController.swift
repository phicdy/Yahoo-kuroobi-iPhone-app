//
//  ViewController.swift
//  SampleDataStorage
//
//  Created by phicdy on 2017/01/05.
//  Copyright © 2017年 phicdy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let userDefaults = UserDefaults.standard
        let data = MyData()
        data.valueString = "test"
        let archiveData = NSKeyedArchiver.archivedData(withRootObject: data)
        userDefaults.set(archiveData, forKey: "data")
        userDefaults.synchronize()
        
        if let storedData = userDefaults.object(forKey: "data") as? NSData {
            if let unarchivedData = NSKeyedUnarchiver.unarchiveObject(with: storedData as Data) as? MyData {
                if let valueString = unarchivedData.valueString {
                    print("desyriaize: " + valueString)
                }
            }
        }
        
        if let value = userDefaults.string(forKey: "text") {
            textField.text = value
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapActionButton(_ sender: Any) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(textField.text, forKey: "text")
        userDefaults.synchronize()
    }

}

