//
//  HugeTabBarController.swift
//  HugeTabBarButton
//
//  Created by Marek Fořt on 1/9/19.
//  Copyright © 2019 Marek Fořt. All rights reserved.
//

import UIKit

open class HugeTabBarController: UITabBarController {
    override open func viewDidLoad() {
        super.viewDidLoad()

        let tabbar = HugeTabBar()
        self.setValue(tabbar, forKeyPath: "tabBar")
    }
}
