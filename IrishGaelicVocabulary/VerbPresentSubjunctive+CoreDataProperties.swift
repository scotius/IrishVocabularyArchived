//
//  VerbPresentSubjunctive+CoreDataProperties.swift
//  IrishGaelicVocabulary
//
//  Created by Scott on 10/26/16.
//  Copyright © 2016 Scott. All rights reserved.
//

import Foundation
import CoreData


extension VerbPresentSubjunctive {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<VerbPresentSubjunctive> {
        return NSFetchRequest<VerbPresentSubjunctive>(entityName: "VerbPresentSubjunctive");
    }

    @NSManaged public var presentSubjunctive1_ind: String?
    @NSManaged public var presentSubjunctive1_neg: String?
    @NSManaged public var presentSubjunctive2_ind: String?
    @NSManaged public var presentSubjunctive2_neg: String?
    @NSManaged public var presentSubjunctive3_ind: String?
    @NSManaged public var presentSubjunctive3_neg: String?
    @NSManaged public var presentSubjunctive4_1_ind: String?
    @NSManaged public var presentSubjunctive4_1_neg: String?
    @NSManaged public var presentSubjunctive4_ind: String?
    @NSManaged public var presentSubjunctive4_neg: String?
    @NSManaged public var presentSubjunctive5_ind: String?
    @NSManaged public var presentSubjunctive5_neg: String?
    @NSManaged public var presentSubjunctive6_ind: String?
    @NSManaged public var presentSubjunctive6_neg: String?
    @NSManaged public var presentSubjunctiveImpersonal_ind: String?
    @NSManaged public var presentSubjunctiveImpersonal_neg: String?
    @NSManaged public var infinitive: String?

}
