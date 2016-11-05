//
//  VerbTenseViewController.swift
//  IrishGaelicVocabulary
//
//  Created by Scott on 11/2/16.
//  Copyright © 2016 Scott. All rights reserved.
//

//
//  File.swift
//  Gaeilge2
//
//  Created by Scott on 8/28/16.
//  Copyright © 2016 Scott. All rights reserved.
//



import UIKit
import Foundation

class VerbTenseViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    
    @IBOutlet weak var infinitiveLabel: UILabel!
    
    
    @IBOutlet weak var englishLabel: UILabel!
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    let verbTenseList = ["Present", "Simple Past", "Habitual Past", "Future", "Conditional", "Present Subjunctive","Imperative", "Verbal Noun","Verbal Adjective"]
    
    var verb : Verb? = nil
    var verbSimplePast : VerbSimplePast? = nil
    var verbPresent : VerbPresent? = nil
    var verbFuture : VerbFuture? = nil
    var verbConditional : VerbConditional? = nil
    var verbHabitualPast : VerbHabitualPast? = nil
    
    var selectedTense: String = ""
    
    var verbParts : [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.infinitiveLabel.text = self.verb!.infinitive
        self.englishLabel.text = self.verb!.english
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
                    
                case "Simple Past" :
                    
                    self.verbParts.append((verbSimplePast?.simplePast1_ind)!)
                    self.verbParts.append((verbSimplePast?.simplePast1_interr)!)
                    self.verbParts.append((verbSimplePast?.simplePast1_neg)!)
                    self.verbParts.append((verbSimplePast?.simplePast2_ind)!)
                    self.verbParts.append((verbSimplePast?.simplePast2_interr)!)
                    self.verbParts.append((verbSimplePast?.simplePast2_neg)!)
                    self.verbParts.append((verbSimplePast?.simplePast3_ind)!)
                    self.verbParts.append((verbSimplePast?.simplePast3_interr)!)
                    self.verbParts.append((verbSimplePast?.simplePast3_neg)!)
                    self.verbParts.append((verbSimplePast?.simplePast4_ind)!)
                    self.verbParts.append((verbSimplePast?.simplePast4_interr)!)
                    self.verbParts.append((verbSimplePast?.simplePast4_neg)!)
                    self.verbParts.append((verbSimplePast?.simplePast4_1_ind)!)
                    self.verbParts.append((verbSimplePast?.simplePast4_1_interr)!)
                    self.verbParts.append((verbSimplePast?.simplePast4_1_neg)!)
                    self.verbParts.append((verbSimplePast?.simplePast5_ind)!)
                    self.verbParts.append((verbSimplePast?.simplePast5_interr)!)
                    self.verbParts.append((verbSimplePast?.simplePast5_neg)!)
                    self.verbParts.append((verbSimplePast?.simplePast6_ind)!)
                    self.verbParts.append((verbSimplePast?.simplePast6_interr)!)
                    self.verbParts.append((verbSimplePast?.simplePast6_neg)!)
                    self.verbParts.append((verbSimplePast?.simplePast6_1_ind)!)
                    self.verbParts.append((verbSimplePast?.simplePast6_1_interr)!)
                    self.verbParts.append((verbSimplePast?.simplePast6_1_neg)!)
                    self.verbParts.append((verbSimplePast?.simplePastImpersonal_ind)!)
                    self.verbParts.append((verbSimplePast?.simplePastImpersonal_interr)!)
                    self.verbParts.append((verbSimplePast?.simplePastImpersonal_neg)!)
                    
                case "Present" :
                    self.verbParts.append((verbPresent?.present1_ind)!)
                    self.verbParts.append((verbPresent?.present1_interr)!)
                    self.verbParts.append((verbPresent?.present1_neg)!)
                    self.verbParts.append((verbPresent?.present2_ind)!)
                    self.verbParts.append((verbPresent?.present2_interr)!)
                    self.verbParts.append((verbPresent?.present2_neg)!)
                    self.verbParts.append((verbPresent?.present3_ind)!)
                    self.verbParts.append((verbPresent?.present3_interr)!)
                    self.verbParts.append((verbPresent?.present3_neg)!)
                    self.verbParts.append((verbPresent?.present4_ind)!)
                    self.verbParts.append((verbPresent?.present4_interr)!)
                    self.verbParts.append((verbPresent?.present4_neg)!)
                    self.verbParts.append((verbPresent?.present4_1_ind)!)
                    self.verbParts.append((verbPresent?.present4_1_interr)!)
                    self.verbParts.append((verbPresent?.present4_1_neg)!)
                    self.verbParts.append((verbPresent?.present5_ind)!)
                    self.verbParts.append((verbPresent?.present5_interr)!)
                    self.verbParts.append((verbPresent?.present5_neg)!)
                    self.verbParts.append((verbPresent?.present6_ind)!)
                    self.verbParts.append((verbPresent?.present6_interr)!)
                    self.verbParts.append((verbPresent?.present6_neg)!)
                    self.verbParts.append((verbPresent?.presentImpersonal_ind)!)
                    self.verbParts.append((verbPresent?.presentImpersonal_interr)!)
                    self.verbParts.append((verbPresent?.presentImpersonal_neg)!)
                    
                case "Future" :
                    self.verbParts.append((verbFuture?.future1_ind)!)
                    self.verbParts.append((verbFuture?.future1_interr)!)
                    self.verbParts.append((verbFuture?.future1_neg)!)
                    self.verbParts.append((verbFuture?.future2_ind)!)
                    self.verbParts.append((verbFuture?.future2_interr)!)
                    self.verbParts.append((verbFuture?.future2_neg)!)
                    self.verbParts.append((verbFuture?.future3_ind)!)
                    self.verbParts.append((verbFuture?.future3_interr)!)
                    self.verbParts.append((verbFuture?.future3_neg)!)
                    self.verbParts.append((verbFuture?.future4_ind)!)
                    self.verbParts.append((verbFuture?.future4_interr)!)
                    self.verbParts.append((verbFuture?.future4_neg)!)
                    self.verbParts.append((verbFuture?.future4_1_ind)!)
                    self.verbParts.append((verbFuture?.future4_1_interr)!)
                    self.verbParts.append((verbFuture?.future4_1_neg)!)
                    self.verbParts.append((verbFuture?.future5_ind)!)
                    self.verbParts.append((verbFuture?.future5_interr)!)
                    self.verbParts.append((verbFuture?.future5_neg)!)
                    self.verbParts.append((verbFuture?.future6_ind)!)
                    self.verbParts.append((verbFuture?.future6_interr)!)
                    self.verbParts.append((verbFuture?.future6_neg)!)
                    self.verbParts.append((verbFuture?.futureImpersonal_ind)!)
                    self.verbParts.append((verbFuture?.futureImpersonal_interr)!)
                    self.verbParts.append((verbFuture?.futureImpersonal_neg)!)
        //
                case "Habitual Past" :
                    self.verbParts.append((verbHabitualPast?.habitualPast1_ind)!)
                    self.verbParts.append((verbHabitualPast?.habitualPast1_interr)!)
                    self.verbParts.append((verbHabitualPast?.habitualPast1_neg)!)
                    self.verbParts.append((verbHabitualPast?.habitualPast2_ind)!)
                    self.verbParts.append((verbHabitualPast?.habitualPast2_interr)!)
                    self.verbParts.append((verbHabitualPast?.habitualPast2_neg)!)
                    self.verbParts.append((verbHabitualPast?.habitualPast3_ind)!)
                    self.verbParts.append((verbHabitualPast?.habitualPast3_interr)!)
                    self.verbParts.append((verbHabitualPast?.habitualPast3_neg)!)
                    self.verbParts.append((verbHabitualPast?.habitualPast4_ind)!)
                    self.verbParts.append((verbHabitualPast?.habitualPast4_interr)!)
                    self.verbParts.append((verbHabitualPast?.habitualPast4_neg)!)
                    self.verbParts.append((verbHabitualPast?.habitualPast4_1_ind)!)
                    self.verbParts.append((verbHabitualPast?.habitualPast4_1_interr)!)
                    self.verbParts.append((verbHabitualPast?.habitualPast4_1_neg)!)
                    self.verbParts.append((verbHabitualPast?.habitualPast5_ind)!)
                    self.verbParts.append((verbHabitualPast?.habitualPast5_interr)!)
                    self.verbParts.append((verbHabitualPast?.habitualPast5_neg)!)
                    self.verbParts.append((verbHabitualPast?.habitualPast6_ind)!)
                    self.verbParts.append((verbHabitualPast?.habitualPast6_interr)!)
                    self.verbParts.append((verbHabitualPast?.habitualPast6_neg)!)
                    self.verbParts.append((verbHabitualPast?.habitualPast6_1_ind)!)
                    self.verbParts.append((verbHabitualPast?.habitualPast6_1_interr)!)
                    self.verbParts.append((verbHabitualPast?.habitualPast6_1_neg)!)
                    self.verbParts.append((verbHabitualPast?.habitualPastImpersonal_ind)!)
                    self.verbParts.append((verbHabitualPast?.habitualPastImpersonal_interr)!)
                    self.verbParts.append((verbHabitualPast?.habitualPastImpersonal_neg)!)
        //
          
                case "Conditional" :
                    self.verbParts.append((verbConditional?.conditional1_ind)!)
                    self.verbParts.append((verbConditional?.conditional1_interr)!)
                    self.verbParts.append((verbConditional?.conditional1_neg)!)
                    self.verbParts.append((verbConditional?.conditional2_ind)!)
                    self.verbParts.append((verbConditional?.conditional2_interr)!)
                    self.verbParts.append((verbConditional?.conditional2_neg)!)
                    self.verbParts.append((verbConditional?.conditional3_ind)!)
                    self.verbParts.append((verbConditional?.conditional3_interr)!)
                    self.verbParts.append((verbConditional?.conditional3_neg)!)
                    self.verbParts.append((verbConditional?.conditional4_ind)!)
                    self.verbParts.append((verbConditional?.conditional4_interr)!)
                    self.verbParts.append((verbConditional?.conditional4_neg)!)
                    self.verbParts.append((verbConditional?.conditional4_1_ind)!)
                    self.verbParts.append((verbConditional?.conditional4_1_interr)!)
                    self.verbParts.append((verbConditional?.conditional4_1_neg)!)
                    self.verbParts.append((verbConditional?.conditional5_ind)!)
                    self.verbParts.append((verbConditional?.conditional5_interr)!)
                    self.verbParts.append((verbConditional?.conditional5_neg)!)
                    self.verbParts.append((verbConditional?.conditional6_ind)!)
                    self.verbParts.append((verbConditional?.conditional6_interr)!)
                    self.verbParts.append((verbConditional?.conditional6_neg)!)
                    self.verbParts.append((verbConditional?.conditional6_1_ind)!)
                    self.verbParts.append((verbConditional?.conditional6_1_interr)!)
                    self.verbParts.append((verbConditional?.conditional6_1_neg)!)
                    self.verbParts.append((verbConditional?.conditionalImpersonal_ind)!)
                    self.verbParts.append((verbConditional?.conditionalImpersonal_interr)!)
                    self.verbParts.append((verbConditional?.conditionalImpersonal_neg)!)
        //        case "Present Subjunctive" :
        //            self.verbParts.append((verb?.presentSubjunctive1s)!)
        //            self.verbParts.append((verb?.presentSubjunctive2s)!)
        //            self.verbParts.append((verb?.presentSubjunctive3s)!)
        //            self.verbParts.append((verb?.presentSubjunctive1p)!)
        //            self.verbParts.append((verb?.presentSubjunctive2p)!)
        //            self.verbParts.append((verb?.presentSubjunctive3p)!)
        //            self.verbParts.append((verb?.presentSubjunctiveImpersonal)!)
        //        case "Imperative" :
        //            self.verbParts.append((verb?.imperatives)!)
        //            self.verbParts.append((verb?.imperativep)!)
                case "Verbal Noun" :
                   self.verbParts.append((verb?.verbalNoun)!)
                case "Verbal Adjective" :
                    self.verbParts.append((verb?.verbalAdjective)!)
                    
                default :
                    self.verbParts.append("Error in pulling information")
                    
                    
                }
        
    
        
    }
}
