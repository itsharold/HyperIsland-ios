//
//  ViewController.swift
//  HI-Segue-Demo
//
//  Created by Sergii Nezdolii on 06/03/16.
//  Copyright © 2016 HyperIsland. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var valueTextField: UITextField!
    @IBOutlet weak var colorSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: UITextField delegate
    
    //Implementing this method allows to dismiss keyboard if Return (Enter) is used
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "TextSegue" {
            //Check if destination controller is of class we need
            guard segue.destinationViewController is CustomizedViewController else {
                return
            }
            
            //We need to class cast our destinationVC to be able to change its values
            let destinationVC = segue.destinationViewController as! CustomizedViewController
            destinationVC.textInput = valueTextField.text
            if(colorSegmentedControl.selectedSegmentIndex == 0)
            {
                destinationVC.textColor = UIColor.redColor()
            }
            if(colorSegmentedControl.selectedSegmentIndex == 1)
            {
                destinationVC.textColor = UIColor.greenColor()
            }
            if(colorSegmentedControl.selectedSegmentIndex == 2)
            {
                destinationVC.textColor = UIColor.blueColor()
            }
            destinationVC.shouldInputData = true
        }
    }

}

