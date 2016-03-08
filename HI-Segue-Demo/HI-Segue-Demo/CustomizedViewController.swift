//
//  CustomizedViewController.swift
//  HI-Segue-Demo
//
//  Created by Harold Henckell on 08/03/16.
//  Copyright © 2016 HyperIsland. All rights reserved.
//

import UIKit

class CustomizedViewController: UIViewController {
    
    var shouldInputData: Bool?
    var textInput: String?
    var textColor: UIColor!

    @IBOutlet weak var labelOutput: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let textData = textInput else {
            return
        }
        guard let textColorData = textColor else {
            return
        }
        
        if shouldInputData == true {
            labelOutput.text = textData
            labelOutput.textColor = textColorData
        } else {
            labelOutput.text = "write something first mf!"
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
