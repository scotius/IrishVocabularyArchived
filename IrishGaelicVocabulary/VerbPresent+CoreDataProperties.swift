//
//  VerbPresent+CoreDataProperties.swift
//  IrishGaelicVocabulary
//
//  Created by Scott on 10/26/16.
//  Copyright © 2016 Scott. All rights reserved.
//

import Foundation
import CoreData


extension VerbPresent {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<VerbPresent> {
        return NSFetchRequest<VerbPresent>(entityName: "VerbPresent");
    }

    @NSManaged public var present1_ind: String?
    @NSManaged public var present1_interr: String?
    @NSManaged public var present1_neg: String?
    @NSManaged public var present2_ind: String?
    @NSManaged public var present2_interr: String?
    @NSManaged public var present2_neg: String?
    @NSManaged public var present3_ind: String?
    @NSManaged public var present3_interr: String?
    @NSManaged public var present3_neg: String?
    @NSManaged public var present4_1_ind: String?
    @NSManaged public var present4_1_interr: String?
    @NSManaged public var present4_1_neg: String?
    @NSManaged public var present4_ind: String?
    @NSManaged public var present4_interr: String?
    @NSManaged public var present4_neg: String?
    @NSManaged public var present5_ind: String?
    @NSManaged public var present5_interr: String?
    @NSManaged public var present5_neg: String?
    @NSManaged public var present6_ind: String?
    @NSManaged public var present6_interr: String?
    @NSManaged public var present6_neg: String?
    @NSManaged public var presentImpersonal_ind: String?
    @NSManaged public var presentImpersonal_interr: String?
    @NSManaged public var presentImpersonal_neg: String?
    @NSManaged public var infinitive: String?

}
