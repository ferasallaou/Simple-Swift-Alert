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
    
    func createBtn( title: String, alertStyle: UIAlertAction.Style, completionHandler: (() -> Void)?) -> UIAlertAction {
        var actionBtn: UIAlertAction!
        
        if let _ = completionHandler {
            actionBtn = UIAlertAction(title: title, style: alertStyle, handler: {_ in completionHandler!()})
        }else{
            actionBtn = UIAlertAction(title: title, style: alertStyle, handler: nil)
        }
        
        
        return actionBtn
    }
    
    func showAlert( title:String, message: String, buttons:[UIAlertAction], style: UIAlertController.Style)
        {
    
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        
        if buttons.count > 0 {
            for singleBtn in buttons {
                alert.addAction(singleBtn)
            }
        }
        
        present(alert, animated: true, completion: nil)
    }
    
    
}
