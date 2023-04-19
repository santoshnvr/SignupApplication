//
//  SignupViewModel.swift
//  SignupApplication
//
//  Created by Santosh Kumar on 4/19/23.
//

import Foundation

public class SignupViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var confirmPW = ""
    
    func passwordsMatch() -> Bool {
        password == confirmPW
    }
    
    func isPasswordValid() -> Bool {
        let passwordTest = NSPredicate(format: "SELF MATCHES %@",
                                       "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}$")
        return passwordTest.evaluate(with: password)
    }
    
    func isEmailValid() -> Bool {
        let emailTest = NSPredicate(format: "SELF MATCHES %@",
                                            "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$")
        return emailTest.evaluate(with: email)
    }
    
    var isSignUpComplete: Bool {
        if !passwordsMatch() ||
            !isPasswordValid() ||
            !isEmailValid()  {
            return false
        }
        return true
    }
    
    var confirmPwPrompt: String {
        if passwordsMatch() {
            return ""
        } else {
            return "Password fields do not match"
        }
    }
    
    var emailPrompt: String {
        if isEmailValid() {
            return ""
        } else {
            return "Enter a valid email address"
        }
    }
    
    var passwordPrompt: String {
        if isPasswordValid() {
            return ""
        } else {
            return "Must be between 8 and 15 characters containing at least one number and one capital letter"
        }
    }
    
    func signUp()  {
        email = ""
        password = ""
        confirmPW = ""
    }
    
    
    
}
