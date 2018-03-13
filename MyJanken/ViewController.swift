//
//  ViewController.swift
//  MyJanken
//
//  Created by Kakeru Nakabachi on 2018/03/13.
//  Copyright © 2018年 kakeru nakabachi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var answerImageView: UIImageView!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    var answerNumber = 0
    
    @IBAction func shuffleAction(_ sender: Any) {
        
        //0, 1, 2の数値をランダムに算出
        //arc4random_uniform()の戻り値はUInt32だからSwiftの標準的な整数型Intにキャストする
        answerNumber = Int(arc4random_uniform(3))
        
        if answerNumber == 0 {
        //グー
            answerLabel.text = "グー"
            answerImageView.image = UIImage(named: "gu")
            
        } else if answerNumber == 1 {
        //チョキ
            answerLabel.text = "チョキ"
            answerImageView.image = UIImage(named: "choki")
            
        } else if answerNumber == 2 {
        //パー
            answerLabel.text = "パー"
            answerImageView.image = UIImage(named: "pa")
            
        }
    }
    
}

