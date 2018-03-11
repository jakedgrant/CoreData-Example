//
//  GitAuthor+CoreDataProperties.swift
//  Project38
//
//  Created by Jake Grant on 3/10/18.
//  Copyright © 2018 Jake Grant. All rights reserved.
//
//

import Foundation
import CoreData


extension GitAuthor {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<GitAuthor> {
        return NSFetchRequest<GitAuthor>(entityName: "GitAuthor")
    }

    @NSManaged public var email: String?
    @NSManaged public var name: String?
    @NSManaged public var commits: NSSet?

}

// MARK: Generated accessors for commits
extension GitAuthor {

    @objc(addCommitsObject:)
    @NSManaged public func addToCommits(_ value: Commit)

    @objc(removeCommitsObject:)
    @NSManaged public func removeFromCommits(_ value: Commit)

    @objc(addCommits:)
    @NSManaged public func addToCommits(_ values: NSSet)

    @objc(removeCommits:)
    @NSManaged public func removeFromCommits(_ values: NSSet)

}
