//
//  SideMenuInteractor.swift
//  Viper-Swift4
//
//  Created by nmi on 2019/1/2.
//  Copyright © 2019 nmi. All rights reserved.
//

import UIKit

class SideMenuInteractor: NSObject {
    weak var presenter:SideMenuPresenter?
    
    func loadSideMenuList() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.0) {
            self.presenter?.didLoadSideMenuList(list: [SideMenuEntity.init(name: "首頁"),
                                                       SideMenuEntity.init(name: "即時"),
                                                       SideMenuEntity.init(name: "日報")])
        }
    }
}
