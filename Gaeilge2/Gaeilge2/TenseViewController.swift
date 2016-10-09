//
//  TenseViewController.swift
//  Gaeilge2
//
//  Created by Scott on 8/28/16.
//  Copyright © 2016 Scott. All rights reserved.
//

import UIKit

class TenseViewController: UITableViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    let verbTenseList = ["Present", "Past Habitual", "Future", "Conditional", "Present Subjunctive","Imperative", "Present Participle","Past Participle"]
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
        
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return self.verbTenseList.count
        return self.verbTenseList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "text"
        //cell.textLabel!.text = self.verbTenseList[indexPath.row]
        return cell
    }
    
    
    
    //    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    //        self.selectedNoun = self.nouns[indexPath.row]
    //        self.performSegueWithIdentifier("mainScreenToNoun", sender: self)
    //    }
    //
    //    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    //        if segue.identifier == "mainScreenToNoun"{
    //            let detailVC = segue.destinationViewController as! NounDetailViewController
    //            detailVC.noun = self.selectedNoun!
    //
    //        }
    //    }
    

}
