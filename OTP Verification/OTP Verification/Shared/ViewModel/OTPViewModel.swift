//
//  OTPViewModel.swift
//  OTP Verification
//
//  Created by Bonginkosi Tshabalala on 2023/06/14.
//

import Firebase
import SwiftUI

class OTPViewModel: ObservableObject {
    @Published var otpText: String = ""
    @Published var otpFields: [String] = Array(repeating: "", count: 6)
    
   //MARK: Login Data
    @Published var number: String = ""
    @Published var code: String = ""
    
    //MARK: Error
    @Published var showAlert: Bool = false
    @Published var errorMsg: String = ""
    
    //MARK: OTP Credentials
    @Published var verificationCode: String = ""
    @Published var isLoading: Bool = false
    
    @Published var navigationTag: String?
    
    //MARK: Sending OTP
    func sendOTP() async {
        if isLoading {return}
        do{
            isLoading = true
            let result = try await PhoneAuthProvider.provider().verifyPhoneNumber("+\(code)\(number)", uiDelegate: nil)
            DispatchQueue.main.async {
                
                self.isLoading = false
                self.verificationCode = result
                self.navigationTag = "VERIFICATION"
            }
        } catch {
            handleError(error: error.localizedDescription)
        }
    }
    
    func handleError(error: String) {
        DispatchQueue.main.sync {
            self.isLoading = false
            self.errorMsg = error
            self.showAlert.toggle()
        }
    }
}
