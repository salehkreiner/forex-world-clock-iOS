//
//  AppDelegate.swift
//  Forex World Clock
//
//  Created by Salty Dog on 8/27/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions:
                     [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .init(red: 0.16078, green: 0.16863, blue: 0.18824, alpha: 1.0)
        window?.rootViewController = WorldMapViewController()
        
        return true
    }
}

