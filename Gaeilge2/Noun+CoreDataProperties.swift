//
//  Noun+CoreDataProperties.swift
//  Gaeilge2
//
//  Created by Scott on 8/27/16.
//  Copyright © 2016 Scott. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Noun {

    @NSManaged var declension: String?
    @NSManaged var eng: String?
    @NSManaged var gender: String?
    @NSManaged var gp: String?
    @NSManaged var gs: String?
    @NSManaged var name: String?
    @NSManaged var np: String?

}
