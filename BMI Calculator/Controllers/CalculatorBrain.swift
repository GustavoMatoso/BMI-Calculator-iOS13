//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Gustavo Matoso on 24/03/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    
    func getBMIValue()-> String{
        
        let bmiFormated = String(format: "%0.1f", bmi?.value ?? 0.0)
        return bmiFormated
        
    }
    
    
   mutating func calculateBMI(height: Float, weight: Float){
       
        
       let bmiValue = weight / pow(height, 2)
       
       if bmiValue < 18.5{
           bmi = BMI(value: bmiValue, Advice: "Eat more food bro!", color: UIColor.yellow)
       } else if bmiValue < 24.9{
           bmi = BMI(value: bmiValue, Advice: "Oh health weight bro!", color: UIColor.green)
       } else{
           bmi = BMI(value: bmiValue, Advice: "Oh do more exercises and eat less bro!", color: UIColor.red)
       }
       
        
    }
    
    func getAdvice()-> String{
        
        return bmi?.Advice ?? "no advice"
        
    }
    
    func getColor()-> UIColor{
        
        return bmi?.color ?? UIColor.white
    }
    
}
