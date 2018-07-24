//
//  SecondVC.swift
//  pasingByNotification
//
//  Created by admin on 7/19/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit
//extension Notification.Name {
//    static let didReceiveData = Notification.Name("didReceiveData")
//    static let didCompleteTask = Notification.Name("didCompleteTask")
//    static let completedLengthyDownload = Notification.Name("completedLengthyDownload")
//}

class SecondVC: UIViewController {
    @IBOutlet weak var textField: UITextField!
    var newname: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if newname != nil {
            textField.text = newname
        }
     }


    @IBAction func button(_ sender: UIButton) {
        NotificationCenter.default.post(name: .passdata, object: nil, userInfo: ["data" : textField.text!])
        navigationController?.popViewController(animated: true)

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
