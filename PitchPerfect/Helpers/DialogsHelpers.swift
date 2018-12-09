//
//  DialogsHelpers.swift
//  PitchPerfect
//
//  Created by Mustafa Muhammad on 12/9/18.
//  Copyright © 2018 Ara Tech. All rights reserved.
//

import UIKit

public class DialogsHelpers{
    
    func presentSimpleDialog(controller:UIViewController,title:String,message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: Alerts.DismissAlert, style: .default, handler: nil))
        controller.present(alert, animated: true, completion: nil)
    }
}
