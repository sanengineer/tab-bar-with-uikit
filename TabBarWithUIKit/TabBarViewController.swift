//
//  TabBarViewController.swift
//  TabBarWithUIKit
//
//  Created by San Engineer on 01/10/21.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navBottomBar()
    }
    
    private var red: UINavigationController {
        let title = "Red"
        let redViewController = RedViewController()
        redViewController.title = title
        redViewController.tabBarItem = UITabBarItem(title: title, image: UIImage(systemName: "house"), tag: 1)
        return UINavigationController(rootViewController: redViewController)
    }
    
    private var blue: UINavigationController {
        let title = "Blue"
        let blueViewController = BlueViewController()
        blueViewController.title = title
        blueViewController.tabBarItem = UITabBarItem(title: title, image: UIImage(systemName: "note.text"), tag: 2)
        return UINavigationController(rootViewController: blueViewController)
    }
    
    private var orange: UINavigationController {
        let title = "Orange"
        let orangeViewController = OrangeViewController()
        orangeViewController.title = title
        orangeViewController.tabBarItem = UITabBarItem(title: title, image: UIImage(systemName: "person"), tag: 3)
        return UINavigationController(rootViewController: orangeViewController)
    }
    
    
    func navBottomBar(){
        UITabBar.appearance().tintColor = .black
        self.setViewControllers([red, blue, orange], animated: false)
    }

}
