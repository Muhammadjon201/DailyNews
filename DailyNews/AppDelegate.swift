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
        
        navigationBarSettings()
        
        window = UIWindow()
        let vc = SignInViewController(nibName: "SignInViewController", bundle: nil)
        let nc = UINavigationController(rootViewController: vc)
        window?.rootViewController = nc
        window?.makeKeyAndVisible()
        return true
    }
    
    // This is Navigation Bar settings..

    func navigationBarSettings(){
        UINavigationBar.appearance().tintColor = UIColor(named: "Button")
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().shadowImage = UIImage()
    }

}

