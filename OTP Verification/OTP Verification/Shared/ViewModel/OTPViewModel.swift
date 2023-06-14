//
//  OTPViewModel.swift
//  OTP Verification
//
//  Created by Bonginkosi Tshabalala on 2023/06/14.
//

import Foundation
import SwiftUI

class OTPViewModel: ObservableObject {
    @Published var otpText: String = ""
    @Published var otpFields: [String] = Array(repeating: "", count: 6)
}
