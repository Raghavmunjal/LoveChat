//
//  Constant.swift
//  LoveChat
//
//  Created by Raghav Munjal on 17/06/24.
//

struct Constant {
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerToChatSegue = "RegisterToChat"
    static let loginToChatSegue = "LoginToChat"
    static let welcomeToRegisterSegue = "WelcomeToRegister"
    static let welcomeToLoginSegue = "WelcomeToLogin"
    
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lighBlue = "BrandLightBlue"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
