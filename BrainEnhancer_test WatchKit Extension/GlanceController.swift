//
//  GlanceController.swift
//  BrainEnhancer_test WatchKit Extension
//
//  Created by Brett Romero on 5/31/15.
//  Copyright (c) 2015 Brett Romero. All rights reserved.
//

import WatchKit
import Foundation


class GlanceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        
        super.willActivate()
        
        let timer = NSTimer.scheduledTimerWithTimeInterval(5, target:self, selector: Selector("updatePayLoad"), userInfo: nil, repeats: true)
        
    }
    
    func updatePayLoad(){
        let sharedDefaults = NSUserDefaults(suiteName: "group.brainenhancer_test")
        let payload = sharedDefaults?.objectForKey("payload") as! String
        updateLabel.setText(payload)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    @IBOutlet var updateLabel: WKInterfaceLabel!
    

}
