//
//  TabbarController.swift
//  task7_collectionview1.1
//
//  Created by Kenan Memmedov on 26.08.24.
//

import UIKit

class TabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.backgroundColor = UIColor(red: 255/255, green: 114/255, blue: 94/255, alpha: 1.0)
        tabBar.tintColor = .white
        tabBar.unselectedItemTintColor = .white
        tabBar.layer.cornerRadius = 16
        
    }
    


}
