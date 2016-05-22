//
//  EntryViewController.swift
//  SleepTracker
//
//  Created by Drew Leary on 5/16/16.
//  Copyright © 2016 Drew Leary. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {

    var sleepDataIndex = -1
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var timeAwakeLabel: UILabel!
    
    @IBOutlet weak var timeAsleepLabel: UILabel!
    
    @IBOutlet weak var hoursSleptLabel: UILabel!
    
    @IBOutlet weak var happyLabel: UILabel!
    @IBOutlet weak var sadLabel: UILabel!
    @IBOutlet weak var angryLabel: UILabel!
    @IBOutlet weak var excitedLabel: UILabel!
    @IBOutlet weak var confusedLabel: UILabel!
    @IBOutlet weak var emotionalLabel: UILabel!
    @IBOutlet weak var frustratedLabel: UILabel!
    @IBOutlet weak var nervousLabel: UILabel!
    @IBOutlet weak var upsetLabel: UILabel!
    
    let dateFormatter = NSDateFormatter()
    
    
    func mood() {
        if SleepData.mood[sleepDataIndex].contains("Happy") {
            happyLabel.text = "Happy"
        } else {
            happyLabel.text = ""
        }
        if SleepData.mood[sleepDataIndex].contains("Sad") {
            sadLabel.text = "Sad"
        } else {
            sadLabel.text = ""
        }
        if SleepData.mood[sleepDataIndex].contains("Angry") {
            angryLabel.text = "Angry"
        } else {
            angryLabel.text = ""
        }
        if SleepData.mood[sleepDataIndex].contains("Excited") {
            excitedLabel.text = "Excited"
        } else {
            excitedLabel.text = ""
        }
        if SleepData.mood[sleepDataIndex].contains("Confused") {
            confusedLabel.text = "Confused"
        } else {
            confusedLabel.text = ""
        }
        if SleepData.mood[sleepDataIndex].contains("Emotional") {
            emotionalLabel.text = "Emotional"
        } else {
            emotionalLabel.text = ""
        }
        if SleepData.mood[sleepDataIndex].contains("Frustrated") {
            frustratedLabel.text = "Frustrated"
        } else {
            frustratedLabel.text = ""
        }
        if SleepData.mood[sleepDataIndex].contains("Nervous") {
            nervousLabel.text = "Nervous"
        } else {
            nervousLabel.text = ""
        }
        if SleepData.mood[sleepDataIndex].contains("Upset") {
            upsetLabel.text = "Upset"
        } else {
            upsetLabel.text = ""
        }
        
    }
    
    var titleStringViaSegue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dateLabel.text = self.titleStringViaSegue
        timeAwakeLabel.text = SleepData.timeAwake[sleepDataIndex]
        timeAsleepLabel.text = SleepData.timeAsleep[sleepDataIndex]
    }
    
    override func viewDidAppear(animated: Bool) {
        mood()
    }
}
    
    

