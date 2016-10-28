//
//  VerbConditional+CoreDataProperties.swift
//  IrishGaelicVocabulary
//
//  Created by Scott on 10/26/16.
//  Copyright © 2016 Scott. All rights reserved.
//

import Foundation
import CoreData


extension VerbConditional {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<VerbConditional> {
        return NSFetchRequest<VerbConditional>(entityName: "VerbConditional");
    }

    @NSManaged public var conditional1_ind: String?
    @NSManaged public var conditional1_interr: String?
    @NSManaged public var conditional1_neg: String?
    @NSManaged public var conditional2_ind: String?
    @NSManaged public var conditional2_interr: String?
    @NSManaged public var conditional2_neg: String?
    @NSManaged public var conditional3_ind: String?
    @NSManaged public var conditional3_interr: String?
    @NSManaged public var conditional3_neg: String?
    @NSManaged public var conditional4_1_ind: String?
    @NSManaged public var conditional4_1_interr: String?
    @NSManaged public var conditional4_1_neg: String?
    @NSManaged public var conditional4_ind: String?
    @NSManaged public var conditional4_interr: String?
    @NSManaged public var conditional4_neg: String?
    @NSManaged public var conditional5_ind: String?
    @NSManaged public var conditional5_interr: String?
    @NSManaged public var conditional5_neg: String?
    @NSManaged public var conditional6_1_ind: String?
    @NSManaged public var conditional6_1_interr: String?
    @NSManaged public var conditional6_1_neg: String?
    @NSManaged public var conditional6_ind: String?
    @NSManaged public var conditional6_interr: String?
    @NSManaged public var conditional6_neg: String?
    @NSManaged public var conditionalImpersonal_ind: String?
    @NSManaged public var conditionalImpersonal_interr: String?
    @NSManaged public var conditionalImpersonal_neg: String?
    @NSManaged public var infinitive: String?

}
