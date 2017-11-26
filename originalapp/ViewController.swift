//
//  ViewController.swift
//  originalapp
//
//  Created by Moeka on 2017/11/12.
//  Copyright © 2017年 Moeka. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{
    
    @IBOutlet var gakkouButton : UIButton!
    @IBOutlet var gakunennButton : UIButton!
    @IBOutlet var gakkiButton : UIButton!
    
    @IBOutlet var gakkoulabel : UILabel!
    @IBOutlet var gakunennlabel : UILabel!
    @IBOutlet var gakkilabel : UILabel!
    @IBOutlet var nyuuryokulabel : UILabel!
    @IBOutlet var testmeilabel : UILabel!
    @IBOutlet var testkikannlabel : UILabel!
    
    private var chuugakuButton : SpringButton!
    private var koukouButton : SpringButton!
    private var chuuichiButton : SpringButton!
    private var chuuniButton : SpringButton!
    private var chuusannButton : SpringButton!
    private var ichigakkiButton : SpringButton!
    private var nigakkiButton : SpringButton!
    private var sanngakkiButton : SpringButton!
    private var textnyuuryokuButton : UIButton!
    
    
    var isShowgakkoubutton: Bool = false
    var isShowgakunennbutton: Bool = false
    var isShowgakkibutton: Bool = false
    
    let animationType = "pop"
    let bigfont = UIFont(name: "07LogoTypeGothic7", size : 25)
    let smallfont = UIFont(name: "07LogoTypeGothic7", size : 20)
    let buttonhaikeicolor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    
    
    @IBAction func gakkouhennkou(){
        
        if isShowgakkoubutton == false {
            chuugakuButton = SpringButton()
            koukouButton = SpringButton()
            
            chuugakuButton.layer.borderWidth = 5.0                                      // 枠線の幅
            chuugakuButton.layer.borderColor = #colorLiteral(red: 0.8156862745, green: 0.8941176471, blue: 0.9254901961, alpha: 1)
            
            koukouButton.layer.borderWidth = 5.0                                     // 枠線の幅
            koukouButton.layer.borderColor = #colorLiteral(red: 0.8156862745, green: 0.8941176471, blue: 0.9254901961, alpha: 1)
            
            setButton(button: chuugakuButton)
            setButton(button: koukouButton)
            
            chuugakuButton.frame = CGRect(x: 18, y: 330, width: 100, height: 50)
            koukouButton.frame = CGRect(x: 18, y: 390, width: 100, height: 50)
            
            // ボタンの背景色を設定.
            chuugakuButton.backgroundColor = buttonhaikeicolor
            koukouButton.backgroundColor = buttonhaikeicolor
            
            // タイトルを設定する(通常時).
            chuugakuButton.setTitle("中学", for: .normal)
            chuugakuButton.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
            chuugakuButton.titleLabel?.font = smallfont
            
            koukouButton.setTitle("高校", for: .normal)
            koukouButton.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
            koukouButton.titleLabel?.font = smallfont
            
            
            
            // ボタンにタグをつける.
            chuugakuButton.tag = 1
            koukouButton.tag = 2
            
            chuugakuButton.addTarget(self, action: #selector(self.changechuugakuButtonText), for: .touchUpInside)
            koukouButton.addTarget(self, action: #selector(self.changekoukouButtonText), for: .touchUpInside)
            
            // ボタンをViewに追加.
            self.view.addSubview(chuugakuButton)
            self.view.addSubview(koukouButton)
            
            isShowgakkoubutton = true
        } else {
            chuugakuButton.removeFromSuperview()
            koukouButton.removeFromSuperview()
            
            isShowgakkoubutton = false
        }

       
    }
    
    func setButton(button: SpringButton) {
        button.animation = animationType
        button.duration = 1.0
        button.force = 0.3
        button.animate()
    }
    
    
    @IBAction func gakunennhennkou(){
        
        if isShowgakunennbutton == false {
            
            chuuichiButton = SpringButton()
            chuuniButton = SpringButton()
            chuusannButton = SpringButton()
            
            chuuichiButton.layer.borderWidth = 5.0                                     // 枠線の幅
            chuuichiButton.layer.borderColor = #colorLiteral(red: 0.8156862745, green: 0.8941176471, blue: 0.9254901961, alpha: 1)
            chuuniButton.layer.borderWidth = 5.0                                     // 枠線の幅
            chuuniButton.layer.borderColor = #colorLiteral(red: 0.8156862745, green: 0.8941176471, blue: 0.9254901961, alpha: 1)
            chuusannButton.layer.borderWidth = 5.0                                     // 枠線の幅
            chuusannButton.layer.borderColor = #colorLiteral(red: 0.8156862745, green: 0.8941176471, blue: 0.9254901961, alpha: 1)
            
            setButton(button: chuuichiButton)
            setButton(button: chuuniButton)
            setButton(button: chuusannButton)
            
            
            chuuichiButton.frame = CGRect(x: 138, y: 330, width: 100, height: 50)
            chuuniButton.frame = CGRect(x: 138, y: 390, width: 100, height: 50)
            chuusannButton.frame = CGRect(x: 138, y: 450, width: 100, height: 50)
            
            // ボタンの背景色を設定.
            chuuichiButton.backgroundColor = buttonhaikeicolor
            chuuniButton.backgroundColor = buttonhaikeicolor
            chuusannButton.backgroundColor = buttonhaikeicolor
            
            // タイトルを設定する(通常時).
            chuuichiButton.setTitle("1年", for: .normal)
            chuuichiButton.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
            chuuichiButton.titleLabel?.font = smallfont
            
            chuuniButton.setTitle("2年", for: .normal)
            chuuniButton.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
            chuuniButton.titleLabel?.font = smallfont
            
            chuusannButton.setTitle("3年", for: .normal)
            chuusannButton.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
            chuusannButton.titleLabel?.font = smallfont
            
            // ボタンにタグをつける.
            chuuichiButton.tag = 3
            chuuniButton.tag = 4
            chuusannButton.tag = 5
            
            chuuichiButton.addTarget(self, action: #selector(self.changechuuichiButtonText), for: .touchUpInside)
            chuuniButton.addTarget(self, action: #selector(self.changechuuniButtonText), for: .touchUpInside)
            chuusannButton.addTarget(self, action: #selector(self.changechuusannButtonText), for: .touchUpInside)
            
            
            // ボタンをViewに追加.
            self.view.addSubview(chuuichiButton)
            self.view.addSubview(chuuniButton)
            self.view.addSubview(chuusannButton)
            
            isShowgakunennbutton = true
            
            
        }else{
            chuuichiButton.removeFromSuperview()
            chuuniButton.removeFromSuperview()
            chuusannButton.removeFromSuperview()
            
            isShowgakunennbutton = false

        }

    }
    
    @IBAction func gakkihennkou(){
        
        
        if isShowgakkibutton == false {
            ichigakkiButton = SpringButton()
            nigakkiButton = SpringButton()
            sanngakkiButton = SpringButton()
            
            ichigakkiButton.layer.borderWidth = 5.0                                     // 枠線の幅
            ichigakkiButton.layer.borderColor = #colorLiteral(red: 0.8156862745, green: 0.8941176471, blue: 0.9254901961, alpha: 1)
            nigakkiButton.layer.borderWidth = 5.0                                     // 枠線の幅
            nigakkiButton.layer.borderColor = #colorLiteral(red: 0.8156862745, green: 0.8941176471, blue: 0.9254901961, alpha: 1)
            sanngakkiButton.layer.borderWidth = 5.0                                     // 枠線の幅
            sanngakkiButton.layer.borderColor = #colorLiteral(red: 0.8156862745, green: 0.8941176471, blue: 0.9254901961, alpha: 1)
            
            
            setButton(button: ichigakkiButton)
            setButton(button: nigakkiButton)
            setButton(button: sanngakkiButton)
            
            
            ichigakkiButton.frame = CGRect(x: 258, y: 330, width: 100, height: 50)
            nigakkiButton.frame = CGRect(x: 258, y: 390, width: 100, height: 50)
            sanngakkiButton.frame = CGRect(x: 258, y: 450, width: 100, height: 50)
            
            // ボタンの背景色を設定.
            ichigakkiButton.backgroundColor = buttonhaikeicolor
            nigakkiButton.backgroundColor = buttonhaikeicolor
            sanngakkiButton.backgroundColor = buttonhaikeicolor
            
            // タイトルを設定する(通常時).
            ichigakkiButton.setTitle("1学期", for: .normal)
            ichigakkiButton.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
            ichigakkiButton.titleLabel?.font = smallfont
            
            nigakkiButton.setTitle("2学期", for: .normal)
            nigakkiButton.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
            nigakkiButton.titleLabel?.font = smallfont
            
            sanngakkiButton.setTitle("3学期", for: .normal)
            sanngakkiButton.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
            sanngakkiButton.titleLabel?.font = smallfont
            // ボタンにタグをつける.
            gakkiButton.tag = 6
            nigakkiButton.tag = 7
            sanngakkiButton.tag = 8
            
            ichigakkiButton.addTarget(self, action: #selector(self.changeichigakkiButtonText), for: .touchUpInside)
            nigakkiButton.addTarget(self, action: #selector(self.changenigakkiButtonText), for: .touchUpInside)
            sanngakkiButton.addTarget(self, action: #selector(self.changesanngakkiButtonText), for: .touchUpInside)
            
            
            // ボタンをViewに追加.
            self.view.addSubview(ichigakkiButton)
            self.view.addSubview(nigakkiButton)
            self.view.addSubview(sanngakkiButton)
            
            isShowgakkibutton = true
            
        }else{
            ichigakkiButton.removeFromSuperview()
            nigakkiButton.removeFromSuperview()
            sanngakkiButton.removeFromSuperview()
            
            isShowgakkibutton = false
        }
    }
    
    @objc func changechuugakuButtonText(){
        gakkouButton.setTitle("中学", for: .normal)
        gakkouButton.titleLabel!.font = bigfont
        chuugakuButton.titleLabel!.font = smallfont
        
        chuugakuButton.removeFromSuperview()
        koukouButton.removeFromSuperview()
        
    }
    
    @objc func changekoukouButtonText(){
        gakkouButton.setTitle("高校", for: .normal)
        gakkouButton.titleLabel!.font = bigfont
        
        chuugakuButton.removeFromSuperview()
        koukouButton.removeFromSuperview()
        
    }
    
    @objc func changechuuichiButtonText(){
        gakunennButton.setTitle("1年", for: .normal)
        gakunennButton.titleLabel!.font = bigfont
        
        chuuichiButton.removeFromSuperview()
        chuuniButton.removeFromSuperview()
        chuusannButton.removeFromSuperview()
        
    }
    
    @objc func changechuuniButtonText(){
        gakunennButton.setTitle("2年", for: .normal)
        gakunennButton.titleLabel!.font = bigfont
        
        chuuichiButton.removeFromSuperview()
        chuuniButton.removeFromSuperview()
        chuusannButton.removeFromSuperview()
        
    }
    
    @objc func changechuusannButtonText(){
        gakunennButton.setTitle("3年", for: .normal)
        gakunennButton.titleLabel!.font = bigfont
        
        chuuichiButton.removeFromSuperview()
        chuuniButton.removeFromSuperview()
        chuusannButton.removeFromSuperview()
        
    }
    
    @objc func changeichigakkiButtonText(){
        gakkiButton.setTitle("1学期", for: .normal)
        gakkiButton.titleLabel!.font = bigfont
        
        ichigakkiButton.removeFromSuperview()
        nigakkiButton.removeFromSuperview()
        sanngakkiButton.removeFromSuperview()
        
    }
    
    @objc func changenigakkiButtonText(){
        gakkiButton.setTitle("2学期", for: .normal)
        gakkiButton.titleLabel!.font = bigfont
        
        ichigakkiButton.removeFromSuperview()
        nigakkiButton.removeFromSuperview()
        sanngakkiButton.removeFromSuperview()
        
    }
    
    @objc func changesanngakkiButtonText(){
        gakkiButton.setTitle("3学期", for: .normal)
        gakkiButton.titleLabel!.font = bigfont
        
        ichigakkiButton.removeFromSuperview()
        nigakkiButton.removeFromSuperview()
        sanngakkiButton.removeFromSuperview()
        
    }
    
    @IBAction func textnyuuryokuButtonkesu(){
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        gakkoulabel.text = "学校"
        gakunennlabel.text = "学年"
        gakkilabel.text = "学期"
        nyuuryokulabel.text = "入力画面"
        testmeilabel.text = "テスト名"
        testkikannlabel.text = "テスト期間"
        
        gakkoulabel.font = smallfont
        gakunennlabel.font = smallfont
        gakkilabel.font = smallfont
        nyuuryokulabel.font = bigfont
        testmeilabel.font = smallfont
        testkikannlabel.font = smallfont
        
        let textField = UITextField()
        
        // サイズ設定
        textField.frame.size.width = 240
        textField.frame.size.height = 50
        
        // 位置設定
        textField.center.x = 200
        textField.center.y = 180
        
        // Delegate を設定
        textField.delegate = self
        
        // プレースホルダー
        textField.placeholder = "テスト名を入力"
        
        // 背景色
        textField.backgroundColor = UIColor(white: 0.9, alpha: 1)
        
        // 左の余白
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        
        // テキストを全消去するボタンを表示
        textField.clearButtonMode = .always
        
        // 改行ボタンの種類を変更
        textField.returnKeyType = .done
        
        // 画面に追加
        self.view.addSubview(textField)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        let textField = UITextField()
        
        // サイズ設定
        textField.frame.size.width = 240
        textField.frame.size.height = 50
        
        // 位置設定
        textField.center.x = 200
        textField.center.y = 180
        
        // Delegate を設定
        textField.delegate = self
        
        // プレースホルダー
        textField.placeholder = "テスト名を入力"
        
        // 背景色
        textField.backgroundColor = UIColor(white: 0.9, alpha: 1)
        
        // 左の余白
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        
        // テキストを全消去するボタンを表示
        textField.clearButtonMode = .always
        
        // 改行ボタンの種類を変更
        textField.returnKeyType = .done
        
        // 画面に追加
        self.view.addSubview(textField)
        
        textField.removeFromSuperview()
        
        return true
    }
    
    // クリアボタンが押された時の処理
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        
        print("Clear")
        return true
    }
    
    // テキストフィールドがフォーカスされた時の処理
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("Start")
        return true
    }
    
    // テキストフィールドでの編集が終わろうとするときの処理
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("End")
        return true
    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}


