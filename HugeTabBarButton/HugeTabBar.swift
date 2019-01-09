//
//  HugeTabBar.swift
//  HugeTabBarButton
//
//  Created by Marek Fořt on 1/9/19.
//  Copyright © 2019 Marek Fořt. All rights reserved.
//

import UIKit

class HugeTabBarController: UITabBarController {
    // DOES NOT WORK
//    var _tabBar = HugeTabBar()
//    override var tabBar: UITabBar {
//        get { return _tabBar }
//    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // WORKS
        let tabbar = HugeTabBar()
        self.setValue(tabbar, forKeyPath: "tabBar")
    }
}

class HugeTabBar: UITabBar {
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        subviews.forEach { print(NSStringFromClass(type(of: $0))) }
        let tabBarButtons: [UIView] = subviews.filter { $0 is UIControl }
        print(tabBarButtons)
        for tabBarButton in tabBarButtons {
            guard isPointInImage(for: tabBarButton, point: point) else { continue }
            return tabBarButton
        }

        return super.hitTest(point, with: event)
    }

    private func isPointInImage(for tabBarButtonView: UIView, point: CGPoint) -> Bool {
        let imageSubviews = tabBarButtonView.subviews.filter { $0 is UIImageView }
        let pointImages = imageSubviews.filter {
            let testPoint = convert(point, to: $0)
            return $0.bounds.contains(testPoint)
        }

        return !pointImages.isEmpty
    }
}
