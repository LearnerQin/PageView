//
//  ViewController.swift
//  QinPageView
//
//  Created by 秦 on 2018/6/14.
//  Copyright © 2018年 qiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        automaticallyAdjustsScrollViewInsets = false
        // 1.标题
//                let titles = ["游戏", "娱乐", "趣玩", "美女", "颜值"]
        let titles = ["游戏", "娱乐娱乐娱乐", "趣玩", "美女女", "颜值颜值", "趣玩", "美女女", "颜值颜值"]
        let style = QinTitlesStyle()
        style.isScrollEnable = true
        style.isShowScrollLine = true
        
        
        // 2.所以的子控制器
        var childVcs = [UIViewController]()
        for _ in 0..<titles.count {
            let vc = UIViewController()
            vc.view.backgroundColor = UIColor.randomColor()
            childVcs.append(vc)
        }
        
        // 3.pageView的frame
        let pageFrame = CGRect(x: 0, y: 64, width: view.bounds.width, height: view.bounds.height - 64)
        
        // 4.创建HYPageView,并且添加到控制器的view中
        let pageView = QinPageView(frame: pageFrame, titles: titles, childs: childVcs, parentVc: self, style : style)
        view.addSubview(pageView)
    }
        
        
        
    }




