//
//  RegisterController.swift
//  LoveChat
//
//  Created by Raghav Munjal on 17/06/24.
//

import UIKit
import FirebaseAuth

class RegisterController: UIViewController {

    @IBOutlet var password: UITextField!
    @IBOutlet var email: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onRegisterClick(_ sender: Any) {
        if let emailText = email.text,let pwdText = password.text{
            Auth.auth().createUser(withEmail: emailText, password: pwdText) { authResult, error in
                if let e = error{
                    return print(e);
                }
                self.email.text = ""
                self.password.text = ""
                self.performSegue(withIdentifier: Constant.registerToChatSegue, sender: self)
            }
        }
    }
}
