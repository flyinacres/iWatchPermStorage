//
//  ViewController.swift
//  iWatchPermStore
//
//  Created by Ronald Fischer on 10/12/15.
//  Copyright (c) 2015 qpiapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var defaults = NSUserDefaults(suiteName: "group.com.qpiapps.exampleAppGroup")
        
        var age2 = defaults?.objectForKey("sharedStoredAge") as? Int
        if age2 != nil {
            println("and from the phone")
            println(age2!)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

