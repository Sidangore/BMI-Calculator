//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Siddhant Jayant Angore on 13/10/19.
//  Copyright © 2019 Siddhant Jayant Angore. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue : String?
    var advice : String?
    var color : UIColor?

    @IBOutlet weak var bmiValueLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiValueLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        
    }
    

 

    
}
