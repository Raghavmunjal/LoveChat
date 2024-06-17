//
//  ChatController.swift
//  LoveChat
//
//  Created by Raghav Munjal on 17/06/24.
//

import UIKit
import FirebaseAuth

class ChatController: UIViewController {
    let firebaseAuth = Auth.auth()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = Constant.appTitle
        navigationItem.hidesBackButton = true
    }

    @IBAction func onLogoutClicked(_ sender: Any) {
        do {
          try firebaseAuth.signOut()
            navigationController?.popViewController(animated: true)
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
    }
}
