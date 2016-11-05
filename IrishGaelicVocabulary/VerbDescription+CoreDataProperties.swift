//
//  VerbDescription+CoreDataProperties.swift
//  IrishGaelicVocabulary
//
//  Created by Scott on 11/3/16.
//  Copyright © 2016 Scott. All rights reserved.
//

import Foundation
import CoreData


extension VerbDescription {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<VerbDescription> {
        return NSFetchRequest<VerbDescription>(entityName: "VerbDescription");
    }

    @NSManaged public var english: String?
    @NSManaged public var infinitive: String?
    @NSManaged public var verbalAdjective: String?
    @NSManaged public var verbalNoun: String?

}
