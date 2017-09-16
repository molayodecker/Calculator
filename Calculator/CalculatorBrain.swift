//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Molayo Decker on 14/09/2017.
//  Copyright © 2017 Decker M LLC. All rights reserved.
//

import Foundation

class CalculatorBrain{
    
    var accumulator = 0.0
    
    func setOperand(operand:Double){
        accumulator = operand
    }
    
    var operation:Dictionary<String,Operation> = [
        "π": Operation.Constant, //Double.pi,
        "e": Operation.Constant, //M_E,
        "√" : Operation.UnaryOperation,//sqrt,
        "cos": Operation.UnaryOperation // cos
    ]
    
    enum Operation{
        case Constant
        case UnaryOperation
        case BinaryOperation
        case Equals
    }
    
    func performOperation(symbol:String){
        if let constant = operation[symbol]{
            accumulator = constant
        }
    }
    
    var result: Double{
        get{
           return accumulator
        }
    }
    
}
