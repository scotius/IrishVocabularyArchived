//
//  ViewController.swift
//  Gaeilge2
//
//  Created by Scott on 8/22/16.
//  Copyright © 2016 Scott. All rights reserved.
//

import UIKit
import CoreData

class NounViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
   
    var nouns : [Noun] = []
    
    var selectedNoun : Noun? = nil
    
    var words : [String] = []
    

    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let context = (UIApplication.shared.delegate as! AppDelegate).managedObjectContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Noun")
        var results : [AnyObject]?
        
        do {
            results = try context.fetch(request)
        } catch _ {
            results = nil
        }
        
        if results != nil {
            self.nouns = results! as! [Noun]
        }
        //loadData()
        self.tableView.reloadData()
        
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.nouns.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let noun = self.nouns[(indexPath as NSIndexPath).row]
        cell.textLabel!.text = noun.name
        return cell
    }
    
   
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedNoun = self.nouns[(indexPath as NSIndexPath).row]
        self.performSegue(withIdentifier: "mainScreenToNoun", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mainScreenToNoun"{
        let detailVC = segue.destination as! NounDetailViewController
        detailVC.noun = self.selectedNoun!
            
        }
    }
    
    func loadData() {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).managedObjectContext
        let noun = NSEntityDescription.insertNewObject(forEntityName: "Noun", into: context) as! Noun
//       
//        noun.name = "ábhar"
//        noun.gs = "ábhair"
//        noun.np = "ábhair"
//        noun.gp = "ábhar"
//        noun.eng = "matter, form"
//        noun.gender = "m"
//        noun.declension = "1"
        
//        noun.name = "adhmad"
//        noun.gs = "adhmaid"
//        noun.np = "adhmaid"
//        noun.gp = "adhmad"
//        noun.eng = "wood, timber"
//        noun.gender = "m"
//        noun.declension = "1"
//
//        noun.name = "carr"
//        noun.gs = "cairr"
//        noun.np = "cairr"
//        noun.gp = "carr"
//        noun.eng = "car"
//        noun.gender = "m"
//        noun.declension = "1"
//
        noun.name = "difríocht"
        noun.gs = "difríochta"
        noun.np = "difríochtaí"
        noun.gp = "difríochtaí"
        noun.eng = "difference"
        noun.gender = "f"
        noun.declension = "3"
//
//        noun.name = "eachtra"
//        noun.gs = "eachtra"
//        noun.np = "eachtraí"
//        noun.gp = "eachtraí"
//        noun.eng = "adventure"
//        noun.gender = "f"
//        noun.declension = "4"
//
//        noun.name = "eachtra"
//        noun.gs = "eachtra"
//        noun.np = "eachtraí"
//        noun.gp = "eachtraí"
//        noun.eng = "adventure"
//        noun.gender = "f"
//        noun.declension = "4"
//
//        noun.name = "focal"
//        noun.gs = "focail"
//        noun.np = "focail"
//        noun.gp = "focal"
//        noun.eng = "word"
//        noun.gender = "m"
//        noun.declension = "1"
//
//        noun.name = "uimhir"
//        noun.gs = "uimhreach"
//        noun.np = "uimhreacha"
//        noun.gp = "uimhreacha"
//        noun.eng = "number"
//        noun.gender = "f"
//        noun.declension = "5"
        
                do {
                    try context.save()
                    
        } catch _ {
            
        }
        
        
   }


}

