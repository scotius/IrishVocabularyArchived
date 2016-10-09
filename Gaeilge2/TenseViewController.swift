//
//  File.swift
//  Gaeilge2
//
//  Created by Scott on 8/28/16.
//  Copyright © 2016 Scott. All rights reserved.
//



import UIKit
import Foundation

class TenseViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
  
    @IBOutlet weak var englishLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    let verbTenseList = ["Present", "Past Habitual", "Future", "Conditional", "Present Subjunctive","Imperative", "Present Participle","Past Participle"]
    
    var verb : Verb? = nil
    
    var selectedTense: String = ""
    
    var verbParts : [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = self.verb!.name
        self.englishLabel.text = self.verb!.eng
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.verbTenseList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell = UITableViewCell()
                cell.textLabel!.text = self.verbTenseList[(indexPath as NSIndexPath).row]
                return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.verbParts.removeAll()
        self.selectedTense = self.verbTenseList[(indexPath as NSIndexPath).row]
        verbOutput()
        self.performSegue(withIdentifier: "verbTenseToVerbDetail", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "verbTenseToVerbDetail"{
            let detailVC = segue.destination as! VerbDetailViewController
            
            detailVC.detailVerbParts = self.verbParts
           
           
            
            
        }
    }
    
    
    func verbOutput () {
        switch self.selectedTense {
        case "Present" :
            self.verbParts.append((verb?.present1s)!)
            self.verbParts.append((verb?.present2s)!)
            self.verbParts.append((verb?.present3s)!)
            self.verbParts.append((verb?.present1p)!)
            self.verbParts.append((verb?.present2p)!)
            self.verbParts.append((verb?.present3p)!)
            self.verbParts.append((verb?.presentImpersonal)!)
            
        case "Past Habitual" :
            self.verbParts.append((verb?.habitualPast1s)!)
            self.verbParts.append((verb?.habitualPast2s)!)
            self.verbParts.append((verb?.habitualPast3s)!)
            self.verbParts.append((verb?.habitualPast1p)!)
            self.verbParts.append((verb?.habitualPast2p)!)
            self.verbParts.append((verb?.habitualPast3p)!)
            self.verbParts.append((verb?.habitualPastImpersonal)!)
            
        case "Future" :
            self.verbParts.append((verb?.future1s)!)
            self.verbParts.append((verb?.future2s)!)
            self.verbParts.append((verb?.future3s)!)
            self.verbParts.append((verb?.future1p)!)
            self.verbParts.append((verb?.future2p)!)
            self.verbParts.append((verb?.future3p)!)
            self.verbParts.append((verb?.futureImpersonal)!)
        case "Conditional" :
            self.verbParts.append((verb?.conditional1s)!)
            self.verbParts.append((verb?.conditional2s)!)
            self.verbParts.append((verb?.conditional3s)!)
            self.verbParts.append((verb?.conditional1p)!)
            self.verbParts.append((verb?.conditional2p)!)
            self.verbParts.append((verb?.conditional3p)!)
            self.verbParts.append((verb?.conditionalImpersonal)!)
        case "Present Subjunctive" :
            self.verbParts.append((verb?.presentSubjunctive1s)!)
            self.verbParts.append((verb?.presentSubjunctive2s)!)
            self.verbParts.append((verb?.presentSubjunctive3s)!)
            self.verbParts.append((verb?.presentSubjunctive1p)!)
            self.verbParts.append((verb?.presentSubjunctive2p)!)
            self.verbParts.append((verb?.presentSubjunctive3p)!)
            self.verbParts.append((verb?.presentSubjunctiveImpersonal)!)
        case "Imperative" :
            self.verbParts.append((verb?.imperatives)!)
            self.verbParts.append((verb?.imperativep)!)
        case "Present Participle" :
            self.verbParts.append((verb?.presentParticiple)!)
        case "Past Participle" :
            self.verbParts.append((verb?.pastParticiple)!)
            
        default :
            self.verbParts.append("Error in pulling information")
            
            
        }
    }

    
}

