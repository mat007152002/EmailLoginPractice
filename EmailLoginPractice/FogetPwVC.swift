//
//  FogetPwVC.swift
//  EmailLoginPractice
//
//  Created by 旌榮 凌 on 2020/7/17.
//  Copyright © 2020 com.matthewProject. All rights reserved.
//

import UIKit
import Firebase

class FogetPwVC: UIViewController {

    @IBOutlet weak var forgetPWEmailField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func resetPWClick(_ sender: Any) {
        if self.forgetPWEmailField.text == "" {
            print("請輸入email")
            return
        }
        
        Auth.auth().sendPasswordReset(withEmail: self.forgetPWEmailField.text!, completion: { (error) in
            // 重設失敗
            if error != nil {
                print(error?.localizedDescription)
                return
            }
            
            print("重設成功，請檢查信箱信件")
        })
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
