//
//  AppDelegate.swift
//  HugeTabBarButton
//
//  Created by Marek Fořt on 1/9/19.
//  Copyright © 2019 Marek Fořt. All rights reserved.
//

import UIKit
import HugeTabBarButton

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let tabBarController = HugeTabBarController()

        let viewControllerOne = UIViewController()
        viewControllerOne.view.backgroundColor = .white
        viewControllerOne.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        let viewControllerTwo = UIViewController()
        viewControllerTwo.view.backgroundColor = .white
        let hugeTabBarItem = UITabBarItem()
        hugeTabBarItem.image = UIImage(named: "SwanLarge")
        hugeTabBarItem.imageInsets = UIEdgeInsets(top: -20, left: 0, bottom: 20, right: 0)
        hugeTabBarItem.title = "Huge"
        viewControllerTwo.tabBarItem = hugeTabBarItem
        let viewControllerThree = UIViewController()
        viewControllerThree.view.backgroundColor = .white
        viewControllerThree.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 3)
        tabBarController.viewControllers = [viewControllerOne, viewControllerTwo, viewControllerThree]
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        return true
    }
}

