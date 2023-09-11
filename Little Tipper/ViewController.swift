//
//  ViewController.swift
//  Little Tipper
//
//  Created by ANNAHLU RACLAWSKI on 8/30/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBOutlet weak var amountOutlet: UILabel!
    
    @IBOutlet weak var billAmountOutlet: UITextField!
    
    @IBOutlet weak var tipAmountOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        billAmountOutlet.delegate = self
        tipAmountOutlet.delegate = self
    }

    @IBAction func calculateAction(_ sender: UIButton) {
        let amount = billAmountOutlet.text!
        let tip = tipAmountOutlet.text
        let percentage = Double(tip!)! / 100
        let total = Double(amount)! * percentage
        amountOutlet.text = "\(total)"
        imageOutlet.image = UIImage(named: "images")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        billAmountOutlet.resignFirstResponder()
        tipAmountOutlet.resignFirstResponder()
        
        return true
    }
    
}

