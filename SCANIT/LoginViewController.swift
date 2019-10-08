//
//  LoginViewController.swift
//  SCANIT
//
//  Created by Kamioka Harufumi on 2019/10/02.
//  Copyright © 2019 Kamioka Harufumi. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    @IBAction func handleLoginBtn(_ sender: Any) {
        if let address = email.text, let password = password.text {
            if address.isEmpty || password.isEmpty {
                return
            }
            Auth.auth().signIn(withEmail: address, password: password) { user, error in
                if let error = error {
                    print("DEBUG_PRINT: " + error.localizedDescription)
                    return
                } else {
                    print("DEBUG_PRINT: ログインに成功しました。")
                    
                    // 画面を閉じてViewControllerに戻る
                    self.dismiss(animated: true, completion: nil)
                }
            }
        }
    }
    
    @IBAction func handleCreateAccountBtn(_ sender: Any) {
        if let address = email.text, let password = password.text {
            if address.isEmpty || password.isEmpty {
                print("DEBUG_PRINT: 何かが空文字です。")
                return
            }
            
            Auth.auth().createUser(withEmail: address, password: password) { user, error in
                if let error = error {
                    print("DEBUG_PRINT: " + error.localizedDescription)
                    return
                }
                print("DEBUG_PRINT: ユーザー作成に成功しました。")
    
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
