//
//  TabBarC.swift
//  Chaoli
//
//  Created by 潘涛 on 2021/4/16.
//

import UIKit
import YPImagePicker


class TabBarC: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        delegate = self
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController is PostVC{
            //待做：判断用户是否登陆
            let sb = UIStoryboard(name: "Main", bundle:nil)
            let vc = sb.instantiateViewController(withIdentifier: "NoteVCID") as! NoteVC
            
            self.present(vc, animated: true, completion: nil)
            
            return false
        }
        
        
        return true
    }

}
