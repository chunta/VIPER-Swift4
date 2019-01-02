//
//  RealTimeInteractor.swift
//  Viper-Swift4
//
//  Created by Cindy on 2019/1/2.
//  Copyright © 2019年 nmi. All rights reserved.
//

import UIKit

class RealTimeInteractor: NSObject {
    var presenter:RealtimePresenter?
    
    func loadRealTimeList() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.0) {
        
            self.presenter?.didLoadRealTimeList(articleList: [ArticleListEntity.init(title: "首頁", url:""),
                                                       ArticleListEntity.init(title: "即時", url:""),
                                                       ArticleListEntity.init(title: "日報", url:"")])
            
        }
    }
}
