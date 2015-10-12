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
        //NSUserDefaults.standardUserDefaults().setObject(age, forKey: "storedAge")
        
        var age2 = NSUserDefaults.standardUserDefaults().objectForKey("storedAge") as? Int
        if age2 != nil {
                println(age2!)
        }
        var array = [5, 4, 3, 2]
       // NSUserDefaults.standardUserDefaults().setObject(array, forKey: "storedArray")
        var receivedArray: AnyObject? = NSUserDefaults.standardUserDefaults().objectForKey("storedArray")
        
        if var newArray = receivedArray as? NSArray {
            println(receivedArray!)
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
