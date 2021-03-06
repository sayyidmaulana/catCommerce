//
//  TabbarController.swift
//  eCommerceDummy
//
//  Created by Sayyid Maulana Khakul Yakin on 22/05/21.
//

import UIKit

class TabbarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabbar()
    }

    func tabbar() {
        let bottomBar: [[String: String]] = [
            ["title": "Transaksi", "icon": "onlineShopResized"],
            ["title": "Login", "icon": "shoppingBagResized"]
        ]

        let firstBar = UINavigationController(rootViewController: OneViewController())
        firstBar.tabBarItem.title = "Home"
        firstBar.tabBarItem.image = UIImage(named: "shoppingResized")

        var countViewController = [firstBar]
        
        for item in bottomBar {
            let others = UINavigationController(rootViewController: TwoViewController(collectionViewLayout: UICollectionViewFlowLayout()))
            others.tabBarItem.title = item["title"]
            others.tabBarItem.image = UIImage(named: item["icon"]!)
            
            countViewController.append(others)
        }

        viewControllers = countViewController
        tabBar.isTranslucent = false
        navigationController?.navigationBar.isTranslucent = false
    }
    
}

#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct HomeTCPreview: PreviewProvider {

    static var previews: some View {
        // view controller using programmatic UI
        TabbarController().toPreview()
    }
}
#endif
