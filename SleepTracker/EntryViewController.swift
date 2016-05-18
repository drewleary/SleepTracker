//
//  EntryViewController.swift
//  SleepTracker
//
//  Created by Drew Leary on 5/16/16.
//  Copyright © 2016 Drew Leary. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var timeAwakeLabel: UILabel!
    
    @IBOutlet weak var timeAsleepLabel: UILabel!
    
    @IBOutlet weak var happyLabel: UILabel!
    @IBOutlet weak var sadLabel: UILabel!
    @IBOutlet weak var angryLabel: UILabel!
    @IBOutlet weak var excitedLabel: UILabel!
    @IBOutlet weak var confusedLabel: UILabel!
    @IBOutlet weak var emotionalLabel: UILabel!
    @IBOutlet weak var frustratedLabel: UILabel!
    @IBOutlet weak var nervousLabel: UILabel!
    @IBOutlet weak var upsetLabel: UILabel!
    
    var titleStringViaSegue: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dateLabel.text = self.titleStringViaSegue
        timeAwakeLabel.text = SleepData.timeAwake
        timeAsleepLabel.text = SleepData.timeAsleep
    }
}
    
    

