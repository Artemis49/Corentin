//
//  CustomTabBar.swift
//  cv-corentin
//
//  Created by Corentin Chateau on 22/10/2019.
//  Copyright © 2019 Corentin Chateau. All rights reserved.
//

import UIKit

class CustomTabBar: UITabBarController {

    var customTabBarItem = UITabBarItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.darkGray], for: .normal)
        
        let selectedImage1 = UIImage(named: "")?.withRenderingMode(.alwaysOriginal)
        let deselectedImage1 = UIImage(named: "")?.withRenderingMode(.alwaysOriginal)
        customTabBarItem = self.tabBar.items![0]
        customTabBarItem.image = deselectedImage1
        customTabBarItem.selectedImage = selectedImage1

        let selectedImage2 = UIImage(named: "")?.withRenderingMode(.alwaysOriginal)
        let deselectedImage2 = UIImage(named: "")?.withRenderingMode(.alwaysOriginal)
        customTabBarItem = self.tabBar.items![1]
        customTabBarItem.image = deselectedImage2
        customTabBarItem.selectedImage = selectedImage2
        
        let selectedImage3 = UIImage(named: "")?.withRenderingMode(.alwaysOriginal)
        let deselectedImage3 = UIImage(named: "")?.withRenderingMode(.alwaysOriginal)
        customTabBarItem = self.tabBar.items![2]
        customTabBarItem.image = deselectedImage3
        customTabBarItem.selectedImage = selectedImage3
        
        
        self.selectedIndex = 0
    }
}
