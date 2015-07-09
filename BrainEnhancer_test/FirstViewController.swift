//
//  FirstViewController.swift
//  BrainEnhancer_test
//
//  Created by Brett Romero on 5/31/15.
//  Copyright (c) 2015 Brett Romero. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let sharedDefaults = NSUserDefaults(suiteName: "group.brainenhancer_test")
        sharedDefaults?.setObject("Braining Training In 5", forKey: "payload")
        sharedDefaults?.synchronize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}

