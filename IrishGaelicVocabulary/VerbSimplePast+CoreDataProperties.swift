//
//  VerbSimplePast+CoreDataProperties.swift
//  IrishGaelicVocabulary
//
//  Created by Scott on 10/26/16.
//  Copyright © 2016 Scott. All rights reserved.
//

import Foundation
import CoreData


extension VerbSimplePast {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<VerbSimplePast> {
        return NSFetchRequest<VerbSimplePast>(entityName: "VerbSimplePast");
    }

    @NSManaged public var simplePast1_ind: String?
    @NSManaged public var simplePast1_interr: String?
    @NSManaged public var simplePast1_neg: String?
    @NSManaged public var simplePast2_ind: String?
    @NSManaged public var simplePast2_interr: String?
    @NSManaged public var simplePast2_neg: String?
    @NSManaged public var simplePast3_ind: String?
    @NSManaged public var simplePast3_interr: String?
    @NSManaged public var simplePast3_neg: String?
    @NSManaged public var simplePast4_1_ind: String?
    @NSManaged public var simplePast4_1_interr: String?
    @NSManaged public var simplePast4_1_neg: String?
    @NSManaged public var simplePast4_ind: String?
    @NSManaged public var simplePast4_interr: String?
    @NSManaged public var simplePast4_neg: String?
    @NSManaged public var simplePast5_ind: String?
    @NSManaged public var simplePast5_interr: String?
    @NSManaged public var simplePast5_neg: String?
    @NSManaged public var simplePast6_1_ind: String?
    @NSManaged public var simplePast6_1_interr: String?
    @NSManaged public var simplePast6_1_neg: String?
    @NSManaged public var simplePast6_ind: String?
    @NSManaged public var simplePast6_interr: String?
    @NSManaged public var simplePast6_neg: String?
    @NSManaged public var simplePastImpersonal_ind: String?
    @NSManaged public var simplePastImpersonal_interr: String?
    @NSManaged public var simplePastImpersonal_neg: String?
    @NSManaged public var infinitive: String?

}
