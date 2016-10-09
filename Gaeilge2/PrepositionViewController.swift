//
//  PrepositionViewController.swift
//  Gaeilge2
//
//  Created by Scott on 8/30/16.
//  Copyright © 2016 Scott. All rights reserved.
//

import UIKit
import CoreData

class PrepositionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    var prepositions : [Preposition] = []
    
    var selectedPreposition : Preposition? = nil
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let context = (UIApplication.shared.delegate as! AppDelegate).managedObjectContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Preposition")
        var results : [AnyObject]?
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        do {
            results = try context.fetch(request)
        } catch _ {
            results = nil
        }
        
        if results != nil {
            self.prepositions = results! as! [Preposition]
        }
        //loadData()
        self.tableView.reloadData()
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.prepositions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let preposition = self.prepositions[(indexPath as NSIndexPath).row]
        cell.textLabel!.text = preposition.name
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedPreposition = self.prepositions[(indexPath as NSIndexPath).row]
        self.performSegue(withIdentifier: "prepositionToPrepositionDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "prepositionToPrepositionDetail"{
            let detailVC = segue.destination as! PrepositionDetailViewController
            detailVC.detailPreposition = self.selectedPreposition!
            
        }
    }
    
    func loadData() {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).managedObjectContext
        let preposition = NSEntityDescription.insertNewObject(forEntityName: "Preposition", into: context) as! Preposition
//        preposition.name = "ag"
//        preposition.eng = "at"

//        preposition.name = "ar"
//        preposition.eng = "on"
//
//        preposition.name = "as"
//        preposition.eng = "out of, from"
//
        preposition.name = "chuig"
        preposition.eng = "to, towards"
//
//        preposition.name = "de"
//        preposition.eng = "from, of"
//
//        preposition.name = "do"
//        preposition.eng = "to, for"
//
//        preposition.name = "faoi"
//        preposition.eng = "under, about"
//
//        preposition.name = "gan"
//        preposition.eng = "without"
//
//        preposition.name = "i"
//        preposition.eng = "in"
//
//        preposition.name = "idir"
//        preposition.eng = "between"
//
//        preposition.name = "le"
//        preposition.eng = "with"
//
//        preposition.name = "ó"
//        preposition.eng = "from"
//        
//        preposition.name = "roimh"
//        preposition.eng = "before, in front of"
//        
//        preposition.name = "thar"
//        preposition.eng = "past, over, across"
//        
//        
//        preposition.name = "trí"
//        preposition.eng = "through"
//        
//        preposition.name = "um"
//        preposition.eng = "about"
        
        
        do {
            try context.save()
            
        } catch _ {
            
        }
        
        
    }
    
    
}
