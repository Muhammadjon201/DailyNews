//
//  AppDelegate.swift
//  DailyNews
//
//  Created by Muhammadjon Mamarasulov on 4/16/22.
//

import UIKit
import IQKeyboardManagerSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        IQKeyboardManager.shared.enable = true
        
        window = UIWindow()
        let vc = SignInViewController(nibName: "SignInViewController", bundle: nil)
        let nc = UINavigationController(rootViewController: vc)
        window?.rootViewController = nc
        window?.makeKeyAndVisible()
        return true
    }

}

