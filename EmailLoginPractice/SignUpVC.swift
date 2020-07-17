//
//  SignUpVC.swift
//  EmailLoginPractice
//
//  Created by 旌榮 凌 on 2020/7/17.
//  Copyright © 2020 com.matthewProject. All rights reserved.
//

import UIKit
import Firebase

class SignUpVC: UIViewController {

    @IBOutlet weak var accountField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signInClick(_ sender: Any) {
        if self.accountField.text == "" || self.passwordField.text == "" {
            print("請輸入email和密碼")
            return
        }
        
        // 建立帳號
        Auth.auth().createUser(withEmail: self.accountField.text!, password: self.passwordField.text!) { (user, error) in
            
            // 註冊失敗
            if error != nil {
                print("註冊失敗")
                return
            }
            
            // 註冊成功並顯示已登入
            print("已註冊")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
