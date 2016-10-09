//
//  AdverbViewController.swift
//  Gaeilge2
//
//  Created by Scott on 8/30/16.
//  Copyright © 2016 Scott. All rights reserved.
//

import UIKit
import CoreData

class AdverbViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
   
    @IBOutlet weak var tableView: UITableView!
    var adverbs : [Adverb] = []
    
    var selectedAdverb : Adverb? = nil
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let context = (UIApplication.shared.delegate as! AppDelegate).managedObjectContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Adverb")
        var results : [AnyObject]?
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        do {
            results = try context.fetch(request)
        } catch _ {
            results = nil
        }
        
        if results != nil {
            self.adverbs = results! as! [Adverb]
        }
        //loadData()
        self.tableView.reloadData()
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.adverbs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let adverb = self.adverbs[(indexPath as NSIndexPath).row]
        cell.textLabel!.text = adverb.name
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedAdverb = self.adverbs[(indexPath as NSIndexPath).row]
        self.performSegue(withIdentifier: "adverbToAdverbDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "adverbToAdverbDetail"{
            let detailVC = segue.destination as! AdverbDetailViewController
            detailVC.detailAdverb = self.selectedAdverb!
            
        }
    }
    
    func loadData() {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).managedObjectContext
        let adverb = NSEntityDescription.insertNewObject(forEntityName: "Adverb", into: context) as! Adverb
//        adverb.name = "amárach"
//        adverb.eng = "tomorrow"
//
//        adverb.name = "anois"
//        adverb.eng = "now"
//
//        adverb.name = "feasta"
//        adverb.eng = "from now on"
//
        adverb.name = "fós"
        adverb.eng = "yet, still"
//
//        adverb.name = "go ciúin"
//        adverb.eng = "quietly"
        
        
        
        do {
            try context.save()
            
        } catch _ {
            
        }
        
        
    }
    
    
}


