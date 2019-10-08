//
//  ViewController.swift
//  SCANIT
//
//  Created by Kamioka Harufumi on 2019/10/02.
//  Copyright © 2019 Kamioka Harufumi. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {
    
    @IBAction func logoutBtn(_ sender: Any) {
        try! Auth.auth().signOut()
        
        // ログイン画面を表示する
        let loginViewController = self.storyboard?.instantiateViewController(withIdentifier: "Login")
        self.present(loginViewController!, animated: true, completion: nil)
        
    }
    
    @IBAction func beforeEnteringBtn(_ sender: Any) {
        performSegue(withIdentifier: "beforeEnteringSegue",sender: nil)
    }
    
    @IBAction func orderBtn(_ sender: Any) {
        performSegue(withIdentifier: "orderSegue",sender: nil)
    }
    
    @IBAction func whileEatingBtn(_ sender: Any) {
        performSegue(withIdentifier: "whileEatingSegue",sender: nil)
    }
    
    @IBAction func billBtn(_ sender: Any) {
        performSegue(withIdentifier: "billSegue",sender: nil)
    }
    
    @IBAction func bathroomBtn(_ sender: Any) {
        performSegue(withIdentifier: "bathroomSegue",sender: nil)
    }
    
    @IBAction func uneatableBtn(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if Auth.auth().currentUser == nil {
            // ログインしていないときの処理
            let loginViewController = self.storyboard?.instantiateViewController(withIdentifier: "Login")
            self.present(loginViewController!, animated: true, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

