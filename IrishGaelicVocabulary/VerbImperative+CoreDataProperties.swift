//
//  VerbImperative+CoreDataProperties.swift
//  IrishGaelicVocabulary
//
//  Created by Scott on 10/26/16.
//  Copyright © 2016 Scott. All rights reserved.
//

import Foundation
import CoreData


extension VerbImperative {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<VerbImperative> {
        return NSFetchRequest<VerbImperative>(entityName: "VerbImperative");
    }

    @NSManaged public var imperative1_ind: String?
    @NSManaged public var imperative1_neg: String?
    @NSManaged public var imperative2_ind: String?
    @NSManaged public var imperative2_neg: String?
    @NSManaged public var imperative3_ind: String?
    @NSManaged public var imperative3_neg: String?
    @NSManaged public var imperative4_1_ind: String?
    @NSManaged public var imperative4_1_neg: String?
    @NSManaged public var imperative4_ind: String?
    @NSManaged public var imperative4_neg: String?
    @NSManaged public var imperative5_ind: String?
    @NSManaged public var imperative5_neg: String?
    @NSManaged public var imperative6_1_ind: String?
    @NSManaged public var imperative6_1_neg: String?
    @NSManaged public var imperative6_ind: String?
    @NSManaged public var imperative6_neg: String?
    @NSManaged public var imperativeImpersonal_ind: String?
    @NSManaged public var imperativeImpersonal_neg: String?
    @NSManaged public var infinitive: String?

}
