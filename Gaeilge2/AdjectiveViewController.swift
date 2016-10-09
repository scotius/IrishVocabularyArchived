//
//  AdjectiveViewController.swift
//  Gaeilge2
//
//  Created by Scott on 8/30/16.
//  Copyright © 2016 Scott. All rights reserved.
//

import UIKit
import CoreData

class AdjectiveViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
   
    
    @IBOutlet weak var tableView: UITableView!
    var adjectives : [Adjective] = []
    
    var selectedAdjective : Adjective? = nil
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let context = (UIApplication.shared.delegate as! AppDelegate).managedObjectContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Adjective")
        var results : [AnyObject]?
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        do {
            results = try context.fetch(request)
        } catch _ {
            results = nil
        }
        
        if results != nil {
            self.adjectives = results! as! [Adjective]
        }
        //loadData()
        self.tableView.reloadData()
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.adjectives.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let adjective = self.adjectives[(indexPath as NSIndexPath).row]
        cell.textLabel!.text = adjective.name
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedAdjective = self.adjectives[(indexPath as NSIndexPath).row]
        self.performSegue(withIdentifier: "adjectiveToAdjectiveDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "adjectiveToAdjectiveDetail"{
            let detailVC = segue.destination as! AdjectiveDetailViewController
            detailVC.detailAdjective = self.selectedAdjective!
            
        }
    }
    
    func loadData() {
        
                let context = (UIApplication.shared.delegate as! AppDelegate).managedObjectContext
                let adjective = NSEntityDescription.insertNewObject(forEntityName: "Adjective", into: context) as! Adjective
        
//        adjective.name = "álainn"
//        adjective.eng = "beautiful"
//
//        adjective.name = "amh"
//        adjective.eng = "raw, uncooked"
//
//        adjective.name = "aoibhinn"
//        adjective.eng = "delightful"
//
        adjective.name = "ard"
        adjective.eng = "tall"
//
//        adjective.name = "beag"
//        adjective.eng = "small"
//
//        adjective.name = "domhain"
//        adjective.eng = "deep"
//
//        
//        adjective.name = "glan"
//        adjective.eng = "clean"
//
//        
//        adjective.name = "ramhar"
//        adjective.eng = "fat, thick"
//
//        adjective.name = "salach"
//        adjective.eng = "dirty"
//        
        
        
        do {
                    try context.save()
                    
                } catch _ {
                    
                }
                
                
    }
    
    
}

