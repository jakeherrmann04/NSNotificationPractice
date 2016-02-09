//
//  ViewController.swift
//  NSNotificationPractice
//
//  Created by Jake Herrmann on 2/9/16.
//  Copyright © 2016 Jake Herrmann. All rights reserved.
//

import UIKit

let notificationKey = "notifyKey"
let colorNotificationKey = "colorKey"

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func notifyButtonPressed(sender: AnyObject) {
        
        NSNotificationCenter.defaultCenter().postNotificationName(notificationKey, object: self)
    }
    @IBAction func changeColorButtonPressed(sender: AnyObject) {
        
        NSNotificationCenter.defaultCenter().postNotificationName(colorNotificationKey, object: self)
        
    }
}

