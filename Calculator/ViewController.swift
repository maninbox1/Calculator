//
//  ViewController.swift
//  Calculator
//
//  Created by Mikhail Ladutska

import UIKit

class ViewController: UIViewController {
    
    var numberFromScreen : Float = 0
    var firstNumber : Float = 0
    var mathSign : Bool = false
    var operation : Int = 0
    
    @IBOutlet weak var result: UILabel!
    
    
    @IBAction func digits(_ sender: UIButton) {
        if mathSign == true{
            result.text = String(sender.tag)
         //   numberFromScreen = Float(result.text!)!
            mathSign = false
        }else if result.text == "0" {
            result.text! = String(sender.tag)
        }else {
            result.text! += String(sender.tag)
        }
        numberFromScreen = Float(result.text!)!
    }
    @IBAction func buttons(_ sender: UIButton) {
       
        if result.text != "" && sender.tag != 10 && sender.tag != 16 {
            firstNumber = Float(result.text!)!
            
            if sender.tag == 14 {
                result.text = "+"
            }else if sender.tag == 12 {
                result.text = "/"
            }else if sender.tag == 13 {
                result.text = "x"
            }else if sender.tag == 15 {
                result.text = "-"
            }else if sender.tag == 11 {
                result.text = String(factorial(numberFromScreen))
            }else if sender.tag == 18 {
                result.text = String(pow(10, numberFromScreen))
            }else if sender.tag == 19 {
                result.text = String(findSqrt(number: numberFromScreen))
            }
            
            operation = sender.tag
            mathSign = true
            
        
        
        
        }else if sender.tag == 16 {
             if operation == 12 {
                 result.text = String(firstNumber / numberFromScreen)
             }else if operation == 14 {
                result.text = String(format:"%.f", firstNumber + numberFromScreen)
             }else if operation == 15 {
                result.text = String(format:"%.f", firstNumber - numberFromScreen)
             }else if operation == 13 {
                result.text = String(format:"%.f", firstNumber * numberFromScreen)
             }
        
        }else if sender.tag == 10 {
            result.text = "0"
            firstNumber = 0
            numberFromScreen = 0
            operation = 0
        }
    
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        result.accessibilityIdentifier = "result"
    }

    func factorial<N: Numeric>(_ x: N) -> N {
        x == 0 ? 1 : x * factorial(x - 1)
    }
    
    func findSqrt(number: Float) -> Float {
        return sqrtf(number)
    }
    
}
