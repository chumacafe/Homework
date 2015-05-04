//
//  ViewController.swift
//  Homework
//
//  Created by Hiromi TANIGUCHI on 2015/05/02.
//  Copyright (c) 2015年 Hiromi TANIGUCHI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button1 = makeButton(25,y:300)
        let button2 = makeButton(25,y:400)
        let button3 = makeButton(25,y:500)
        let button4 = makeButton(25,y:600)
        let button5 = makeButton(25,y:700)
        
        button1.setTitle("1", forState: .Normal)
        button2.setTitle("2", forState: .Normal)
        button3.setTitle("3", forState: .Normal)
        button4.setTitle("4", forState: .Normal)
        
        
        
    
        self.view.addSubview(button1)
        self.view.addSubview(button2)
        self.view.addSubview(button3)
        self.view.addSubview(button4)
        self.view.addSubview(button5)
        
        
    }

    
    func makeButton(x: CGFloat,y:CGFloat) -> UIButton {
        
        let button = UIButton()
        
        //表示されるテキスト
        button.setTitle("1", forState: .Normal)
        
        //テキストの色
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        
        //タップした状態のテキスト
        button.setTitle("よっ、メロン肩！", forState: .Highlighted)
        
        //タップした状態の色
        button.setTitleColor(UIColor.blackColor(), forState: .Highlighted)
        
        //サイズ
        button.frame = CGRectMake(0, 0, 100, 100)
        
        //配置場所
        button.layer.position = CGPoint(x:x, y:y)
        
        //背景色
        button.backgroundColor = UIColor(red: 0.5, green: 0, blue: 0, alpha: 0.6)
        
        //角丸
        button.layer.cornerRadius = 10
        
        //ボーダー幅
        button.layer.borderWidth = 1
        
        //ボタンをタップした時に実行するメソッドを指定
        //button.addTarget(self, action: "tapped:", forControlEvents:.TouchUpInside)
        
        //viewにボタンを追加する
        return button
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

