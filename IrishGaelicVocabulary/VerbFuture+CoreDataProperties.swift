//
//  VerbFuture+CoreDataProperties.swift
//  IrishGaelicVocabulary
//
//  Created by Scott on 10/26/16.
//  Copyright © 2016 Scott. All rights reserved.
//

import Foundation
import CoreData


extension VerbFuture {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<VerbFuture> {
        return NSFetchRequest<VerbFuture>(entityName: "VerbFuture");
    }

    @NSManaged public var future1_ind: String?
    @NSManaged public var future1_interr: String?
    @NSManaged public var future1_neg: String?
    @NSManaged public var future2_ind: String?
    @NSManaged public var future_interr: String?
    @NSManaged public var future2_neg: String?
    @NSManaged public var future3_ind: String?
    @NSManaged public var future3_interr: String?
    @NSManaged public var future3_neg: String?
    @NSManaged public var future4_1_ind: String?
    @NSManaged public var future4_1_interr: String?
    @NSManaged public var future4_1_neg: String?
    @NSManaged public var future4_ind: String?
    @NSManaged public var future4_interr: String?
    @NSManaged public var future4_neg: String?
    @NSManaged public var future5_ind: String?
    @NSManaged public var future5_interr: String?
    @NSManaged public var future5_neg: String?
    @NSManaged public var future6_ind: String?
    @NSManaged public var future6_interr: String?
    @NSManaged public var future6_neg: String?
    @NSManaged public var futureImpersonal_ind: String?
    @NSManaged public var futureImpersonal_interr: String?
    @NSManaged public var futureImpersonal_neg: String?
    @NSManaged public var infinitive: String?

}
