//
//  ViewController.swift
//  swift_winter
//
//  Created by 木村龍太郎 on 2020/12/26.
//

import UIKit

class ViewController: UIViewController {
    //数字を格納する場所
    var count = 0
    var countGoal = Int.random(in: -10...10)
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var goalNum: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        goalNum.text = String(countGoal)
    }
    @IBAction func countUpButton(_ sender: Any) {
            //+ボタンを押すとラベルの文字をカウントアップ
        count = count + 1
        //画面遷移
        if count == countGoal {
            performSegue(withIdentifier: "nextScreen", sender: nil)
        }
        countLabel.text = String(count)
            //カウントにあわせて文字の色を変更
            changeTextColor()
        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "nextScreen" {
            let nextVC = segue.destination as! NextViewController
            nextVC.passdata = count
        }
    }

    @IBAction func countDounButton(_ sender: Any) {
         //-ボタンを押すとラベルの文字をカウントダウン
        count = count - 1
        countLabel.text = String(count)
        //カウントにあわせて文字の色を変更
        changeTextColor()
    }

//ラベルの色を変更するメソッドを定義する
    func changeTextColor() {
        if count >= 5 {
            countLabel.textColor = UIColor.green
        }else if count < 0 {
            countLabel.textColor = UIColor.red
        }else {
            countLabel.textColor = UIColor.black
        }
    }

}

