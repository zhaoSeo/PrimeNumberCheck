//
//  ViewController.swift
//  PrimeNumberCheck
//
//  Created by Sang won Seo on 2018. 3. 28..
//  Copyright © 2018년 Sang won Seo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var txtInputNumber: UITextField!
    @IBOutlet weak var Answer: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtInputNumber.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    @IBAction func CheckPrimeNumber(_ sender: UIButton) {
        let number = Int(txtInputNumber.text!)
        var isPrime = true
        
        if number == 1 {
            isPrime = false
        }
        if number != 1 && number != 2 {
            for i in 2 ..< number! {
                if number! % i == 0 {
                    isPrime = false
                }
            }
        }
        if isPrime == true {
            Answer.text = "Prime Number"
        } else {
            Answer.text = "Not Prime Number"
        }
    }
    @IBAction func ResetTextview(_ sender: UIButton) {
        txtInputNumber.text = ""
        Answer.text = "Answer"
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    

}

