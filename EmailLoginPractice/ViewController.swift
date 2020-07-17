//
//  ViewController.swift
//  EmailLoginPractice
//
//  Created by 旌榮 凌 on 2020/7/17.
//  Copyright © 2020 com.matthewProject. All rights reserved.
//

import UIKit
import Firebase


class ViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginClick(_ sender: Any) {
        if self.emailField.text == "" || self.passwordField.text == "" {
            print("請輸入email和密碼")
            return
        }
        
    
        Auth.auth().signIn(withEmail: self.emailField.text!, password: self.passwordField.text!) { (user, error) in

            // 登入失敗
            if error != nil {
                print(error?.localizedDescription)
                return
            }

            // 登入成功並顯示已登入
            print("登入成功")
        }
    }

}


