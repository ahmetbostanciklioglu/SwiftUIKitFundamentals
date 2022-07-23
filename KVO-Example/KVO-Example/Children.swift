//
//  Children.swift
//  KVO-Example
//
//  Created by Ahmet Bostancıklıoğlu on 23.07.2022.
//

import Foundation
import CoreMedia


//MARK: - KVO (KEY - VALUE - OBSERVATION) && KVC(KEY - VALUE - CODE)

//KVC
///To use KVC our classes need to confirm to NSKeyValueCoding protocol. So by confirming to NSObject, we can achieve this step. UIViewController is already confirms to this NSObject, so We can call the methods from this protocol without any setup.


class Children: NSObject {
    
    @objc dynamic var name: String!
    @objc dynamic var age : Int
    
    override init() {
        self.name = ""
        self.age = 0
        
        super.init()
    }
}
