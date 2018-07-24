//
//  ViewController.swift
//  pasingByNotification
//
//  Created by admin on 7/19/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

extension Notification.Name {
    static let passdata = Notification.Name("passdata")
}
class FirstVC: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    
    @IBAction func button1(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(doSomethingAfterNotified(notification:)),
                                               name: .passdata,
                                               object: nil)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let secondVC = segue.destination as? SecondVC {
            secondVC.newname = textField1.text
        }
    }
    
    @objc func doSomethingAfterNotified(notification: NSNotification) {
        if let textField = notification.userInfo!["data"] as? String {
            textField1.text = textField
        }
    }


}

