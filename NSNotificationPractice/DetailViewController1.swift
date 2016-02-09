//
//  DetailViewController1.swift
//  NSNotificationPractice
//
//  Created by Jake Herrmann on 2/9/16.
//  Copyright © 2016 Jake Herrmann. All rights reserved.
//

import UIKit

class DetailViewController1: UIViewController {

    @IBOutlet weak var notificationLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "notificationRecieved", name: notificationKey, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "changeColor", name: colorNotificationKey, object: nil)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func notificationRecieved(){

        notificationLabel.text = "We got the notification!"
    }
    
    func changeColor(){
        view.backgroundColor = UIColor.lightGrayColor()
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
