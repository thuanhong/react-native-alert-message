//
//  AlertMessage.swift
//  AlertMessage
//
//  Created by Thuan Hong on 6/15/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

import Foundation
import UIKit

@objc(AlertMessage)

class AlertMessage: NSObject, RCTBridgeModule {
  
  static func moduleName() -> String {
    return "AlertMessage";
  }
  
  static func requiresMainQueueSetup () -> Bool {
    return true;
  }
  
  @objc
  func ShowMessage(_ message: NSString, duration: Double) -> Void {
    let alert = UIAlertController(title: nil, message: message as String, preferredStyle: .alert);
    let seconds: Double = duration;
    alert.view.backgroundColor = .black
    alert.view.alpha = 0.5
    alert.view.layer.cornerRadius = 14
    // self.present(alert, animated: true)
    DispatchQueue.main.async {
      UIApplication.shared.delegate?.window??.rootViewController?.present(alert, animated: true, completion: nil);
    }
    
    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + seconds, execute: {
      alert.dismiss(animated: true, completion: nil);
    })
  }
}
