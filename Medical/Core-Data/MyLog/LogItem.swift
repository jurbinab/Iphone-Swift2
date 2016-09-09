//
//  LogItem.swift
//  MyLog
//
//  Created by Jose Urbina on 9/07/2016.
//  Copyright (c) 2016 JQ Software LLC. All rights reserved.
//

import Foundation
import CoreData

class LogItem: NSManagedObject {
    
    @NSManaged var itemText: String
    @NSManaged var title: String
    
    class func createInManagedObjectContext(moc: NSManagedObjectContext, title: String, text: String) -> LogItem {
        let newItem = NSEntityDescription.insertNewObjectForEntityForName("LogItem", inManagedObjectContext: moc) as! LogItem
        newItem.title = title
        newItem.itemText = text
        
        return newItem
    }
    
}