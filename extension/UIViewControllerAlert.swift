//
//  UIViewControllerAlert.swift
//  extension
//
//  Created by Feras Allaou on 3/5/19.
//  Copyright © 2019 Feras Allaou. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func createBtn(_ title: String, _ alertStyle: UIAlertAction.Style) -> UIAlertAction {
        let actionBtn = UIAlertAction(title: title, style: alertStyle, handler: nil)
        return actionBtn
    }
    
    func showAlert(_ title:String,_ message: String, _ buttons:[UIAlertAction])
        {
    
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        if buttons.count > 0 {
            for singleBtn in buttons {
                alert.addAction(singleBtn)
            }
        }
        
        present(alert, animated: true, completion: nil)
    }
    
    
}
