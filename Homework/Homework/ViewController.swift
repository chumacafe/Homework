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
        
        let button1 = makeButton(46.8,y:248)
        let button2 = makeButton(46.8,y:340)
        let button3 = makeButton(46.8,y:432)
        let button4 = makeButton(46.8,y:524)
        let button5 = makeButton(46.8,y:616)
        let button6 = makeButton(140.6,y:248)
        let button7 = makeButton(140.6,y:340)
        let button8 = makeButton(140.6,y:432)
        let button9 = makeButton(140.6,y:524)
        let button10 = makeButton(234.4,y:248)
        let button11 = makeButton(234.4,y:340)
        let button12 = makeButton(234.4,y:432)
        let button13 = makeButton(234.4,y:524)
        let button14 = makeButton(328,y:248)
        let button15 = makeButton(328,y:340)
        let button16 = makeButton(328,y:432)
        let button17 = makeButton(328,y:524)
        let button18 = makeButton(328,y:616)
        let button19 = makeButton(328,y:616)
        
        
        button1.setTitle("1", forState: .Normal)
        button2.setTitle("2", forState: .Normal)
        button3.setTitle("3", forState: .Normal)
        button4.setTitle("4", forState: .Normal)
        button5.setTitle("1", forState: .Normal)
        button6.setTitle("2", forState: .Normal)
        button7.setTitle("3", forState: .Normal)
        button8.setTitle("4", forState: .Normal)
        button9.setTitle("1", forState: .Normal)
        button10.setTitle("2", forState: .Normal)
        button11.setTitle("3", forState: .Normal)
        button12.setTitle("4", forState: .Normal)
        button13.setTitle("1", forState: .Normal)
        button14.setTitle("2", forState: .Normal)
        button15.setTitle("3", forState: .Normal)
        button16.setTitle("4", forState: .Normal)
        button17.setTitle("3", forState: .Normal)
        button18.setTitle("4", forState: .Normal)
        button19.setTitle("1", forState: .Normal)
        
    
        self.view.addSubview(button1)
        self.view.addSubview(button2)
        self.view.addSubview(button3)
        self.view.addSubview(button4)
        self.view.addSubview(button5)
        self.view.addSubview(button6)
        self.view.addSubview(button7)
        self.view.addSubview(button8)
        self.view.addSubview(button9)
        self.view.addSubview(button10)
        self.view.addSubview(button11)
        self.view.addSubview(button12)
        self.view.addSubview(button13)
        self.view.addSubview(button14)
        self.view.addSubview(button15)
        self.view.addSubview(button16)
        self.view.addSubview(button17)
        self.view.addSubview(button18)
        self.view.addSubview(button19)
        
        
    }

    
    func makeButton(x: CGFloat,y:CGFloat) -> UIButton {
        
        let button = UIButton()
        
        //テキストの色
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        
        //タップした状態のテキスト
        button.setTitle("メロン肩！", forState: .Highlighted)
        
        //タップした状態の色
        button.setTitleColor(UIColor.blackColor(), forState: .Highlighted)
        
        //サイズ
        button.frame = CGRectMake(0, 0, 92, 93.75)
        
        //配置場所
        button.layer.position = CGPoint(x:x, y:y)
        
        //背景色
        button.backgroundColor = UIColor(red: 0.6, green: 0, blue: 0, alpha: 0.6)
        
        //角丸
        button.layer.cornerRadius = 10
        
        //ボーダー幅
        button.layer.borderWidth = 5
        
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

