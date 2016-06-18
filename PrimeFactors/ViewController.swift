//
//  ViewController.swift
//  PrimeFactors
//
//  Created by Cyrus Vandrevala on 6/14/16.
//  Copyright © 2016 Cyrus Vandrevala. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var display: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self //set delegate to textfile
    }
    
    func textFieldShouldReturn(txtField: UITextField) -> Bool {   //delegate method
        txtField.resignFirstResponder()
        return true
    }

    @IBAction func calculatePrimes(sender: AnyObject) {
        let number = Int(textField.text!)
        if(number != nil) {
            let factors = PrimeFactorsBrain.factors(number!)
            let factors_strings = factors.flatMap { String($0) }
            display.text = factors_strings.joinWithSeparator(",")
        }
    }

}

