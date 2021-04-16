//
//  HomeVC.swift
//  Chaoli
//
//  Created by 潘涛 on 2021/4/16.
//

import UIKit
import XLPagerTabStrip

class HomeVC: ButtonBarPagerTabStripViewController {
    
    override func viewDidLoad() {
        settings.style.selectedBarBackgroundColor = .label //选中按钮下方的条的颜色
        settings.style.buttonBarItemBackgroundColor = .clear
        settings.style.buttonBarItemTitleColor = .label
        settings.style.selectedBarHeight = 3
        settings.style.buttonBarItemFont = .systemFont(ofSize: 16)
        settings.style.buttonBarItemLeftRightMargin = 0
        super.viewDidLoad()
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let mathVC = self.storyboard!.instantiateViewController(identifier: KMathVCID)
        let phyVC = self.storyboard!.instantiateViewController(identifier: KPhysicsVCID)
        let chemVC = self.storyboard!.instantiateViewController(identifier: KChemVCID)
        let bioVC = self.storyboard!.instantiateViewController(identifier: KBioVCID)
        let itVC = self.storyboard!.instantiateViewController(identifier: KITVCID)
        let othersVC = self.storyboard!.instantiateViewController(identifier: KOthersVCID)
        let corperVC = self.storyboard!.instantiateViewController(identifier: KCorperationVCID)
        return [mathVC, phyVC, chemVC, bioVC, itVC, corperVC, othersVC]
    }

}
