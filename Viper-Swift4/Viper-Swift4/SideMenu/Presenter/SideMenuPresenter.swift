//
//  SideMenuPresenter.swift
//  Viper-Swift4
//
//  Created by nmi on 2019/1/2.
//  Copyright © 2019 nmi. All rights reserved.
//

import UIKit

class SideMenuPresenter: NSObject {
    var view:SideMenuViewController?
    var wireframe:SideMenuWireframe?
    var interactor:SideMenuInteractor?
    
    func loadSideMenuList() {
        interactor?.loadSideMenuList()
    }
    
    func didLoadSideMenuList(list:Array<Any>) {
        
    }
}
