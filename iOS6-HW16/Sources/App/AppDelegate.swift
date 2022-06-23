//
//  AppDelegate.swift
//  iOS6-HW16
//
//  Created by Stanislav Rassolenko on 6/23/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let viewController = StudentViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        window?.overrideUserInterfaceStyle = .light
        navigationController.navigationBar.tintColor = .blue
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }
}

