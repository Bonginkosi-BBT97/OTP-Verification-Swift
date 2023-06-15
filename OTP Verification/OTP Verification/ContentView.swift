//
//  ContentView.swift
//  OTP Verification
//
//  Created by Bonginkosi Tshabalala on 2023/06/14.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("log_status") var log_status = false
    
    var body: some View {
        
        NavigationView {
            if log_status {
                
                Text("Home")
                    .navigationTitle("Home")
            } else {
                LoginScreen()
            }
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
