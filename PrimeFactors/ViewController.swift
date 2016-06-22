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
        if(number == nil) {
            display.text = "No primes could be generated :("
        } else {
            let url = NSURL(string: "https://damp-wave-44850.herokuapp.com?number=\(number!)")
            let request = NSURLRequest(URL: url!)
            let operationQueue = NSOperationQueue.currentQueue()!
            NSURLConnection.sendAsynchronousRequest(request, queue: operationQueue) { response, maybeData, error in
                if let data = maybeData {
                    let theString = NSString(data: data, encoding: NSASCIIStringEncoding)
                    self.display.text = theString! as String
                } else {
                    print(error!.localizedDescription)
                }
            }
        }
    }

}

