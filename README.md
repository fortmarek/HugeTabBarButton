# HugeTabBarButton

[![CI Status](http://img.shields.io/travis/fortmarek/HugeTabBarButton.svg?style=flat)](https://travis-ci.org/fortmarek/HugeTabBarButton)
[![Version](https://img.shields.io/cocoapods/v/HugeTabBarButton.svg?style=flat)](http://cocoapods.org/pods/HugeTabBarButton)
[![License](https://img.shields.io/cocoapods/l/HugeTabBarButton.svg?style=flat)](http://cocoapods.org/pods/HugeTabBarButton)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

HugeTabBarButton lets you create huge images for your UITabBarItems.

## Installation
### CocoaPods

SwipeViewController is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'HugeTabBarButton'
```

### Carthage

If you use Carthage, add this to your Cartfile:

```ruby
github "fortmarek/HugeTabBarButton"
```

## How it Works

It's quite simple, really! To create a huge image, just create a `UIViewController` like this:
```swift
let hugeTabBarItem = UITabBarItem()
hugeTabBarItem.image = UIImage(named: "HugeImage")
hugeTabBarItem.imageInsets = UIEdgeInsets(top: -20, left: 0, bottom: 20, right: 0)
hugeTabBarItem.title = "Huge"
tabBarViewController.tabBarItem = hugeTabBarItem
```

Basically what you need to do is change the `imageInsets` and `HugeTabBarButton` will then register the tap wherever your image is. Easy! 😎

<img src="https://github.com/fortmarek/HugeTabBarButton/raw/master/hugetabbar_screen.png" width="200">