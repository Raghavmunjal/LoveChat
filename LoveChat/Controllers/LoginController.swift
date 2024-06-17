//
//  LoginController.swift
//  LoveChat
//
//  Created by Raghav Munjal on 17/06/24.
//

import UIKit
import FirebaseAuth

class LoginController: UIViewController {

    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onLoginClick(_ sender: Any) {
        
        if let emailText = email.text,let pwd = password.text{
            Auth.auth().signIn(withEmail: emailText, password: pwd) { authResult, error in
              
                if let e = error{
                    return print(e)
                }else{
                    self.performSegue(withIdentifier: Constant.loginToChatSegue, sender: self)
                }
                
            }
        }
        
    }
}
