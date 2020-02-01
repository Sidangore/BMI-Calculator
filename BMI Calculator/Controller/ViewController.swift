//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Siddhant Jayant Angore on 13/10/19.
//  Copyright © 2019 Siddhant Jayant Angore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightSliderLabel: UISlider!
    @IBOutlet weak var heightSliderLabel: UISlider!
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    
   // var bmiValue = "0.0"
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calculateButton.backgroundColor = UIColor.green
        calculateButton.layer.cornerRadius = 25.0
        calculateButton.tintColor = UIColor.white
        calculateButton.setTitleColor(.black, for: .normal)
        
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        heightValueLabel.text = "\(String(format : "%0.2f", sender.value))m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weightValueLabel.text = "\(String(format : "%.0f", sender.value))kg"
    }
    
    
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let height = heightSliderLabel.value
        let weight = weightSliderLabel.value
        
        calculatorBrain.calculateBMI(height : height, weight : weight )
        performSegue(withIdentifier: "goToResult", sender: self)
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIvalue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
            
            
        }
    }
    
    
}

