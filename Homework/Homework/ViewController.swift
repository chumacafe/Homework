//
//  ViewController.swift
//  Homework
//
//  Created by Hiromi TANIGUCHI on 2015/05/02.
//  Copyright (c) 2015年 Hiromi TANIGUCHI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //myLabelを変数定義
    var myLabel:UILabel?

    //numberを変数定義
    var number:Int = 0
    var number1:Int = 0
    var number2:Int = 0
    
    //operateを四則演算覚えておく
    var operate: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Label（計算結果）を作成.
        myLabel = UILabel(frame: CGRectMake(0,0,375,202))
        
        // 背景を黒色にする.
        myLabel?.backgroundColor = UIColor(red: 0.15, green: 0.15, blue: 0.15, alpha: 1)
        
        // コーナーの半径.
        myLabel?.layer.cornerRadius = 0

        // 文字
        myLabel?.text = ""

        // 文字の色を白にする.
        myLabel?.textColor = UIColor.whiteColor()
        
        // Textを右寄せにする.
        myLabel?.textAlignment = NSTextAlignment.Right
        
        // 配置する座標を設定する.
        myLabel?.layer.position = CGPoint(x: self.view.bounds.width/2,y: 101)
        
        // ViewにLabelを追加.
        self.view.addSubview(myLabel!)
        
        
        //グレーボタン19個
        let button1 = makeButton("C",x:46.8,y:248)
        let button2 = makeButton("+/-",x:140.6,y:248)
        let button3 = makeButton("%",x:234.4,y:248)
        let button4 = makeButton("7",x:46.8,y:343)
        let button5 = makeButton("8",x:140.6,y:343)
        let button6 = makeButton("9",x:234.4,y:343)
        let button7 = makeButton("4",x:46.8,y:438)
        let button8 = makeButton("5",x:140.6,y:438)
        let button9 = makeButton("6",x:234.4,y:438)
        let button10 = makeButton("1",x:46.8,y:533)
        let button11 = makeButton("2",x:140.6,y:533)
        let button12 = makeButton("3",x:234.4,y:533)
        let button13 = makeButton(".",x:234.4,y:628)
        let button14 = makeButton("÷",x:328.4,y:248)
        let button15 = makeButton("×",x:328.4,y:343)
        let button16 = makeButton("-",x:328.4,y:438)
        let button17 = makeButton("+",x:328.4,y:533)
        let button18 = makeButton("=",x:328.4,y:628)
        let button19 = makeButton("0",x:94,y:628)
    
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
        
        //背景色オレンジ
        button14.backgroundColor = UIColor(red: 213/255, green: 146/255, blue: 66/255, alpha: 1)
        button15.backgroundColor = UIColor(red: 213/255, green: 146/255, blue: 66/255, alpha: 1)
        button16.backgroundColor = UIColor(red: 213/255, green: 146/255, blue: 66/255, alpha: 1)
        button17.backgroundColor = UIColor(red: 213/255, green: 146/255, blue: 66/255, alpha: 1)
        button18.backgroundColor = UIColor(red: 213/255, green: 146/255, blue: 66/255, alpha: 1)
        
        //0ボタンのサイズ
        button19.frame = CGRectMake(0, 580, 188, 95)
        
    }
    
    func makeButton(title:String, x: CGFloat,y:CGFloat) -> UIButton {
        
        let button = UIButton()
        
        //表示されるテキスト
        button.setTitle(title, forState: .Normal)
        
        //テキストの色
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        
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
        
        //タップした状態の色
        button.setTitleColor(UIColor.redColor(), forState: .Highlighted)
        
        //ボタンをタップした時に実行するメソッドを指定
        button.addTarget(self, action: "tapped:", forControlEvents:.TouchUpInside)
        
        //viewにボタンを追加する
        return button
    
    }
    
    func tapped(button :UIButton) {

        NSLog("%@", button.titleLabel!.text!)
        
        // Cボタンが押された場合の処理
        if (button.titleLabel!.text! == "C") {
            
            // ラベルの文字を消す
            myLabel!.text = ""
            
            // +ボタンが押された場合の処理
        } else if (button.titleLabel!.text! == "+") {
            
            // ラベルの文字列を数値に変換
            number = (myLabel!.text! as NSString).integerValue
            
            // ラベルの文字を消す
            myLabel?.text? = ""
            
            // numberにラベルの文字列が保存されたか確認
            NSLog("%d", number)
            
            //＋を覚えておく
            operate = "+"
            
        } else if (button.titleLabel!.text! == "-") {
                
            // ラベルの文字列を数値に変換
            number1 = (myLabel!.text! as NSString).integerValue
                
            // ラベルの文字を消す
            myLabel?.text? = ""
                
            // numberにラベルの文字列が保存されたか確認
            NSLog("%d", number1)
            
            //-を覚えておく
            operate = "-"
            
        // =ボタンが押された場合の処理
        } else if (button.titleLabel!.text! == "=") {
            
            if (operate == "+"){
            
            // ラベルの文字列を数値に変換
            let number2 = (myLabel!.text! as NSString).integerValue
            
            // ラベルの文字を消す
            myLabel?.text? = ""
            
            // numberにラベルの文字列が保存されたか確認
            NSLog("%d", number2)
            
            let result = number + number2
            
            //ラベルに計算結果を表示
            myLabel?.text? = String(format: "%d", result)
                
            } else if (operate == "-"){
                    
                    // ラベルの文字列を数値に変換
                    let number2 = (myLabel!.text! as NSString).integerValue
                    
                    // ラベルの文字を消す
                    myLabel?.text? = ""
                    
                    // numberにラベルの文字列が保存されたか確認
                    NSLog("%d", number2)
                    
                    let result = number1 - number2
                    
                    //ラベルに計算結果を表示
                    myLabel?.text? = String(format: "%d", result)
                    
                }
        
        }else {
            
            // ボタンのタイトルをラベルの文字列に追加
            myLabel?.text? += button.titleLabel!.text!
            
        }
    
    }
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        }
    }