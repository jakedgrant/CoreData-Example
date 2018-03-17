//
//  GitAuthor+CoreDataProperties.swift
//  Project38
//
//  Created by Jake Grant on 3/13/18.
//  Copyright © 2018 Jake Grant. All rights reserved.
//
//

import Foundation
import CoreData


extension GitAuthor {

    @nonobjc public class func createFetchRequest() -> NSFetchRequest<GitAuthor> {
        return NSFetchRequest<GitAuthor>(entityName: "GitAuthor")
    }

    @NSManaged public var email: String
    @NSManaged public var name: String
    @NSManaged public var commits: NSOrderedSet

}

// MARK: Generated accessors for commits
extension GitAuthor {

    @objc(insertObject:inCommitsAtIndex:)
    @NSManaged public func insertIntoCommits(_ value: Commit, at idx: Int)

    @objc(removeObjectFromCommitsAtIndex:)
    @NSManaged public func removeFromCommits(at idx: Int)

    @objc(insertCommits:atIndexes:)
    @NSManaged public func insertIntoCommits(_ values: [Commit], at indexes: NSIndexSet)

    @objc(removeCommitsAtIndexes:)
    @NSManaged public func removeFromCommits(at indexes: NSIndexSet)

    @objc(replaceObjectInCommitsAtIndex:withObject:)
    @NSManaged public func replaceCommits(at idx: Int, with value: Commit)

    @objc(replaceCommitsAtIndexes:withCommits:)
    @NSManaged public func replaceCommits(at indexes: NSIndexSet, with values: [Commit])

    @objc(addCommitsObject:)
    @NSManaged public func addToCommits(_ value: Commit)

    @objc(removeCommitsObject:)
    @NSManaged public func removeFromCommits(_ value: Commit)

    @objc(addCommits:)
    @NSManaged public func addToCommits(_ values: NSOrderedSet)

    @objc(removeCommits:)
    @NSManaged public func removeFromCommits(_ values: NSOrderedSet)

}
