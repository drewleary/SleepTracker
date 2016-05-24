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
    
    //override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //if let entryViewController = navigationController!.storyboard?.instantiateViewControllerWithIdentifier("showEntry") as? EntryViewController {
           // let detailsIndex = tableView.indexPathForSelectedRow?.row
            //entryViewController.sleepDataIndex = detailsIndex!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender:
        AnyObject?) {
        if (segue.identifier == "showEntry") {
            let upcoming = segue.destinationViewController as? EntryViewController
            let indexPath = self.tableView.indexPathForSelectedRow!
            //upcoming.titleStringViaSegue = titleString
            self.tableView.deselectRowAtIndexPath(indexPath, animated: true)
            upcoming?.sleepDataIndex = indexPath.row
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
