//
//  ViewController.swift
//  Prework
//
//  Created by Cassandra Chow on 8/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var sliderItem: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func updateSliderText(_ sender: Any) {
        //sliderLabel.text = "\(sliderItem.value)"
        sliderLabel.text = String(format: "%.2f", sliderItem.value)
    }
    
    @IBAction func calcTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercent = Double(sliderLabel.text!)
        let tip = bill * (tipPercent!/100)
        let total = bill + tip
        
        //Update total text
        totalLabel.text = "\(total)"
        tipAmountLabel.text = "\(tip)"
    }
}

