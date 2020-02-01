//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Siddhant Jayant Angore on 14/10/19.
//  Copyright © 2019 Siddhant Jayant Angore. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    //check for the range in the Bmi chart
    mutating func calculateBMI(height : Float, weight : Float){
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "eat more pies", color: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
        }else if bmiValue > 18.5 && bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "keep it going", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        }else {
            bmi = BMI(value: bmiValue, advice: "dude eat less", color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
        }
        
    }
    //to get the BMI value in string
    func getBMIvalue() -> String {

        let bmiTo1Decimal = String(format : "%.2f", bmi?.value ?? 0.0)
        return bmiTo1Decimal
    }
    
    //get Advice
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
        
    }

    //get color
    func getColor() -> UIColor {
        return bmi?.color ?? .white
        
    }

}
