//
//  SecondViewController.swift
//  Notificationcenter Demo
//
//  Created by Droadmin on 14/08/23.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func instBtn(_ sender: Any) {
        NotificationCenter.default.post(name: .instagram, object: nil)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func snapBtn(_ sender: Any) {
        NotificationCenter.default.post(name: .snapchate, object: nil)
        self.navigationController?.popViewController(animated: true)
    }
}
