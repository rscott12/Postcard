//
//  ViewController.swift
//  Postcard
//
//  Created by Raymond Scott on 9/20/14.
//  Copyright (c) 2014 Raymond Scott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enternameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    
    @IBOutlet weak var mailButton: UIButton!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        mailButton.backgroundColor = UIColor.greenColor()
    }
   
}

