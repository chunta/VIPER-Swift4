//
//  SideMenuWireframe.swift
//  Viper-Swift4
//
//  Created by nmi on 2019/1/2.
//  Copyright © 2019 nmi. All rights reserved.
//

import UIKit
import SideMenu
class SideMenuWireframe: NSObject {
    static fileprivate var navigation:UINavigationController!
    class func createModule(rootnavi:UINavigationController)->UISideMenuNavigationController
    {
        navigation = rootnavi
    
        let view:SideMenuViewController = SideMenuViewController.init(nibName: "SideMenuViewController", bundle: nil)
        let presenter:SideMenuPresenter = SideMenuPresenter()
        view.presenter = presenter
        presenter.view = view
        presenter.wireframe = SideMenuWireframe()
        presenter.interactor = SideMenuInteractor()
        presenter.interactor?.presenter = presenter
        return UISideMenuNavigationController.init(rootViewController: view)
    }
    
    func didSelectSideMenuItem(sidemenu:SideMenuEntity)
    {
        SideMenuManager.default.menuLeftNavigationController?.dismiss(animated: true, completion: nil)
        let name:String = sidemenu.name
        switch name {
        case "首頁":
            if (SideMenuWireframe.navigation?.topViewController?.isKind(of: LandingViewController.self)==false)
            {
                SideMenuWireframe.navigation?.setViewControllers([LandingWireframe.createModule(rootnavi: SideMenuWireframe.navigation)],
                                                             animated: true)
            }
            break
        case "即時":
            SideMenuWireframe.navigation?.setViewControllers([RealTimeWireframe.createModule(rootnavi: SideMenuWireframe.navigation)],
                                                             animated: true)
            break
        case "日報":
            SideMenuWireframe.navigation?.setViewControllers([LandingWireframe.createModule(rootnavi: SideMenuWireframe.navigation)],
                                                             animated: true)
            break
        default:
            break
        }
        
        
        
    }
}
