//
//  MainTBC.swift
//  DailyNews
//
//  Created by Muhammadjon Mamarasulov on 4/16/22.
//

import UIKit

class MainTBC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setTabbar()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func setTabbar(){
        let home = HomeViewController(nibName: "HomeViewController", bundle: nil)
        home.tabBarItem.image = UIImage(named: "home")
        
        let search = SearchViewController(nibName: "SearchViewController", bundle: nil)
        search.tabBarItem.image = UIImage(named: "search")
        
        let bookmark = BookmarkViewController(nibName: "BookmarkViewController", bundle: nil)
        bookmark.tabBarItem.image = UIImage(named: "bookmark")
        
        let settings = SettingsViewController(nibName: "SettingsViewController", bundle: nil)
        settings.tabBarItem.image = UIImage(named: "settings")
        
        let vc = [home,search,bookmark,settings]
        
        tabBar.tintColor = UIColor(named: "Button")
        
        
        viewControllers = vc
    }

}
