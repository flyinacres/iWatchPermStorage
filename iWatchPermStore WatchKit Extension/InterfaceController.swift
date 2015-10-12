//
//  InterfaceController.swift
//  iWatchPermStore WatchKit Extension
//
//  Created by Ronald Fischer on 10/12/15.
//  Copyright (c) 2015 qpiapps. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        var age = 34
        var defaults = NSUserDefaults(suiteName: "group.com.qpiapps.exampleAppGroup")

        defaults?.setObject(age, forKey: "sharedStoredAge")
        
        defaults?.synchronize()
        
        var age2 = defaults?.objectForKey("sharedStoredAge") as? Int
        if age2 != nil {
                println(age2!)
        }

    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
