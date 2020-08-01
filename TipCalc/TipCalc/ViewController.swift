//
//  ViewController.swift
//  TipCalc
//
//  Created by Suhaib AlMutawakel on 7/31/20.
//  Copyright © 2020 Suhaib AlMutawakel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var splitField: UITextField!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var viewOne: UIView!
    @IBOutlet weak var viewTwo: UIView!
    @IBOutlet weak var viewThree: UIView!
    @IBOutlet weak var viewFour: UIView!
    @IBOutlet weak var viewFive: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //Created this quick way to add a nice UI Cornor Radius for the UIViews
        viewOne.layer.cornerRadius = 10
        viewOne.clipsToBounds = true
        viewTwo.layer.cornerRadius = 10
        viewTwo.clipsToBounds = true
        viewThree.layer.cornerRadius = 10
        viewThree.clipsToBounds = true
        viewFour.layer.cornerRadius = 10
        viewFour.clipsToBounds = true
        viewFive.layer.cornerRadius = 10
        viewFive.clipsToBounds = true
        
        
    }

    //To dismess keypad when user clicks anywehre on screen
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get the bill Amount
        let bill = Double(billField.text!) ?? 0
        let split = Double(splitField.text!) ?? 0
        
        
        // Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let perPerson = (total / split)
       
        //Update the Tip and Total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        splitLabel.text = String(format: "$%.2f", perPerson)
        
                
    }
}

