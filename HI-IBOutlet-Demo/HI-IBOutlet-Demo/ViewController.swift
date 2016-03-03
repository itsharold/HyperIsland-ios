//
//  ViewController.swift
//  HI-IBOutlet-Demo
//
//  Created by Sergii Nezdolii on 28/02/16.
//  Copyright © 2016 HyperIsland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Constants
    
    private let colors: [UIColor] = [
        UIColor.whiteColor(),
        UIColor.redColor(),
        UIColor.orangeColor(),
        UIColor.yellowColor(),
        UIColor.greenColor(),
        UIColor.cyanColor(),
        UIColor.blueColor(),
        UIColor.purpleColor()
    ]
    
    private let colorNames: [String] = [
        "white",
        "Red",
        "Orange",
        "Yellow",
        "Green",
        "Cyan",
        "Blue",
        "Purple"
    ]
    
    //MARK: IBOutlets
    
    @IBOutlet weak var changeButtonColor: UIButton!
    @IBOutlet weak var awesomeView: UIView!
    @IBOutlet weak var label: UILabel!

    
    //MARK: Properties
    
    var colorStepper: Int = 0
    
    //MARK: IBActions
    
    @IBAction func changeColor(sender: AnyObject?) {
        let colorIndex = colorStepper % colors.count
        
        awesomeView?.backgroundColor = colors[colorIndex]
        
        label?.textColor = colors[colorIndex]
        label?.text = colorNames[colorIndex]
        
        //increase our stepper
        colorStepper++
    }
    
    @IBAction func resetButton(sender: UIButton) {
        awesomeView?.backgroundColor = colors[0]
        label?.textColor = colors[0]
        label?.text = colorNames[0]
    }
    
    @IBAction func randomChangeColor(sender: AnyObject?) {
        let colorIndex = random() % colors.count
        
        awesomeView?.backgroundColor = colors[colorIndex]
    }

}

