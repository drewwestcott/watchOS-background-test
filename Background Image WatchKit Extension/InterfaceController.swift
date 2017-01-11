//
//  InterfaceController.swift
//  Background Image WatchKit Extension
//
//  Created by Drew Westcott on 11/01/2017.
//  Copyright © 2017 Drew Westcott. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

	@IBOutlet var dialDisplay: WKInterfaceGroup!
	@IBOutlet var percentLabel: WKInterfaceLabel!
	@IBOutlet var numberLabel: WKInterfaceLabel!
	
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
		dialDisplay.setBackgroundImageNamed("dial")
		
		dialDisplay.startAnimatingWithImages(in: NSRange(location: 0, length: 14), duration: 0.3, repeatCount: 1)
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
