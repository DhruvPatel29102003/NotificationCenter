//
//  ViewController.swift
//  Notificationcenter Demo
//
//  Created by Droadmin on 14/08/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var soialMeadiaLbl: UILabel!
    @IBOutlet weak var socialMeadiaImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(instagram(notification:)), name: .instagram, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(snapChate(notification:)), name: .snapchate, object: nil)
        // Do any additional setup after loading the view.
    }
    @objc func instagram(notification:Notification){
        soialMeadiaLbl.text = "Instagram"
        //socialMeadiaImg.image = UIImage(named: "instagram")
        socialMeadiaImg.image = #imageLiteral(resourceName: "instagram")
    }
    @objc func snapChate(notification:Notification){
        soialMeadiaLbl.text = "snapchat"
        socialMeadiaImg.image = #imageLiteral(resourceName: "snapchat")
    }

    @IBAction func chooseAccountBtn(_ sender: Any) {
        let secondVc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(secondVc, animated: true)
    }
}
extension Notification.Name{
    static let instagram = Notification.Name("Instagram")
    static let snapchate = Notification.Name("Snapchate")

}
