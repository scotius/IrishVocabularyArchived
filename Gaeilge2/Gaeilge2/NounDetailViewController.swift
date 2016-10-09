//
//  NounViewController.swift
//  Gaeilge2
//
//  Created by Scott on 8/22/16.
//  Copyright © 2016 Scott. All rights reserved.
//

import UIKit

class NounDetailViewController: UIViewController {
    
    @IBOutlet weak var nsLabel: UILabel!
    
    
    @IBOutlet weak var npLabel: UILabel!
    
    @IBOutlet weak var gsLabel: UILabel!
    
    @IBOutlet weak var gpLabel: UILabel!
    
    @IBOutlet weak var gender: UILabel!
    
    @IBOutlet weak var declension: UILabel!
    
    
    @IBOutlet weak var englishLabel: UILabel!
    
    var noun : Noun? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nsLabel.text = self.noun!.name
        self.gsLabel.text = self.noun!.gs
        self.npLabel.text = self.noun!.np
        self.gpLabel.text = self.noun!.gp
        self.gender.text = self.noun!.gender
        self.declension.text = self.noun!.declension
        self.englishLabel.text = self.noun!.eng
    }

}
