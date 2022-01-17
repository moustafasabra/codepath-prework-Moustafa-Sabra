//
//  ViewController.swift
//  prework-moustafa-sabra
//
//  Created by Moustafa Sabra on 1/12/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var BillAmountTextField: UITextField!
    
    @IBOutlet weak var TipAmountLabel: UILabel!
    
    @IBOutlet weak var TipControl: UISegmentedControl!
    
    @IBOutlet weak var TotalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CalculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(BillAmountTextField.text!) ?? 0
        
        // Get Total Tip by multiplying tip * tipPercentage
        let tipPercentage = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentage[TipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update Tip Amount Label
        TipAmountLabel.text = String(format: "$%.2f", tip)
        //update Total Amount
        TotalLabel.text = String(format: "$%.2f", total)
    }
    
}

