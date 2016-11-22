//
//  ViewController.swift
//  SegmentAnonymousIdTest
//
//  Created by Brian Michel on 11/22/16.
//  Copyright © 2016 Brian Michel. All rights reserved.
//

import UIKit
import Analytics

class ViewController: UIViewController {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let configuration = SEGAnalyticsConfiguration(writeKey: "b0fRZvixjPR4jNB1FXXU6dZaLFF4LvEA")
        SEGAnalytics.setup(with: configuration)
    }

    @IBAction func tappedIdentify(_ sender: Any) {
        SEGAnalytics.shared().identify("Brian")
    }
    
    @IBAction func tappedIdentifyWithTraits(_ sender: Any) {
        SEGAnalytics.shared().identify(nil, traits: [
                "name": "Brian"
            ])
    }
    
    @IBAction func tappedTrackEvent(_ sender: Any) {
        SEGAnalytics.shared().track("Tapped Track")
    }
}

