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
    
    func navBottomBar(){
        let red = RedViewController()
        let blue = BlueViewController()
        let orange = OrangeViewController()
        
        red.title = "Red"
        blue.title = "Blue"
        orange.title = "Orange"
        
        self.setViewControllers([red, blue, orange], animated: true)
        
        guard let items = self.tabBar.items else {
            return
        }
        
        let iconBar = ["house", "note.text", "cart"]
        
        for icon in 0...(iconBar.count - 1){
            items[icon].image = UIImage(systemName: iconBar[icon])
        }
    
    }
}
