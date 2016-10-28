//
//  VerbHabitualPast+CoreDataProperties.swift
//  IrishGaelicVocabulary
//
//  Created by Scott on 10/26/16.
//  Copyright © 2016 Scott. All rights reserved.
//

import Foundation
import CoreData


extension VerbHabitualPast {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<VerbHabitualPast> {
        return NSFetchRequest<VerbHabitualPast>(entityName: "VerbHabitualPast");
    }

    @NSManaged public var habitualPast1_ind: String?
    @NSManaged public var habitualPast1_interr: String?
    @NSManaged public var habitualPast1_neg: String?
    @NSManaged public var habitualPast2_ind: String?
    @NSManaged public var habitualPast2_interr: String?
    @NSManaged public var habitualPast2_neg: String?
    @NSManaged public var habitualPast3_ind: String?
    @NSManaged public var habitualPast3_interr: String?
    @NSManaged public var habitualPast3_neg: String?
    @NSManaged public var habitualPast4_1_ind: String?
    @NSManaged public var habitualPast4_1_interr: String?
    @NSManaged public var habitualPast4_1_neg: String?
    @NSManaged public var habitualPast4_ind: String?
    @NSManaged public var habitualPast4_interr: String?
    @NSManaged public var habitualPast4_neg: String?
    @NSManaged public var habitualPast5_ind: String?
    @NSManaged public var habitualPast5_interr: String?
    @NSManaged public var habitualPast5_neg: String?
    @NSManaged public var habitualPast6_1_ind: String?
    @NSManaged public var habitualPast6_1_interr: String?
    @NSManaged public var habitualPast6_1_neg: String?
    @NSManaged public var habitualPast6_ind: String?
    @NSManaged public var habitualPast6_interr: String?
    @NSManaged public var habitualPast6_neg: String?
    @NSManaged public var habitualPastImpersonal_ind: String?
    @NSManaged public var habitualPastImpersonal_interr: String?
    @NSManaged public var habitualPastImpersonal_neg: String?
    @NSManaged public var infinitive: String?

}
