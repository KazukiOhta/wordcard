//
//  ViewController.swift
//  wordcard
//
//  Created by 太田 一毅 on 2019/04/06.
//  Copyright © 2019 太田 一毅. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func back(segue: UIStoryboardSegue) {
        
    }

    @IBAction func startButtonTapped(){
        let saveData = UserDefaults.standard
        
        if let wordArray = saveData.array(forKey: "WORD") {
            if wordArray.count > 0{
                self.performSegue(withIdentifier: "toQuestionView", sender: nil)
            }
        }
        
        let alert: UIAlertController = UIAlertController(title: "単語", message: "まずは単語一覧をタップして単語登録してください。", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default
            , handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
}

