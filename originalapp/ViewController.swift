//
//  ViewController.swift
//  originalapp
//
//  Created by Moeka on 2017/11/12.
//  Copyright © 2017年 Moeka. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet var gakkouButton : UIButton!
    @IBOutlet var gakunennButton : UIButton!
    @IBOutlet var gakkiButton : UIButton!
    
    @IBOutlet var label : UILabel!
    
    private var chuugakuButton : SpringButton!
    private var koukouButton : SpringButton!
    private var chuuichiButton : SpringButton!
    private var chuuniButton : SpringButton!
    private var chuusannButton : SpringButton!
    private var ichigakkiButton : SpringButton!
    private var nigakkiButton : SpringButton!
    private var sanngakkiButton : SpringButton!
    
    var gakkoucount : Int = 0
    var gakunenncount : Int = 0
    var gakkicount : Int = 0
    
    let animationType = "pop"
    
    
    
    @IBAction func gakkouhennkou(){
        
        gakkoucount = gakkoucount + 1
        
        if gakkoucount % 2 == 1  {
            chuugakuButton = SpringButton()
            koukouButton = SpringButton()
            
            setButton(button: chuugakuButton)
            setButton(button: koukouButton)
            
            chuugakuButton.frame = CGRect(x: 17.5, y: 160, width: 100, height: 50)
            koukouButton.frame = CGRect(x: 17.5, y: 220, width: 100, height: 50)
            
            // ボタンの背景色を設定.
            chuugakuButton.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
            koukouButton.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
            
            // タイトルを設定する(通常時).
            chuugakuButton.setTitle("中学", for: .normal)
            chuugakuButton.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
            chuugakuButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
            
            koukouButton.setTitle("高校", for: .normal)
            koukouButton.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
            koukouButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
            
            
            
            
            // ボタンにタグをつける.
            chuugakuButton.tag = 1
            koukouButton.tag = 2
            
            chuugakuButton.addTarget(self, action: #selector(self.changechuugakuButtonText), for: .touchUpInside)
            koukouButton.addTarget(self, action: #selector(self.changekoukouButtonText), for: .touchUpInside)
            
            // ボタンをViewに追加.
            self.view.addSubview(chuugakuButton)
            self.view.addSubview(koukouButton)
            
            
        }else{
            chuugakuButton.removeFromSuperview()
            koukouButton.removeFromSuperview()
        }
    }
    func setButton(button: SpringButton) {
        button.animation = animationType
        button.duration = 1.0
        button.force = 0.3
        button.animate()
    }
    @IBAction func gakunennhennkou(){
        
        gakunenncount = gakunenncount + 1
        
        if gakunenncount % 2 == 1  {
            chuuichiButton = SpringButton()
            chuuniButton = SpringButton()
            chuusannButton = SpringButton()
            
    
            setButton(button: chuuichiButton)
            setButton(button: chuuniButton)
            setButton(button: chuusannButton)
           
            
            chuuichiButton.frame = CGRect(x: 138.5, y: 160, width: 100, height: 50)
            chuuniButton.frame = CGRect(x: 138.5, y: 220, width: 100, height: 50)
            chuusannButton.frame = CGRect(x: 138.5, y: 280, width: 100, height: 50)
            
            // ボタンの背景色を設定.
            chuuichiButton.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
            chuuniButton.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
            chuusannButton.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
            
            // タイトルを設定する(通常時).
            chuuichiButton.setTitle("1年", for: .normal)
            chuuichiButton.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
            chuuichiButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
            
            chuuniButton.setTitle("2年", for: .normal)
            chuuniButton.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
            chuuniButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
            
            chuusannButton.setTitle("3年", for: .normal)
            chuusannButton.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
            chuusannButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
            
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
            
            
        }else{
            chuuichiButton.removeFromSuperview()
            chuuniButton.removeFromSuperview()
            chuusannButton.removeFromSuperview()
        }
    }
    
    @IBAction func gakkihennkou(){
        
        gakkicount = gakkicount + 1
        
        if gakkicount % 2 == 1  {
            ichigakkiButton = SpringButton()
            nigakkiButton = SpringButton()
            sanngakkiButton = SpringButton()
            
            
            setButton(button: ichigakkiButton)
            setButton(button: nigakkiButton)
            setButton(button: sanngakkiButton)
            
            
            ichigakkiButton.frame = CGRect(x: 258.5, y: 160, width: 100, height: 50)
            nigakkiButton.frame = CGRect(x: 258.5, y: 220, width: 100, height: 50)
            sanngakkiButton.frame = CGRect(x: 258.5, y: 280, width: 100, height: 50)
            
            // ボタンの背景色を設定.
            ichigakkiButton.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
            nigakkiButton.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
            sanngakkiButton.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
            
            // タイトルを設定する(通常時).
            ichigakkiButton.setTitle("1学期", for: .normal)
            ichigakkiButton.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
            ichigakkiButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
            
            nigakkiButton.setTitle("2学期", for: .normal)
            nigakkiButton.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
            nigakkiButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
            
            sanngakkiButton.setTitle("3学期", for: .normal)
            sanngakkiButton.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
            sanngakkiButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
            
            // ボタンにタグをつける.
            ichigakkiButton.tag = 6
            nigakkiButton.tag = 7
            sanngakkiButton.tag = 8
            
            ichigakkiButton.addTarget(self, action: #selector(self.changeichigakkiButtonText), for: .touchUpInside)
            nigakkiButton.addTarget(self, action: #selector(self.changenigakkiButtonText), for: .touchUpInside)
            sanngakkiButton.addTarget(self, action: #selector(self.changesanngakkiButtonText), for: .touchUpInside)
            
            
            // ボタンをViewに追加.
            self.view.addSubview(ichigakkiButton)
            self.view.addSubview(nigakkiButton)
            self.view.addSubview(sanngakkiButton)
            
            
        }else{
            ichigakkiButton.removeFromSuperview()
            nigakkiButton.removeFromSuperview()
            sanngakkiButton.removeFromSuperview()
        }
    }
    
    @objc func changechuugakuButtonText(){
        gakkouButton.setTitle("中学", for: .normal)
        chuugakuButton.removeFromSuperview()
        koukouButton.removeFromSuperview()
        gakkoucount = gakkoucount + 1
    }
    
    @objc func changekoukouButtonText(){
        gakkouButton.setTitle("高校", for: .normal)
        chuugakuButton.titleLabel!.font = UIFont(name: "shirokuma",size: CGFloat(30))
        chuugakuButton.removeFromSuperview()
        koukouButton.removeFromSuperview()
        gakkoucount = gakkoucount + 1
    }
    
    @objc func changechuuichiButtonText(){
        gakunennButton.setTitle("1年", for: .normal)
        chuuichiButton.titleLabel!.font = UIFont(name: "shirokuma",size: CGFloat(30))
        chuuichiButton.removeFromSuperview()
        chuuniButton.removeFromSuperview()
        chuusannButton.removeFromSuperview()
        gakunenncount = gakunenncount + 1
    }
    
    @objc func changechuuniButtonText(){
        gakunennButton.setTitle("2年", for: .normal)
        chuuniButton.titleLabel!.font = UIFont(name: "shirokuma",size: CGFloat(30))
        chuuichiButton.removeFromSuperview()
        chuuniButton.removeFromSuperview()
        chuusannButton.removeFromSuperview()
        gakunenncount = gakunenncount + 1
    }
    
    @objc func changechuusannButtonText(){
        gakunennButton.setTitle("3年", for: .normal)
        chuusannButton.titleLabel!.font = UIFont(name: "shirokuma",size: CGFloat(30))
        chuuichiButton.removeFromSuperview()
        chuuniButton.removeFromSuperview()
        chuusannButton.removeFromSuperview()
        gakunenncount = gakunenncount + 1
    }
    
    @objc func changeichigakkiButtonText(){
        gakkiButton.setTitle("1学期", for: .normal)
        ichigakkiButton.titleLabel!.font = UIFont(name: "shirokuma",size: CGFloat(30))
        ichigakkiButton.removeFromSuperview()
        nigakkiButton.removeFromSuperview()
        sanngakkiButton.removeFromSuperview()
        gakkicount = gakkicount + 1
    }
    
    @objc func changenigakkiButtonText(){
        gakkiButton.setTitle("2学期", for: .normal)
        nigakkiButton.titleLabel!.font = UIFont(name: "shirokuma",size: CGFloat(30))
        ichigakkiButton.removeFromSuperview()
        nigakkiButton.removeFromSuperview()
        sanngakkiButton.removeFromSuperview()
        gakkicount = gakkicount + 1
    }
    
    @objc func changesanngakkiButtonText(){
        gakkiButton.setTitle("3学期", for: .normal)
        sanngakkiButton.titleLabel!.font = UIFont(name: "shirokuma",size: CGFloat(30))
        ichigakkiButton.removeFromSuperview()
        nigakkiButton.removeFromSuperview()
        sanngakkiButton.removeFromSuperview()
        gakkicount = gakkicount + 1
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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


