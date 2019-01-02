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
    
    private var sidemenulist:Array<SideMenuEntity>?
    
    func loadSideMenuList() {
        interactor?.loadSideMenuList()
    }
    
    func didLoadSideMenuList(list:Array<SideMenuEntity>) {
        sidemenulist = list
        view?.didLoadedSideMenu()
    }
    
    func sideMenuCount()->Int
    {
        return sidemenulist?.count ?? 0
    }
    
    func sideMenuTextAt(index:Int)->String
    {
        if (index < sideMenuCount()){
            guard let sidemenuitem = sidemenulist?[index] else{
                return "untitled"
            }
            return String.init(format: "* %@ *", sidemenuitem.name)
        }
        return "index out of bound"
    }
    
    func didSelectSideMenuItemAt(index:Int)
    {
        guard let slist = sidemenulist else{
            return
        }
        if (index < slist.count)
        {
            wireframe?.didSelectSideMenuItem(sidemenu: slist[index])
        }
        
    }
}
