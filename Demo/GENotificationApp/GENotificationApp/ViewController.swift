//
//  ViewController.swift
//  GENotificationApp
//
//  Created by GoEun Jeong on 2021/11/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        GENotification.shared.requestForNotification()
    }

    @IBAction func buttonTapped(_ sender: Any) {
        GENotification.shared.sendNotification(alertTitle: "μλ", alertBody: "μΈλ·", afterSecond: 5)
    }
    
}

