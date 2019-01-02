//
//  RealtimePresenter.swift
//  Viper-Swift4
//
//  Created by Cindy on 2019/1/2.
//  Copyright © 2019年 nmi. All rights reserved.
//

import UIKit

class RealtimePresenter: NSObject {
    
    var view:RealTimeViewController?
    var interactor:RealTimeInteractor?
    var wireframe:RealTimeWireframe?
    
    private var realTimeArticleList:Array<ArticleListEntity>?
    
    func loadRealTimeList() {
        interactor?.loadRealTimeList()
    }
    
    func didLoadRealTimeList(articleList:Array<ArticleListEntity>)
    {
        realTimeArticleList = articleList
        view?.didLoadArticleList()
    }
    
    func realTimeArticleCount()->Int
    {
        return realTimeArticleList?.count ?? 0
    }
    
    private func realTimeArticleAt(index:Int)->ArticleListEntity
    {
        return realTimeArticleList![index]
    }
    
    func realTimeTitleArticleAt(index:Int)->String
    {
        let entity = realTimeArticleAt(index: index)
        return String.init(format: "> %@ < ", entity.title)
    }
}
