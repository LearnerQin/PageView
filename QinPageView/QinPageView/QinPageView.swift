//
//  QinPageView.swift
//  QinPageView
//
//  Created by 秦 on 2018/6/14.
//  Copyright © 2018年 qiang. All rights reserved.
//

import UIKit

class QinPageView: UIView {

    fileprivate var titles : [String]
    fileprivate var childVcs : [UIViewController]
    fileprivate var parentVc : UIViewController
    fileprivate var style : QinTitlesStyle
    fileprivate var titleView : QinTitleView!
    
    init(frame: CGRect, titles : [String], childs : [UIViewController], parentVc : UIViewController, style : QinTitlesStyle) {
        self.titles = titles
        self.childVcs = childs
        self.parentVc = parentVc
        self.style = style
        super.init(frame: frame)
        setupUI()
    }

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: 设置UI
extension QinPageView {
    
    fileprivate func setupUI(){
        setupTitleView()
        setupContentView()
    }
    private func setupTitleView(){
        let titleFrame = CGRect(x: 0, y: 0, width: bounds.width, height: style.titleHeight)
        titleView = QinTitleView(frame: titleFrame, titles: titles, style : style)
        addSubview(titleView)
        titleView.backgroundColor = UIColor.randomColor()
    }
    
    private func setupContentView(){
        let contentFrame = CGRect(x: 0, y: style.titleHeight, width: bounds.width, height: bounds.height - style.titleHeight)
        let contentView = QinContentView(frame: contentFrame, childVcs: childVcs, parentVc: parentVc)
        addSubview(contentView)
        contentView.backgroundColor = UIColor.randomColor()
        
        // 2.contentView&titleView代理设置
        titleView.delegate = contentView
        contentView.delegate = titleView
        
        
    }
    
}



