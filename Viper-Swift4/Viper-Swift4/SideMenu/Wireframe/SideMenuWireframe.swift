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
    class func createModule()->UISideMenuNavigationController
    {
        let view:SideMenuViewController = SideMenuViewController.init(nibName: "SideMenuViewController", bundle: nil)
        let presenter:SideMenuPresenter = SideMenuPresenter()
        presenter.view = view
        presenter.wireframe = SideMenuWireframe()
        presenter.interactor = SideMenuInteractor()
        presenter.interactor?.presenter = presenter
        return UISideMenuNavigationController.init(rootViewController: view)
    }
}
