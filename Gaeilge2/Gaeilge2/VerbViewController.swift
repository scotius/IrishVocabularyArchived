//
//  VerbViewController.swift
//  Gaeilge2
//
//  Created by Scott on 8/25/16.
//  Copyright © 2016 Scott. All rights reserved.
//

//
//  ViewController.swift
//  Gaeilge2
//
//  Created by Scott on 8/22/16.
//  Copyright © 2016 Scott. All rights reserved.
//

import UIKit
import CoreData

class VerbViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var verbs : [Verb] = []
    
    var selectedVerb : Verb? = nil
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let context = (UIApplication.shared.delegate as! AppDelegate).managedObjectContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Verb")
        var results : [AnyObject]?
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        do {
            results = try context.fetch(request)
        } catch _ {
            results = nil
        }
        
        if results != nil {
            self.verbs = results! as! [Verb]
            print(verbs)
        }
        loadData()
        self.tableView.reloadData()
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.verbs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let verb = self.verbs[(indexPath as NSIndexPath).row]
        cell.textLabel!.text = verb.name
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedVerb = self.verbs[(indexPath as NSIndexPath).row]
        self.performSegue(withIdentifier: "verbsToTenses", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "verbsToTenses"{
            let detailVC = segue.destination as! TenseViewController
            detailVC.verb = self.selectedVerb!
            
            
        }
    }
    
    func loadData() {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).managedObjectContext
        let verb = NSEntityDescription.insertNewObject(forEntityName: "Verb", into: context) as! Verb
        
//                        verb.conditional1s = "d'adhlacfainn"
//                        verb.conditional2s = "d'adhlacfá"
//                        verb.conditional3s = "d'adhlacfadh sé sí"
//                        verb.conditional1p = "d'adhlacfaimis"
//                        verb.conditional2p = "d'adhlacfadh sibh"
//                        verb.conditional3p = "d'adhlacfaidís"
//                        verb.conditionalImpersonal = "d'adhlacfaí"
//                        verb.eng = "bury"
//                        verb.future1s = "adhlacfaidh mé"
//                        verb.future2s = "adhlacfaidh tú"
//                        verb.future3s = "adhlacfaidh sé sí"
//                        verb.future1p = "adhlacfaimid"
//                        verb.future2p = "adhlacfaidh sibh"
//                        verb.future3p = "adhlacfaidh siad"
//                        verb.futureImpersonal = "adhlacfar"
//                        verb.habitualPast1s = "d'adhlacainn"
//                        verb.habitualPast2s = "d'adhlactá"
//                        verb.habitualPast3s = "d'adhlacadh sé sí"
//                        verb.habitualPast1p = "d'adhlacaimis"
//                        verb.habitualPast2p = "d'adhlacadh sibh"
//                        verb.habitualPast3p = "d'adhlacaidís"
//                        verb.habitualPastImpersonal = "d'adhlactaí"
//                        verb.imperatives = "adhlaic"
//                        verb.imperativep = "adhlacaigí"
//                        verb.name = "adhlaic"
//                        verb.pastParticiple = "adhlactha"
//                        verb.presentParticiple = "adhlacadh"
//                        verb.present1s = "adhlacaim"
//                        verb.present2s = "adhlacann tú"
//                        verb.present3s = "adhlacann sé sí"
//                        verb.present1p = "adhlacaimid"
//                        verb.present2p = "adhlacann sibh"
//                        verb.present3p = "adhlacann siad"
//                        verb.presentImpersonal = "adhlactar"
//                        verb.presentSubjunctive1s = "go n-adhlaca mé"
//                        verb.presentSubjunctive2s = "go n-adhlaca tú"
//                        verb.presentSubjunctive3s = "go n-adhlaca sé sí"
//                        verb.presentSubjunctive1p = "go n-adhlacaimid"
//                        verb.presentSubjunctive2p = "go n-adhlaca sibh"
//                        verb.presentSubjunctive3p = "go n-adhlaca siad"
//                        verb.presentSubjunctiveImpersonal = "go n-adhlactar"
//                        verb.simplePast1s = "d'adhlaic mé"
//                        verb.simplePast2s = "d'adhlaic tú"
//                        verb.simplePast3s = "d'adhlaic sé sí"
//                        verb.simplePast1p = "d'adhlacamar"
//                        verb.simplePast2p = "d'adhlaic sibh"
//                        verb.simplePast3p = "d'adhlaic siad"
//                        verb.simplePastImpersonal = "d'adhlacadar"
//        
        //
//                        verb.conditional1s = "d'admhóinn"
//                        verb.conditional2s = "d'admhófá"
//                        verb.conditional3s = "d'admhódh sé sí"
//                        verb.conditional1p = "d'admhóimis"
//                        verb.conditional2p = "d'admhódh sibh"
//                        verb.conditional3p = "d'admhóidís"
//                        verb.conditionalImpersonal = "d'admhófaí"
//                        verb.eng = "acknowledge, admit"
//                        verb.future1s = "admhóidh mé"
//                        verb.future2s = "admhóidh tú"
//                        verb.future3s = "admhóidh sé sí"
//                        verb.future1p = "admhóimid"
//                        verb.future2p = "admhóidh sibh"
//                        verb.future3p = "admhóidh siad"
//                        verb.futureImpersonal = "admhófar"
//                        verb.habitualPast1s = "d'admhaínn"
//                        verb.habitualPast2s = "d'admhaíteá"
//                        verb.habitualPast3s = "d'admhaíodh sé sí"
//                        verb.habitualPast1p = "d'admhaímis"
//                        verb.habitualPast2p = "d'admhaíodh sibh"
//                        verb.habitualPast3p = "d'admhaídís"
//                        verb.habitualPastImpersonal = "d'admhaítí"
//                        verb.imperatives = "admhaigh"
//                        verb.imperativep = "admhaígí"
//                        verb.name = "admhaigh"
//                        verb.pastParticiple = "adhlactha"
//                        verb.presentParticiple = "adhlacadh"
//                        verb.present1s = "admhaím"
//                        verb.present2s = "admhaíonn tú"
//                        verb.present3s = "admhaíonn sé sí"
//                        verb.present1p = "admhaímid"
//                        verb.present2p = "admhaíonn sibh"
//                        verb.present3p = "admhaíonn siad"
//                        verb.presentImpersonal = "admhaítear"
//                        verb.presentSubjunctive1s = "go n-admhaí mé"
//                        verb.presentSubjunctive2s = "go n-admhaí tú"
//                        verb.presentSubjunctive3s = "go n-admhaí sé sí"
//                        verb.presentSubjunctive1p = "go n-admhaímid"
//                        verb.presentSubjunctive2p = "go n-admhaí sibh"
//                        verb.presentSubjunctive3p = "go n-admhaí siad"
//                        verb.presentSubjunctiveImpersonal = "go n-admhaítear"
//                        verb.simplePast1s = "d'admhaigh mé"
//                        verb.simplePast2s = "d'admhaigh tú"
//                        verb.simplePast3s = "d'admhaigh sé sí"
//                        verb.simplePast1p = "d'admhaíomar"
//                        verb.simplePast2p = "d'admhaigh sibh"
//                        verb.simplePast3p = "d'admhaigh siad"
//                        verb.simplePastImpersonal = "d'admhaíodar"
//        
//                        verb.conditional1s = "bhácálfainn"
//                        verb.conditional2s = "bhácálfá"
//                        verb.conditional3s = "bhácálfadh sé sí"
//                        verb.conditional1p = "bhácálfaimis"
//                        verb.conditional2p = "bhácálfadh sibh"
//                        verb.conditional3p = "bhácálfaidís"
//                        verb.conditionalImpersonal = "bácálfaí"
//                        verb.eng = "bake"
//                        verb.future1s = "bácálfaidh mé"
//                        verb.future2s = "bácálfaidh tú"
//                        verb.future3s = "bácálfaidh sé sí"
//                        verb.future1p = "bácálfaimid"
//                        verb.future2p = "bácálfaidh sibh"
//                        verb.future3p = "bácálfaidh siad"
//                        verb.futureImpersonal = "bácálfar"
//                        verb.habitualPast1s = "bhácálainn"
//                        verb.habitualPast2s = "bhácáltá"
//                        verb.habitualPast3s = "bhácáladh sé sí"
//                        verb.habitualPast1p = "bhácálaimis"
//                        verb.habitualPast2p = "bhácáladh sibh"
//                        verb.habitualPast3p = "bhácálaidís"
//                        verb.habitualPastImpersonal = "bhácáltaí"
//                        verb.imperatives = "bácáil"
//                        verb.imperativep = "bácálaigí"
//                        verb.name = "bácáil"
//                        verb.pastParticiple = "bácálta"
//                        verb.presentParticiple = "bácáladh"
//                        verb.present1s = "bácálaim"
//                        verb.present2s = "bácálann tú"
//                        verb.present3s = "bácálann sé sí"
//                        verb.present1p = "bácálaimid"
//                        verb.present2p = "bácálann sibh"
//                        verb.present3p = "bácálann siad"
//                        verb.presentImpersonal = "bácáiltear"
//                        verb.presentSubjunctive1s = "go mbácála mé"
//                        verb.presentSubjunctive2s = "go mbácála tú"
//                        verb.presentSubjunctive3s = "go mbácála sé sí"
//                        verb.presentSubjunctive1p = "go mbácálaimid"
//                        verb.presentSubjunctive2p = "go mbácála sibh"
//                        verb.presentSubjunctive3p = "go mbácála siad"
//                        verb.presentSubjunctiveImpersonal = "go mbácáiltear"
//                        verb.simplePast1s = "bhácáil mé"
//                        verb.simplePast2s = "bhácáil tú"
//                        verb.simplePast3s = "bhácáil sé sí"
//                        verb.simplePast1p = "bhácálamar"
//                        verb.simplePast2p = "bhácáil sibh"
//                        verb.simplePast3p = "bhácáil siad"
//                        verb.simplePastImpersonal = "bácáladh"
//        
        //
//                verb.conditional1s = "d'ordóinn"
//                verb.conditional2s = "d'ordófá"
//                verb.conditional3s = "d'ordódh sé sí"
//                verb.conditional1p = "d'ordóimis"
//                verb.conditional2p = "d'ordódh sibh"
//                verb.conditional3p = "d'ordóidís"
//                verb.conditionalImpersonal = "d'ordófaí"
//                verb.eng = "order"
//                verb.future1s = "ordóidh mé"
//                verb.future2s = "ordóidh tú"
//                verb.future3s = "ordóidh sé sí"
//                verb.future1p = "ordóimid"
//                verb.future2p = "ordóidh sibh"
//                verb.future3p = "ordóidh siad"
//                verb.futureImpersonal = "ordófar"
//                verb.habitualPast1s = "d'ordaínn"
//                verb.habitualPast2s = "d'ordaíteá"
//                verb.habitualPast3s = "d'ordaíodh sé sí"
//                verb.habitualPast1p = "d'ordaímis"
//                verb.habitualPast2p = "d'ordaíodh sibh"
//                verb.habitualPast3p = "d'ordaídís"
//                verb.habitualPastImpersonal = "d'ordaítí"
//                verb.imperatives = "ordaigh"
//                verb.imperativep = "ordaígí"
//                verb.name = "ordaigh"
//                verb.pastParticiple = "ordaithe"
//                verb.presentParticiple = "ordú"
//                verb.present1s = "ordaím"
//                verb.present2s = "ordaíonn tú"
//                verb.present3s = "ordaíonn sé sí"
//                verb.present1p = "ordaímid"
//                verb.present2p = "ordaíonn sibh"
//                verb.present3p = "ordaíonn siad"
//                verb.presentImpersonal = "ordaítear"
//                verb.presentSubjunctive1s = "go n-ordaí mé"
//                verb.presentSubjunctive2s = "go n-ordaí tú"
//                verb.presentSubjunctive3s = "go n-ordaí sé sí"
//                verb.presentSubjunctive1p = "go n-ordaímid"
//                verb.presentSubjunctive2p = "go n-ordaí sibh"
//                verb.presentSubjunctive3p = "go n-ordaí siad"
//                verb.presentSubjunctiveImpersonal = "go n-ordaítear"
//                verb.simplePast1s = "d'ordaigh mé"
//                verb.simplePast2s = "d'ordaigh tú"
//                verb.simplePast3s = "d'ordaigh sé sí"
//                verb.simplePast1p = "d'ordaíomar"
//                verb.simplePast2p = "d'ordaigh sibh"
//                verb.simplePast3p = "d'ordaigh siad"
//                verb.simplePastImpersonal = "ordaíodh"
        
//                verb.name = "abair"   //infinitive
//                verb.pastParticiple = "ráite"  //verbal adjective (aidiacht bhriathartha)
//                verb.presentParticiple = "rá" //verbal noun (ainm briathartha)
//        
//                verb.simplePast1s = "dúirt mé"
//                verb.simplePast2s = "dúirt tú"
//                verb.simplePast3s = "dúirt sé sí"
//                verb.simplePast1p = "dúramar"
//                verb.simplePast2p = "dúirt sibh"
//                verb.simplePast3p = "dúirt siad"
//                verb.simplePastImpersonal = "ordaíodh"
//        
//        
//                verb.conditional1s = "d'ordóinn"
//                verb.conditional2s = "d'ordófá"
//                verb.conditional3s = "d'ordódh sé sí"
//                verb.conditional1p = "d'ordóimis"
//                verb.conditional2p = "d'ordódh sibh"
//                verb.conditional3p = "d'ordóidís"
//                verb.conditionalImpersonal = "d'ordófaí"
//                verb.eng = "order"
//                verb.future1s = "ordóidh mé"
//                verb.future2s = "ordóidh tú"
//                verb.future3s = "ordóidh sé sí"
//                verb.future1p = "ordóimid"
//                verb.future2p = "ordóidh sibh"
//                verb.future3p = "ordóidh siad"
//                verb.futureImpersonal = "ordófar"
//                verb.habitualPast1s = "d'ordaínn"
//                verb.habitualPast2s = "d'ordaíteá"
//                verb.habitualPast3s = "d'ordaíodh sé sí"
//                verb.habitualPast1p = "d'ordaímis"
//                verb.habitualPast2p = "d'ordaíodh sibh"
//                verb.habitualPast3p = "d'ordaídís"
//                verb.habitualPastImpersonal = "d'ordaítí"
//                verb.imperatives = "ordaigh"
//                verb.imperativep = "ordaígí"
//                verb.present1s = "ordaím"
//                verb.present2s = "ordaíonn tú"
//                verb.present3s = "ordaíonn sé sí"
//                verb.present1p = "ordaímid"
//                verb.present2p = "ordaíonn sibh"
//                verb.present3p = "ordaíonn siad"
//                verb.presentImpersonal = "ordaítear"
//                verb.presentSubjunctive1s = "go n-ordaí mé"
//                verb.presentSubjunctive2s = "go n-ordaí tú"
//                verb.presentSubjunctive3s = "go n-ordaí sé sí"
//                verb.presentSubjunctive1p = "go n-ordaímid"
//                verb.presentSubjunctive2p = "go n-ordaí sibh"
//                verb.presentSubjunctive3p = "go n-ordaí siad"
//                verb.presentSubjunctiveImpersonal = "go n-ordaítear"
        
        
        
        
        do {
            try context.save()
            
        } catch _ {
            
        }
        
        
    }
    
    
}
