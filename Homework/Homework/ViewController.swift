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
        
        // Label（計算結果）を作成.
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,375,202))
        
        // 背景を黒色にする.
        myLabel.backgroundColor = UIColor(red: 0.15, green: 0.15, blue: 0.15, alpha: 1)
    
        
        // コーナーの半径.
        myLabel.layer.cornerRadius = 0
        
        // Labelに文字を代入.
        myLabel.text = "1,230"
        
        // 文字の色を白にする.
        myLabel.textColor = UIColor.whiteColor()
        

        // Textを右寄せにする.
        myLabel.textAlignment = NSTextAlignment.Right
        
        // 配置する座標を設定する.
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 101)
        
        // ViewにLabelを追加.
        self.view.addSubview(myLabel)
        
        
        //０ボタン追加
        let button = UIButton()
        
        //表示されるテキスト
        button.setTitle("0", forState: .Normal)
        
        //テキストの色
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        
        //タップした状態のテキスト
        button.setTitle("0", forState: .Highlighted)
        
        //タップした状態の色
        button.setTitleColor(UIColor.redColor(), forState: .Highlighted)
        
        //サイズ
        button.frame = CGRectMake(0, 0, 188, 95)
        
        //配置場所
        button.layer.position = CGPoint(x: 94, y:628)
        
        // Textを左寄せにする.
        myLabel.textAlignment = NSTextAlignment.Left
        
        //背景色
        button.backgroundColor = UIColor(red: 0.77, green: 0.77, blue: 0.77, alpha: 0.6)
        
        //角丸
        button.layer.cornerRadius = 0
        
        //ボーダー幅
        button.layer.borderWidth = 1
        
        //ボタンをタップした時に実行するメソッドを指定
        //button.addTarget(self, action: "tapped:", forControlEvents:.TouchUpInside)
        
        //viewにボタンを追加する
        self.view.addSubview(button)
        
        
        //グレーボタン13個
        let button1 = makeButton(46.8,y:248)
        let button2 = makeButton(140.6,y:248)
        let button3 = makeButton(234.4,y:248)
        let button4 = makeButton(46.8,y:343)
        let button5 = makeButton(140.6,y:343)
        let button6 = makeButton(234.4,y:343)
        let button7 = makeButton(46.8,y:438)
        let button8 = makeButton(140.6,y:438)
        let button9 = makeButton(234.4,y:438)
        let button10 = makeButton(46.8,y:533)
        let button11 = makeButton(140.6,y:533)
        let button12 = makeButton(234.4,y:533)
        let button13 = makeButton(234.4,y:628)
        
        button1.setTitle("C", forState: .Normal)
        button2.setTitle("+/-", forState: .Normal)
        button3.setTitle("%", forState: .Normal)
        button4.setTitle("7", forState: .Normal)
        button5.setTitle("8", forState: .Normal)
        button6.setTitle("9", forState: .Normal)
        button7.setTitle("4", forState: .Normal)
        button8.setTitle("5", forState: .Normal)
        button9.setTitle("6", forState: .Normal)
        button10.setTitle("1", forState: .Normal)
        button11.setTitle("2", forState: .Normal)
        button12.setTitle("3", forState: .Normal)
        button13.setTitle(".", forState: .Normal)
        
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
        button.frame = CGRectMake(0, 0, 94, 95)
        
        //配置場所
        button.layer.position = CGPoint(x:x, y:y)
        
        //背景色
        button.backgroundColor = UIColor(red: 0.77, green: 0.77, blue: 0.77, alpha: 0.6)
        
        //角丸
        button.layer.cornerRadius = 0
        
        //ボーダー幅
        button.layer.borderWidth = 1
        
        //ボタンをタップした時に実行するメソッドを指定
        //button.addTarget(self, action: "tapped:", forControlEvents:.TouchUpInside)
        
        //viewにボタンを追加する
        return button
        
        //オレンジボタン5個
        let button1 = makeButton(46.8,y:248)
        let button2 = makeButton(140.6,y:248)
        let button3 = makeButton(234.4,y:248)
        let button4 = makeButton(46.8,y:343)
        let button5 = makeButton(140.6,y:343)
        
        button1.setTitle("➗", forState: .Normal)
        button2.setTitle("✖️", forState: .Normal)
        button3.setTitle("ー", forState: .Normal)
        button4.setTitle("＋", forState: .Normal)
        button5.setTitle("＝", forState: .Normal)
       
        
        self.view.addSubview(button1)
        self.view.addSubview(button2)
        self.view.addSubview(button3)
        self.view.addSubview(button4)
        self.view.addSubview(button5)
        
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
        button.frame = CGRectMake(0, 0, 94, 95)
        
        //配置場所
        button.layer.position = CGPoint(x:x, y:y)
        
        //背景色
        button.backgroundColor = UIColor(red: 0.84, green: 0.57, blue: 0.26, alpha: 0.6)
        
        //角丸
        button.layer.cornerRadius = 0
        
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

