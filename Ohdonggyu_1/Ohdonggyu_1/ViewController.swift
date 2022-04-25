//
//  ViewController.swift
//  Ohdonggyu_1
//
//  Created by 오동규 on 2022/04/12.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var numberTF1: UITextField!
    @IBOutlet var numberTF2: UITextField!
    @IBOutlet var numResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberTF1.delegate = self
        numberTF2.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
          self.view.endEditing(true)
      }
    
    @IBAction func btnPlus(_ sender: UIButton) {
        let plus = Int(numberTF1.text!)! + Int(numberTF2.text!)!
        numResult.text = (numberTF1.text!) + "+" + (numberTF2.text!) + "=" + String(plus)
    }
    @IBAction func btnMinus(_ sender: UIButton) {
        let minus = Int(numberTF1.text!)! - Int(numberTF2.text!)!
        numResult.text = (numberTF1.text!) + "-" + (numberTF2.text!) + "=" + String(minus)
    }
    @IBAction func btnMulti(_ sender: UIButton) {
        let multi = Int(numberTF1.text!)! * Int(numberTF2.text!)!
        numResult.text = (numberTF1.text!) + "x" + (numberTF2.text!) + "=" + String(multi)
    }
    @IBAction func btnDiv(_ sender: UIButton) {
        let divide = Int(numberTF1.text!)! / Int(numberTF2.text!)!
        numResult.text = (numberTF1.text!) + "%" + (numberTF2.text!) + "=" + String(divide)
    }
    
}

