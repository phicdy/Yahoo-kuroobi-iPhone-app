//
//  MyData.swift
//  SampleDataStorage
//
//  Created by phicdy on 2017/01/05.
//  Copyright © 2017年 phicdy. All rights reserved.
//

import Foundation

class MyData :NSObject, NSCoding {
    var valueString :String?
    
    override init() {
        
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(valueString, forKey: "valueString")
    }
    
    required init?(coder aDecoder: NSCoder) {
        valueString = aDecoder.decodeObject(forKey: "valueString") as? String
    }
}
