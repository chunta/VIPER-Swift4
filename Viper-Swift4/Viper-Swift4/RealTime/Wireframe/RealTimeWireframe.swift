//
//  RealTimeWireframe.swift
//  Viper-Swift4
//
//  Created by Cindy on 2019/1/2.
//  Copyright © 2019年 nmi. All rights reserved.
//

import UIKit

class RealTimeWireframe: NSObject {
    static fileprivate var navigation:UINavigationController!
    class func createModule(rootnavi:UINavigationController)->UIViewController
    {
        navigation = rootnavi
        
        let view:RealTimeViewController = RealTimeViewController.init()
        let presenter:RealtimePresenter = RealtimePresenter()
        view.presenter = presenter
        presenter.view = view
        presenter.wireframe = RealTimeWireframe()
        presenter.interactor = RealTimeInteractor()
        presenter.interactor?.presenter = presenter
        return view
    }
}
