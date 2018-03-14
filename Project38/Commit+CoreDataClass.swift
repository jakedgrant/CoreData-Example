//
//  Commit+CoreDataClass.swift
//  Project38
//
//  Created by Jake Grant on 3/10/18.
//  Copyright © 2018 Jake Grant. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Commit)
public class Commit: NSManagedObject {
    override public init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?) {
        super.init(entity: entity, insertInto: context)
        print("Init called!")
    }
}
