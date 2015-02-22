//
//  InterfaceController.swift
//  WatchKitSample2 WatchKit Extension
//
//  Created by HIRATSUKA SHUNSUKE on 2015/02/22.
//  Copyright (c) 2015年 HIRATSUKA SHUNSUKE. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var table: WKInterfaceTable!
    
    var rows = ["太郎😍", "花子🐽", "サンタクロース🎅"]
    
    override init() {
        // Initialize variables here.
        super.init()
        
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        print("testetesttst")
        self.pushControllerWithName("DetailController", context: self.rows[rowIndex])
    }

    
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        self.table.setNumberOfRows(self.rows.count, withRowType:"default")
        
        for index in 0..<self.rows.count {
            //print(self.rows[index])
            //print(self.table.rowControllerAtIndex(index))
            var theRow:MainTableRow = self.table.rowControllerAtIndex(index) as! MainTableRow
            //print(self.rows[index])
            //print(theRow)
            theRow.tableRowLabel.setText(self.rows[index])
            //print("testtest")
        }

        // Configure interface objects here.
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
