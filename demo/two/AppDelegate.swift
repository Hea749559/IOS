//
//  AppDelegate.swift
//  two
//
//  Created by freaky on 2023/10/13.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let controller=ViewController()
        self.window=UIWindow(frame: UIScreen.main.bounds)
        self.window!.rootViewController=controller
        window!.makeKeyAndVisible()
        return true
    }
    
    
}
