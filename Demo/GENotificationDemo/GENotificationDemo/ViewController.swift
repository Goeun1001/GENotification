//
//  ViewController.swift
//  GENotificationDemo
//
//  Created by GoEun Jeong on 2021/11/15.
//

import UIKit
import GENotification

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        GENotification.shared.requestForNotification()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: Any) {
        GENotification.shared.sendNotification(alertTitle: "제목", alertBody: "설명", afterSecond: 2)
    }
    
}

