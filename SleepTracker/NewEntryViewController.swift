//
//  NewEntryViewController.swift
//  SleepTracker
//
//  Created by Drew Leary on 5/15/16.
//  Copyright © 2016 Drew Leary. All rights reserved.
//

import UIKit

class NewEntryViewController: UIViewController {

    @IBOutlet weak var timeAsleep: UIDatePicker!
    
    @IBOutlet weak var timeAwake: UIDatePicker!
    
    func timeSlept() {
        let timeSlept = timeAwake.date.timeIntervalSinceDate(timeAsleep.date)
        func stringFromTimeInterval(interval: NSTimeInterval) -> String {
            let interval = Int(interval)
            let seconds = interval % 60
            let minutes = (interval / 60) % 6
            let hours = (interval / 3600)
            return String(format: "%02d:%02d:%02d", hours, minutes, seconds)
        }
        let timeSleptString = stringFromTimeInterval(timeSlept)
        SleepData.timeSlept.append(timeSleptString)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy HH:mm"
        var strDateAwake = dateFormatter.stringFromDate(timeAwake.date)
        SleepData.timeAwake.append(strDateAwake)
        var strDateAsleep = dateFormatter.stringFromDate(timeAsleep.date)
        SleepData.timeAsleep.append(strDateAsleep)
        timeSlept()
        
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
