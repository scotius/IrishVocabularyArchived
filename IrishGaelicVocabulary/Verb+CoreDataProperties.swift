//
//  Verb+CoreDataProperties.swift
//  IrishGaelicVocabulary
//
//  Created by Scott on 10/26/16.
//  Copyright © 2016 Scott. All rights reserved.
//

import Foundation
import CoreData


extension Verb {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Verb> {
        return NSFetchRequest<Verb>(entityName: "Verb");
    }

    @NSManaged public var english: String?
    @NSManaged public var infinitive: String?
    @NSManaged public var verbalAdjective: String?
    @NSManaged public var verbalNoun: String?

}
