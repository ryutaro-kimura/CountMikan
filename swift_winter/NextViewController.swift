//
//  NextViewController.swift
//  swift_winter
//
//  Created by 木村龍太郎 on 2020/12/27.
//

import UIKit

class NextViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var label: UILabel!
    var passdata = 0
        override func viewDidLoad() {
            super.viewDidLoad()
            label.text = String(passdata)

            // Do any additional setup after loading the view.
        }
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }


    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
