//
//  ViewController.swift
//  MoneyPractice
//
//  Created by Tai Chin Huang on 2020/9/29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var paidLabel: UILabel!
    @IBOutlet weak var correctPointLabel: UILabel!
    @IBOutlet weak var incorrectPointLabel: UILabel!
    @IBOutlet weak var correctLabel: UILabel!
    @IBOutlet weak var wrongLabel: UILabel!
    @IBOutlet var moneyTextField: [UITextField]!
    @IBOutlet weak var testText: UITextField!
    
    let moneyType = [100, 50, 20, 10, 5, 1, 0.25, 0.1, 0.05, 0.01]
    var total: Double = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        correctLabel.isHidden = true
        wrongLabel.isHidden = true
        createRandomNumber()
    }
    
    func createRandomNumber() {
        let paidNumber = Double.random(in: 1...1000)
        let costNumber = Double.random(in: 0...paidNumber)
        costLabel.text = "$ \(String(format: "%.2f", costNumber))"
        paidLabel.text = "$ \(String(format: "%.2f", paidNumber))"
        }
    
//    func numberAdd() -> Double {
//        <#function body#>
//    }

//for i in 0...9 {
//    self.moneyTextField[i].text = sender.text
//    total = 100 * Int(moneyTextField[0]) + 50 * Int(moneyTextField[1]) + 20 * Int(moneyTextField[2]) + 10 * Int(moneyTextField[3]) + 5 * Int(moneyTextField[4]) + 1 * Int(moneyTextField[5]) + 0.25 * Int(moneyTextField[6]) + 0.1 * Int(moneyTextField[7]) + 0.05 * Int(moneyTextField[8]) + 0.01 * Int(moneyTextField[9])
//    print(total)
    
    
    @IBAction func clearButton(_ sender: UIButton) {
        testText.text = ""
        var sum = 0
        for textM in moneyTextField {
            textM.text = ""
            sum += 1
        }
//        moneyTextField[Int()].text = ""
    }
    @IBAction func restartButton(_ sender: UIButton) {
        createRandomNumber()
    }
    
    
}

