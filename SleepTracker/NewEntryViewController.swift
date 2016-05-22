//
//  NewEntryViewController.swift
//  SleepTracker
//
//  Created by Drew Leary on 5/15/16.
//  Copyright © 2016 Drew Leary. All rights reserved.
//

import UIKit

class NewEntryViewController: UIViewController {

    
    var rootTableViewController: RootTableViewController?

    @IBOutlet weak var timeAsleep: UIDatePicker!
    @IBOutlet weak var timeChosenAsleep: UILabel!
    @IBAction func timeAsleepAction(sender: AnyObject) {
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy HH:mm"
        var strDate = dateFormatter.stringFromDate(timeAsleep.date)
        self.timeChosenAsleep.text = strDate
        SleepData.timeAsleep.append(strDate)
    }
    
    @IBOutlet weak var timeAwake: UIDatePicker!
    @IBOutlet weak var timeChosenAwake: UILabel!
    @IBAction func timeAwakeAction(sender: AnyObject) {
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy HH:mm"
        var strDate = dateFormatter.stringFromDate(timeAwake.date)
        self.timeChosenAwake.text = strDate
        SleepData.timeAwake.append(strDate)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
