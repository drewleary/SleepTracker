//
//  RootTableViewController.swift
//  SleepTracker
//
//  Created by Drew Leary on 5/15/16.
//  Copyright © 2016 Drew Leary. All rights reserved.
//

import UIKit

class RootTableViewController: UITableViewController {
            
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SleepData.dates.count
    
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let aCell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell
        aCell.dateLabel.text = SleepData.dates[indexPath.row]
        return aCell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender:
        AnyObject?)
    {
        if (segue.identifier == "showView") {
            let upcoming: RootTableViewController = segue.destinationViewController as! RootTableViewController
            let indexPath = self.tableView.indexPathForSelectedRow!
            let titleString = SleepData.dates[indexPath.row]
            //upcoming.titleStringViaSegue = titleString
            self.tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        print("viewWillAppear")
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
