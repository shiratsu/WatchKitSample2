//
//  DetailController.swift
//  WatchKitSample2
//
//  Created by HIRATSUKA SHUNSUKE on 2015/02/22.
//  Copyright (c) 2015年 HIRATSUKA SHUNSUKE. All rights reserved.
//

import UIKit
import WatchKit


class DetailController: WKInterfaceController {
    
    @IBOutlet weak var detailLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Initialize variables here.
        
        var detailStr = context as! String
        
        self.detailLabel.setText(detailStr)
    }
}
