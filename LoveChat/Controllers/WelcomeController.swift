//
//  WelcomeController.swift
//  LoveChat
//
//  Created by Raghav Munjal on 17/06/24.
//

import UIKit
import CLTypingLabel

class WelcomeController: UIViewController {

    @IBOutlet var titleLabel: CLTypingLabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "⚡️LoveChat..."
    }


}
