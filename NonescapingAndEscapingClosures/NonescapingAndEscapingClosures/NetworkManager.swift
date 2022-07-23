//
//  NetworkManager.swift
//  NonescapingAndEscapingClosures
//
//  Created by Ahmet Bostancıklıoğlu on 23.07.2022.
//

import UIKit

class NetworkManager {
    
    static let shared = NetworkManager()
    
    func start(number: Int, completion: @escaping (Int) -> Void) {
        var totalNumber = 0
        
        DispatchQueue.main.async {
            for _ in 0...99999999 {
                totalNumber += number
            }
            
            completion(totalNumber)
        }
    }
}

