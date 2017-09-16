//
//  ViewController.swift
//  Calculator
//
//  Created by Molayo Decker on 02/09/2017.
//  Copyright © 2017 Decker M LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   private var userIsTyping = false
    @IBOutlet weak private var display: UILabel!
    @IBAction private func touchDigit(_ sender: UIButton) {
       let digit = sender.currentTitle!
        if userIsTyping{
            let textCurrentlyDisplay = display.text!
            display!.text = textCurrentlyDisplay + digit
        }else{
            display.text = digit
        }
        userIsTyping = true
    }
    
   private var displayValue: Double {
        get{
            return Double(display.text!)!;
        }
        set{
            display.text = String(newValue)
        }
    }
    
    private var brain: CalculatorBrain = CalculatorBrain()

    @IBAction private func performOperation(_ sender: UIButton) {
        if userIsTyping {
            brain.setOperand(operand: displayValue)
            userIsTyping = false
        }
        if let mathematicalSymbol = sender.currentTitle {
                brain.performOperation(symbol: mathematicalSymbol)
        }
        displayValue = brain.result
    }
}

