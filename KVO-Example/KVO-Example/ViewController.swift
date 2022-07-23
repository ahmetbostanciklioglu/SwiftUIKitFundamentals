//
//  ViewController.swift
//  KVO-Example
//
//  Created by Ahmet Bostancıklıoğlu on 23.07.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    
 ///   let player = AVPlayer()
    
   /// var timeControlStatusObserver: NSKeyValueObservation?
    
    //
    var child1: Children!
    var child2: Children!
    var child3: Children!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  //      player.currentItem?.addObserver(self, forKeyPath: #keyPath(AVPlayerItem.status), options: [.old, .new], context: nil)
        
        
    ///    timeControlStatusObserver = player.observe(\.timeControlStatus, options: [.old, .new])  { player, change in
         ///   if let newValue = change.newValue, let oldValue = change.oldValue, newValue != oldValue {
            ///    print("Time control status has changed")
         ///   }
     ///   }
        
        //MARK: - KVO
        self.child1 = Children()
        
        self.child1.name = "Wayne Rooney"
        self.child1.age = 28
        print(child1.name!)
        print(child1.age)
        
       //MARK: - KVC:
        self.child1.setValue("Alex De Souza", forKey: "name")
        self.child1.setValue(28, forKey: "age1")
        
        let myNaMe = self.child1.value(forKey: "name") as! String
        let myAge = self.child1.value(forKey: "age1") as! Int
        
        print(myNaMe)
        print(myAge)
        
    }

  ///  deinit {
        /// Nothing needs to be done. Make sure this view controller can released (no retain cycle) and the observation will be removed when it is deinited.
///    }
//    override class func observeValue(forKeyPath keyPath: String?,  of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
//
//        if keyPath == #keyPath(AVPlayerItem.status) {
//
//            let status: AVPlayerItem.Status
//
//            if let statusNumber = change?[.newKey] as? NSNumber {
//
//                status = AVPlayerItem.Status(rawValue: statusNumber.intValue)!
//
//            } else {
//                status = .unknown
//            }
//
//            // Switch over status value
//            switch status {
//
//            case .readyToPlay:
//                // Player item is ready to play.
//                break
//
//            case .failed:
//                // Player item failed. See error.
//                break
//
//            case .unknown:
//                // Player item is not yet ready.
//                break
//
//            @unknown default:
//                break
//            }
//        }
//    }
//
//    deinit {
//        player.currentItem?.removeObserver(self, forKeyPath: #keyPath(AVPlayerItem.status))
//    }

}








///Key : simply “Key” specifies a single property, the one we want to set a value or get one from. So its name should be the same as the property’s name.
///Ex: self.setValue: “Stark” for key: “lastName”


///KeyPath : A KeyPath is formed with the dot-syntax by following the substrings, so it is not a single word/string. Key-path represents all the properties of an object, which comes in the way until to reach the desired value/property
///var myProfile: Profile ;  self.setValue: “Baratheon” for key: “myProfile.customProfile.lastName”
