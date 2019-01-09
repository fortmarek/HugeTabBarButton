//
//  HugeTabBarController.swift
//  HugeTabBarButton
//
//  Created by Marek Fořt on 1/9/19.
//  Copyright © 2019 Marek Fořt. All rights reserved.
//

import UIKit

open class HugeTabBarController: UITabBarController {
    // DOES NOT WORK
    //    var _tabBar = HugeTabBar()
    //    override var tabBar: UITabBar {
    //        get { return _tabBar }
    //    }

    override open func viewDidLoad() {
        super.viewDidLoad()

        // WORKS
        let tabbar = HugeTabBar()
        self.setValue(tabbar, forKeyPath: "tabBar")
    }
}
