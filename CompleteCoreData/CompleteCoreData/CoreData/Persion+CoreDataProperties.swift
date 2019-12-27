//
//  Persion+CoreDataProperties.swift
//  CompleteCoreData
//
//  Created by Rajesh Shah on 27/12/19.
//  Copyright © 2019 Apple. All rights reserved.
//
//

import Foundation
import CoreData


extension Persion {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Persion> {
        return NSFetchRequest<Persion>(entityName: "Persion")
    }

    @NSManaged public var name: String?
    @NSManaged public var device: NSSet?

}

// MARK: Generated accessors for device
extension Persion {

    @objc(addDeviceObject:)
    @NSManaged public func addToDevice(_ value: Device)

    @objc(removeDeviceObject:)
    @NSManaged public func removeFromDevice(_ value: Device)

    @objc(addDevice:)
    @NSManaged public func addToDevice(_ values: NSSet)

    @objc(removeDevice:)
    @NSManaged public func removeFromDevice(_ values: NSSet)

}
