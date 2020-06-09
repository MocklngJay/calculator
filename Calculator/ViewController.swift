//
//  ViewController.swift
//  Calculator
//
//  Created by Julius Baumann on 2020-06-08.
//  Copyright © 2020 Julius Baumann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var converter = Converter()
    
    @IBOutlet weak var firstNumber: UILabel!
    @IBOutlet weak var secondNumber: UILabel!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var operation: UILabel!
    
    @IBOutlet weak var selectedInput: UISwitch!
    
    var firstActive : Bool {
        return !selectedInput.isOn
    }
    
    @IBAction func buttonI(_ sender: Any) {
        if firstActive {
            firstNumber.text! += "I"
        } else {
            secondNumber.text! += "I"
        }
    }
    
    @IBAction func buttonV(_ sender: Any) {
        if firstActive {
            firstNumber.text! += "V"
        } else {
            secondNumber.text! += "V"
        }
    }
    
    @IBAction func buttonX(_ sender: Any) {
        if firstActive {
            firstNumber.text! += "X"
        } else {
            secondNumber.text! += "X"
        }
    }
    
    @IBAction func buttonL(_ sender: Any) {
        if firstActive {
            firstNumber.text! += "L"
        } else {
            secondNumber.text! += "L"
        }
    }
    
    @IBAction func buttonC(_ sender: Any) {
        if firstActive {
            firstNumber.text! += "C"
        } else {
            secondNumber.text! += "C"
        }
    }
    
    
    @IBAction func buttonD(_ sender: Any) {
        if firstActive {
            firstNumber.text! += "D"
        } else {
            secondNumber.text! += "D"
        }
    }
    
    
    @IBAction func buttonM(_ sender: Any) {
        if firstActive {
            firstNumber.text! += "M"
        } else {
            secondNumber.text! += "M"
        }
    }
    
    @IBAction func buttonPlus(_ sender: Any) {
        operation.text = "+"
    }
    
    @IBAction func buttonMinus(_ sender: Any) {
        operation.text = "-"
    }
    
    @IBAction func buttonCalculate(_ sender: Any) {
        
        if !firstNumber.text!.isEqual(String("")) && !secondNumber.text!.isEqual(String("")) {
            
            if operation.text!.isEqual(String("+")) {
                result.text = add(firstNumber: firstNumber.text!, secondNumber: secondNumber.text!)
            } else {
                result.text = subtract(firstNumber: firstNumber.text!, secondNumber: secondNumber.text!)
            }
        }
        
    }
    
    func add(firstNumber: String, secondNumber: String) -> String{
        
        let first = converter.romanToInt(firstNumber)
        let second = converter.romanToInt(secondNumber)
        
        let resultInt = first + second
        
        let resultRoman = converter.intToRoman(number: resultInt)
        
        return resultRoman
    }
    
    func subtract(firstNumber: String, secondNumber: String) -> String{
        
        let first = converter.romanToInt(firstNumber)
        let second = converter.romanToInt(secondNumber)
        
        let resultInt = first - second
        
        let resultRoman = converter.intToRoman(number: resultInt)
        
        return resultRoman
    }
    
    @IBAction func Reset(_ sender: Any) {
        firstNumber.text! = ""
        secondNumber.text! = ""
        result.text! = ""
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        firstNumber.layer.borderColor = UIColor.darkGray.cgColor
//        firstNumber.layer.borderWidth = 3.0
//
//        secondNumber.layer.borderColor = UIColor.darkGray.cgColor
//        secondNumber.layer.borderWidth = 3.0
//
//        result.layer.borderColor = UIColor.darkGray.cgColor
//        result.layer.borderWidth = 3.0
        
        
        // Do any additional setup after loading the view.
    }


}

