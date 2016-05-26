//
//  NewEntryTwoViewController.swift
//  SleepTracker
//
//  Created by Drew Leary on 5/15/16.
//  Copyright © 2016 Drew Leary. All rights reserved.
//

import UIKit

class NewEntryTwoViewController: UIViewController {
    
    var moodData = [String]()
    
    @IBOutlet weak var confused: UIButton!
    @IBOutlet weak var happy: UIButton!
    @IBOutlet weak var angry: UIButton!
    @IBOutlet weak var sad: UIButton!
    @IBOutlet weak var excited: UIButton!
    @IBOutlet weak var emotional: UIButton!
    @IBOutlet weak var frustrated: UIButton!
    @IBOutlet weak var nervous: UIButton!
    @IBOutlet weak var upset: UIButton!
    
    @IBAction func confusedButton(sender: UIButton) {
        confused.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        moodData.insert("Confused", atIndex:0)
    }
    
    @IBAction func happyButton(sender: UIButton) {
        happy.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        moodData.insert("Happy", atIndex: 0)
    }
    
    @IBAction func angryButton(sender: UIButton) {
        angry.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        moodData.insert("Angry", atIndex: 0)
    }
    
    @IBAction func sadButton(sender: UIButton) {
        sad.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        moodData.insert("Sad", atIndex: 0)
    }
    
    @IBAction func excitedButton(sender: UIButton) {
        excited.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        moodData.insert("Excited", atIndex: 0)
    }
    
    @IBAction func emotionalButton(sender: UIButton) {
        emotional.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        moodData.insert("Emotional", atIndex: 0)
    }
    
    @IBAction func frustratedButton(sender: UIButton) {
        frustrated.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        moodData.insert("Frustrated", atIndex: 0)
    }
    
    @IBAction func nervousButton(sender: UIButton) {
        nervous.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        moodData.insert("Nervous", atIndex: 0)
    }
    
    @IBAction func upsetButton(sender: UIButton) {
        var firstTimePressed: Bool = true
        if firstTimePressed == true {
            firstTimePressed = false
            upset.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
            moodData.insert("Upset", atIndex: 0)
        } else if firstTimePressed == false{
            upset.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
            moodData.removeAtIndex(moodData.indexOf("Upset")!)
            firstTimePressed = true
        }
        
    }
    
    @IBOutlet weak var customMood: UITextField!
    
    @IBAction func addCustomMood(sender: UIButton) {
        moodData.insert(customMood.text!, atIndex: 0)
        customMood.text = ""
    }
    @IBAction func doneButtonPressed(sender: UIButton) {
        var todaysDate = NSDate()
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy"
        var strDate = dateFormatter.stringFromDate(todaysDate)
        SleepData.dates.append(strDate)
        SleepData.mood.append(moodData)
        if self.customMood.text?.isEmpty != true {
            moodData.insert(self.customMood.text!, atIndex: 0)
        }

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
}