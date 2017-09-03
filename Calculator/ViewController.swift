//
//  ViewController.swift
//  Calculator
//
//  Created by Molayo Decker on 02/09/2017.
//  Copyright © 2017 Decker M LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var userIsTyping = false
    @IBOutlet weak var display: UILabel!
    @IBAction func touchDigit(_ sender: UIButton) {
       let digit = sender.currentTitle!
        if userIsTyping{
            let textCurrentlyDisplay = display.text!
            display!.text = textCurrentlyDisplay + digit
        }else{
            display.text = digit
        }
        userIsTyping = true
    }

    @IBAction func performOperation(_ sender: UIButton) {
        userIsTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            if mathematicalSymbol == "π" {
                display.text = String(Double.pi)//M_PI
            }
        }
    }
}

