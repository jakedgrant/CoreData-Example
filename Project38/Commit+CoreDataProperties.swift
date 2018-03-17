//
//  Commit+CoreDataProperties.swift
//  Project38
//
//  Created by Jake Grant on 3/13/18.
//  Copyright © 2018 Jake Grant. All rights reserved.
//
//

import Foundation
import CoreData


extension Commit {

    @nonobjc public class func createFetchRequest() -> NSFetchRequest<Commit> {
        return NSFetchRequest<Commit>(entityName: "Commit")
    }

    @NSManaged public var date: Date
    @NSManaged public var message: String
    @NSManaged public var sha: String
    @NSManaged public var url: String
    @NSManaged public var author: GitAuthor

}
