//
//  OTP_VerificationApp.swift
//  OTP Verification
//
//  Created by Bonginkosi Tshabalala on 2023/06/14.
//

import SwiftUI
import Firebase

@main
struct OTP_VerificationApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

// MARK: Setting Up Firebase
class AppDelegate: NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey:Any]? = nil) -> Bool {
        FirebaseApp.configure ()
        return true
    }
    //Since OTP Requires Remote Notification
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any]) async -> UIBackgroundFetchResult {
        return .noData
    }
}
