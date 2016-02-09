//
//  DetailViewController2.swift
//  NSNotificationPractice
//
//  Created by Jake Herrmann on 2/9/16.
//  Copyright © 2016 Jake Herrmann. All rights reserved.
//

import UIKit

class DetailViewController2: UIViewController {

    @IBOutlet weak var notfiyLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "notifcationWasRecieved", name: notificationKey, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "changeLabelColor", name: colorNotificationKey, object: nil)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func notifcationWasRecieved(){
        notfiyLabel.text = "Got it here!!"
    }
    
    func changeLabelColor(){
        notfiyLabel.backgroundColor = UIColor.redColor()

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
