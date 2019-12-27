//
//  Device+CoreDataProperties.swift
//  CompleteCoreData
//
//  Created by Rajesh Shah on 27/12/19.
//  Copyright © 2019 Apple. All rights reserved.
//
//

import Foundation
import CoreData


extension Device {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Device> {
        return NSFetchRequest<Device>(entityName: "Device")
    }

    @NSManaged public var device_type: String?
    @NSManaged public var name: String?
    @NSManaged public var owner: Persion?

}
