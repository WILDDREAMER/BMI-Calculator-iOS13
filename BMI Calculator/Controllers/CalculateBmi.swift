//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateBmi: UIViewController {

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var height: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weight: UISlider!
    var brain = CalculatorBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        brain.height = sender.value
        heightLabel.text = String(format: "%.2fm", sender.value)
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        brain.weight = sender.value
        weightLabel.text = String(format: "%dKg", Int(sender.value))
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            brain.getBmiValue()
            destinationVC.bmi = brain.bmi!.getValue()
            destinationVC.color = brain.bmi!.getColor()
            destinationVC.advice = brain.bmi!.getAdvice()
        }
    }
    
}
 
 
